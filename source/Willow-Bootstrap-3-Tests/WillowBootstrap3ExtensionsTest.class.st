"
I'm a test for extensions to Willow for Bootstrap 3
"
Class {
	#name : #WillowBootstrap3ExtensionsTest,
	#superclass : #BWRenderingTest,
	#pools : [
		'Willow'
	],
	#category : #'Willow-Bootstrap-3-Tests-Frontend'
}

{ #category : #private }
WillowBootstrap3ExtensionsTest >> assertColumnRenderingOf: columnSize at: index [

	#('' 'Offset' 'Pull' 'Push')
		do: [ :suffix | 
			self
				assertRenderingOfDivApplying: [ :div | 
					div addClass bootstrap3
						perform: ( #'column<1s><2s>:' expandMacrosWith: columnSize with: suffix )
						with: index
					]
				equals:
					( String
						streamContents: [ :stream | 
							stream
								nextPutAll: '<div class="';
								nextPutAll:
									Classification >> #bootstrap3
										>> ( #'column<1s><2s><3p>' expandMacrosWith: columnSize with: suffix with: index );
								nextPutAll: '"></div>'
							] )
			]
]

{ #category : #private }
WillowBootstrap3ExtensionsTest >> assertRenderingOfDivApplying: aCommand equals: anExpectedHTML [

	self assert: (self render: [ :html | html div apply: aCommand ]) equals: anExpectedHTML
]

{ #category : #tests }
WillowBootstrap3ExtensionsTest >> testBootstrapClassification [

	self
		assert: ReflectiveCascadingStyleSheetBuilder new bootstrap3 >> #textCenter
		equals: 'text-center'
]

{ #category : #tests }
WillowBootstrap3ExtensionsTest >> testBootstrapClassificationCommandBuilder [

	( Classification >> #bootstrap3 ) names
		select: [ :selector | ( selector beginsWith: #column ) not ]
		thenDo: [ :selector | 
			self
				assertRenderingOfDivApplying: [ :div | div addClass bootstrap3 perform: selector ]
				equals:
					( String
						streamContents: [ :stream | 
							stream
								nextPutAll: '<div class="';
								nextPutAll: Classification >> #bootstrap3 >> selector;
								nextPutAll: '"></div>'
							] )
			].

	1 to: 12 do: [ :index | 
		#('ExtraSmall' 'Small' 'Medium' 'Large')
			do: [ :columnSize | self assertColumnRenderingOf: columnSize at: index ]
		]
]
