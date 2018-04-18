"
I'm a test case for extensions of basic Willow objects
"
Class {
	#name : #WillowExtensionsTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-Frontend'
}

{ #category : #private }
WillowExtensionsTest >> assertRenderingOfDivApplying: aCommand equals: anExpectedHTML [

	self assert: (self render: (GenericContainerWebView wrapping: [  ] applying: aCommand)) equals: anExpectedHTML
]

{ #category : #tests }
WillowExtensionsTest >> testBootstrapClassificationCommandBuilder [

	BootstrapCssStyles class selectors
		select: [ :selector | selector isUnary ]
		thenDo: [ :selector | 
			self
				assertRenderingOfDivApplying: [ :div | div addClass bootstrap perform: selector ]
				equals:
					(String
						streamContents: [ :stream | 
							stream
								nextPutAll: '<div class="';
								nextPutAll: (BootstrapCssStyles perform: selector);
								nextPutAll: '"></div>' ]) ].

	BootstrapCssStyles class selectors
		select: [ :selector | selector isKeyword ]
		thenDo: [ :selector | 
			self
				assertRenderingOfDivApplying: [ :div | div addClass bootstrap perform: selector with: 6 ]
				equals:
					(String
						streamContents: [ :stream | 
							stream
								nextPutAll: '<div class="';
								nextPutAll: (BootstrapCssStyles perform: selector with: 6);
								nextPutAll: '"></div>' ]) ]
]

{ #category : #tests }
WillowExtensionsTest >> testIsNullCommand [

	self
		assert: CompositeComponentCommand empty isNullCommand;
		assert: (CompositeComponentCommand empty + CompositeComponentCommand empty) isNullCommand;
		deny: ((ComponentAttributeCommand named: 'rows' with: 2) + (ComponentAttributeCommand named: 'columns' with: 3)) isNullCommand;
		deny: DeselectAllOptionsCommand new isNullCommand
]
