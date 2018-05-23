"
Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.
"
Class {
	#name : #BootstrapAlertCommand,
	#superclass : #WebComponentCommand,
	#instVars : [
		'classificationCommand'
	],
	#category : #'Willow-Bootstrap-Frontend'
}

{ #category : #'private - Instance Creation' }
BootstrapAlertCommand class >> applyingClassificationCommandWith: aCssClass [

	^ self new initializeApplying: (ComponentClassificationCommand toStyleWith: aCssClass)
]

{ #category : #'Instance Creation' }
BootstrapAlertCommand class >> danger [

	^ self applyingClassificationCommandWith: Willow classes >> #bootstrap >> #alertDanger
]

{ #category : #'Instance Creation' }
BootstrapAlertCommand class >> informational [

	^ self applyingClassificationCommandWith: Willow classes >> #bootstrap >> #alertInfo
]

{ #category : #'Instance Creation' }
BootstrapAlertCommand class >> success [

	^ self applyingClassificationCommandWith: Willow classes >> #bootstrap >> #alertSuccess
]

{ #category : #'Instance Creation' }
BootstrapAlertCommand class >> warning [

	^ self applyingClassificationCommandWith: Willow classes >> #bootstrap >> #alertWarning
]

{ #category : #processing }
BootstrapAlertCommand >> applyTo: aComponent on: aCanvas [

	classificationCommand applyTo: aComponent on: aCanvas
]

{ #category : #initialization }
BootstrapAlertCommand >> initializeApplying: aContextualClassificationCommand [

	classificationCommand := [ :container :constants | container addClass bootstrap alert + aContextualClassificationCommand + (container setAttribute: constants  >> #bootstrap  >> #role to: constants  >> #bootstrap  >> #alert) ]
		asWebComponentCommand
]
