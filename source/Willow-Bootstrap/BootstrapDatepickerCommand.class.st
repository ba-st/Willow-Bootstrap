"
I'm a component command enabling bootstrap-datepicker
"
Class {
	#name : #BootstrapDatepickerCommand,
	#superclass : #WebComponentCommand,
	#instVars : [
		'additionalCommand'
	],
	#category : #'Willow-Bootstrap-Frontend'
}

{ #category : #'private - Instance Creation' }
BootstrapDatepickerCommand class >> applying: anAdditionalCommand [

	^ super new initializeApplying: anAdditionalCommand asWebComponentCommand 
]

{ #category : #'Instance Creation' }
BootstrapDatepickerCommand class >> configuredBy: aConfigurationBlock [

	^ self
		applying: [ :field | 
			field addScript
				js: [ :canvas | 
					| datepicker |

					datepicker := canvas jQuery new bootstrapDatepicker.
					aConfigurationBlock value: datepicker ] ]
]

{ #category : #'Instance Creation' }
BootstrapDatepickerCommand class >> new [

	^ self applying: [  ]
]

{ #category : #processing }
BootstrapDatepickerCommand >> applyTo: aComponent on: aCanvas [

	[ :component :constants | (component setData: 'provide' to: constants >> #bootstrap >> #datepicker) + additionalCommand ]
		asWebComponentCommand applyTo: aComponent on: aCanvas
]

{ #category : #initialize }
BootstrapDatepickerCommand >> initializeApplying: anAdditionalCommand [

	additionalCommand := anAdditionalCommand 
]
