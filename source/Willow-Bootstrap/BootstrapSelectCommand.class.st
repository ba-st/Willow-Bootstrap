"
I'm a component command enabling bootstrap-select
"
Class {
	#name : #BootstrapSelectCommand,
	#superclass : #WebComponentCommand,
	#category : #'Willow-Bootstrap-Frontend'
}

{ #category : #processing }
BootstrapSelectCommand >> applyTo: aComponent on: aCanvas [

	(ComponentClassificationCommand toStyleWith: Willow classes >> #bootstrap >> #selectpicker) applyTo: aComponent on: aCanvas.
	"We need to call the render method after the command application to get the right rendering"
	(ComponentScriptCommand toExecute: [ :canvas | canvas jQuery this bootstrapSelect render ]) applyTo: aComponent on: aCanvas
]
