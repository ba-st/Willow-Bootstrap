"
I'm a test case for extensions of basic Willow objects
"
Class {
	#name : #WillowExtensionsTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-Frontend'
}

{ #category : #private }
WillowExtensionsTest >> assertColumnRenderingOf: columnSize at: index [

	#('' 'Offset' 'Pull' 'Push')
		do: [ :suffix | 
			self
				assertRenderingOfDivApplying: [ :div | div addClass bootstrap perform: (#'column<1s><2s>:' expandMacrosWith: columnSize with: suffix) with: index ]
				equals:
					(String
						streamContents: [ :stream | 
							stream
								nextPutAll: '<div class="';
								nextPutAll: Willow classes >> #bootstrap >> (#'column<1s><2s><3p>' expandMacrosWith: columnSize with: suffix with: index);
								nextPutAll: '"></div>' ]) ]
]

{ #category : #private }
WillowExtensionsTest >> assertRenderingOfDivApplying: aCommand equals: anExpectedHTML [

	self assert: (self render: (GenericContainerWebView wrapping: [  ] applying: aCommand)) equals: anExpectedHTML
]

{ #category : #tests }
WillowExtensionsTest >> testBootstrapClassificationCommandBuilder [

	(Willow classes >> #bootstrap) names
		select: [ :selector | (selector beginsWith: #column) not ]
		thenDo: [ :selector | 
			self
				assertRenderingOfDivApplying: [ :div | div addClass bootstrap perform: selector ]
				equals:
					(String
						streamContents: [ :stream | 
							stream
								nextPutAll: '<div class="';
								nextPutAll: Willow classes >> #bootstrap >> selector;
								nextPutAll: '"></div>' ]) ].

	1 to: 12 do: [ :index | #('ExtraSmall' 'Small' 'Medium' 'Large') do: [ :columnSize | self assertColumnRenderingOf: columnSize at: index ] ]
]

{ #category : #tests }
WillowExtensionsTest >> testIsNullCommand [

	self
		assert: CompositeComponentCommand empty isNullCommand;
		assert: (CompositeComponentCommand empty + CompositeComponentCommand empty) isNullCommand;
		deny: ((ComponentAttributeCommand named: 'rows' with: 2) + (ComponentAttributeCommand named: 'columns' with: 3)) isNullCommand;
		deny: DeselectAllOptionsCommand new isNullCommand
]
