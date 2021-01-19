"
I'm a test case for extensions of basic Willow objects
"
Class {
	#name : #WillowExtensionsTest,
	#superclass : #BWRenderingTest,
	#pools : [
		'Willow'
	],
	#category : #'Willow-Bootstrap-Tests-Frontend'
}

{ #category : #tests }
WillowExtensionsTest >> testIsNullCommand [

	self
		assert: CompositeComponentCommand empty isNullCommand;
		assert: (CompositeComponentCommand empty + CompositeComponentCommand empty) isNullCommand;
		deny: ((ComponentAttributeCommand named: 'rows' with: 2) + (ComponentAttributeCommand named: 'columns' with: 3)) isNullCommand;
		deny: DeselectAllOptionsCommand new isNullCommand
]
