"
I'm a bootstrap command configuring a modal with an static backdrop and attaching a script to self clean the dialogs section on close. Useful for dynamically created modals.
"
Class {
	#name : #BootstrapSelfCleaningModalCommand,
	#superclass : #WebComponentCommand,
	#instVars : [
		'scriptCommand'
	],
	#category : 'Willow-Bootstrap-Frontend'
}

{ #category : #processing }
BootstrapSelfCleaningModalCommand >> applyTo: aDialog on: aCanvas [

	^ scriptCommand applyTo: aDialog on: aCanvas
]

{ #category : #initialization }
BootstrapSelfCleaningModalCommand >> initialize [

	super initialize.
	scriptCommand := ComponentScriptCommand
		toExecute: [ :canvas | 
			canvas jQuery this bootstrapModal
				backdrop: BootstrapConstants static;
				onHidden:
					(canvas javascript
						call: (canvas jQuery willow bootstrap access: BootstrapConstants cleanModalFunctionName) asJavascript 
						with: canvas jQuery this) asFunction ]
]
