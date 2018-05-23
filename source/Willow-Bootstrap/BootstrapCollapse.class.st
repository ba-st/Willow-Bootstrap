"
Flexible plugin that utilizes a handful of classes for easy toggle behavior.
"
Class {
	#name : #BootstrapCollapse,
	#superclass : #BootstrapPlugin,
	#category : #'Willow-Bootstrap-Plugins'
}

{ #category : #Methods }
BootstrapCollapse >> hide [

	functionName := 'hide'
]

{ #category : #private }
BootstrapCollapse >> method [

	^ 'collapse'
]

{ #category : #Options }
BootstrapCollapse >> parent: aSelector [

	"If a selector is provided, then all collapsible elements under the specified parent will be closed 	when this collapsible item is shown. (similar to traditional accordion behavior - this is dependent 	on the panel class)"

	self optionAt: self constants >> #bootstrap >> #parent put: aSelector
]

{ #category : #Methods }
BootstrapCollapse >> show [

	functionName := 'show'
]

{ #category : #Methods }
BootstrapCollapse >> toggle [

	functionName := self constants >> #bootstrap >> #toggle
]

{ #category : #Options }
BootstrapCollapse >> toggle: aBoolean [

	"Toggles the collapsible element on invocation"

	self optionAt: self constants >> #bootstrap >> #toggle put: aBoolean
]
