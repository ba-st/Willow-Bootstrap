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
BootstrapAlertCommand class >> applying: aCommand [

	^ self new initializeApplying: aCommand asWebComponentCommand
]

{ #category : #'Instance Creation' }
BootstrapAlertCommand class >> danger [

	^ self applying: [ :container | container addClass bootstrap alertDanger ]
]

{ #category : #'Instance Creation' }
BootstrapAlertCommand class >> informational [

	^ self applying: [ :container | container addClass bootstrap alertInfo ]
]

{ #category : #'Instance Creation' }
BootstrapAlertCommand class >> success [

	^ self applying: [ :container | container addClass bootstrap alertSuccess ]
]

{ #category : #'Instance Creation' }
BootstrapAlertCommand class >> warning [

	^ self applying: [ :container | container addClass bootstrap alertWarning ]
]

{ #category : #processing }
BootstrapAlertCommand >> applyTo: aComponent on: aCanvas [

	classificationCommand applyTo: aComponent on: aCanvas
]

{ #category : #initialization }
BootstrapAlertCommand >> initializeApplying: aContextualClassificationCommand [

	classificationCommand := [ :container :constants | container addClass bootstrap alert + aContextualClassificationCommand + (container setARIARoleTo: #alert) ] asWebComponentCommand
]
