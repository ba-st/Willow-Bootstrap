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

	"We need to call the render method after the command application to get the right rendering"

	[ :component | 
	component addClass bootstrap3 selectpicker
		+ ( component addScript js: [ :canvas | canvas jQuery this bootstrapSelect render ] )
	] asWebComponentCommand applyTo: aComponent on: aCanvas
]
