Class {
	#name : #PortableComponentsCatalogWebView,
	#superclass : #ComponentsCatalogWebView,
	#instVars : [
		'examples'
	],
	#category : #'Willow-Live-Documentation-WebViews'
}

{ #category : #testing }
PortableComponentsCatalogWebView class >> canHandle: aComponentSupplier [

	^ false
]

{ #category : #'private-accessing' }
PortableComponentsCatalogWebView >> buttonsExamples [

	^ OrderedCollection new
		add:
			( CodeSnippetExampleWebView
				titled: 'Button triggering event on client'
				describedBy: 'A simple button executing a js script'
				showing: [ | button |

					button := self componentSupplier
						asynchronicButtonLabeled: 'Click me and see!'
						applying: [ :btn | btn addClass bootstrapCommon buttonInfo ].
					button onTrigger executeOnClient: [ JSStream on: 'alert("Hey!")' ].
					button
					] );
		add:
			( CodeSnippetExampleWebView
				titled: 'Button triggering event on server'
				describedBy: ''
				showing: [ | button |

					button := self componentSupplier
						asynchronicButtonLabeled: 'Click me and wait!'
						applying: [ :btn | btn addClass bootstrapCommon buttonPrimary ].
					button onTrigger
						evaluate: [ ( Delay forSeconds: 2 ) wait ];
						temporarilyDisableAndTransformInto: 'Processing'.
					button
					] );
		add:
			( CodeSnippetExampleWebView
				titled: 'Synchronic button'
				describedBy: 'A submit button'
				showing: [ self componentSupplier
						synchronicButtonLabeled: [ :canvas | 
							canvas
								render: ( Bootstrap3IconWebView representing: Glyphicons floppyDisk );
								render: 'Submit'
							]
						applying: [ :link | link addClass bootstrapCommon buttonWarning ]
						evaluating: [ ( Delay forSeconds: 2 ) wait ]
					] );
		add:
			( CodeSnippetExampleWebView
				titled: 'Link button'
				describedBy: ''
				showing: [ self componentSupplier
						asynchronicLinkLabeled: [ :canvas | 
							canvas
								render: ( Bootstrap3IconWebView representing: Glyphicons link );
								render: 'Google'
							]
						applying: [ :link | 
							( link setAttribute: 'href' to: 'http://www.google.com' )
								+ ( link setAttribute: 'target' to: '_blank' )
							]
					] );
		yourself
]

{ #category : #'private-accessing' }
PortableComponentsCatalogWebView >> displayingInformationExamples [

	^ OrderedCollection new
		add:
			( CodeSnippetExampleWebView
				titled: 'Unordered List'
				describedBy: ''
				showing: [ self componentSupplier
						unorderedListApplying: [ :list |  ]
						listing: #(1 2 3 4)
						applyingToEach: [ :listItem |  ]
					] );
		add:
			( CodeSnippetExampleWebView
				titled: 'Tables'
				describedBy: ''
				showing: [ | table |

					table := self componentSupplier tableBuilder
						addColumn: [ :column | 
							column
								titled: 'x';
								rendering: [ :item | item ];
								applyingToEachCell: [ :row | row addClass bootstrap3 textDanger ];
								summarizedWith: [ :numbers | numbers sum ]
							];
						addColumn: [ :column | 
							column
								titled: 'x^2';
								rendering: [ :item | item raisedTo: 2 ]
							];
						addColumn: [ :column | 
							column
								titled: 'x!';
								rendering: [ :item | item factorial ]
							];
						buildApplying: [ :div | div addClass bootstrap3 tableCondensed + div addClass bootstrap3 tableStriped ].
					table changeContentsTo: #(1 4 5 6 10 12 50)
					] );
		add:
			( CodeSnippetExampleWebView
				titled: 'Fieldsets'
				describedBy: ''
				showing: [ self componentSupplier
						fieldSetContaining: 'Inner view'
						applying: [ :fieldset | fieldset setStyleTo: [ :style :constants | style fontStyle: constants >> #italic ] ]
						withLegend: 'Custom legend'
						applying: [ :legend | legend addClass bootstrap3 small ]
					] );
		yourself
]

{ #category : #rendering }
PortableComponentsCatalogWebView >> initialize [

	examples := OrderedCollection new.
	examples
		addAll: self buttonsExamples;
		addAll: self inputExamples;
		addAll: self selectionExamples; 
		addAll: self displayingInformationExamples
]

{ #category : #rendering }
PortableComponentsCatalogWebView >> initializeExamples [

	examples := OrderedCollection new.
	examples
		addAll: self buttonsExamples;
		addAll: self inputExamples;
		addAll: self selectionExamples; 
		addAll: self displayingInformationExamples
]

{ #category : #'private-accessing' }
PortableComponentsCatalogWebView >> inputExamples [

	^ OrderedCollection new
		add:
			( CodeSnippetExampleWebView
				titled: 'Date input'
				describedBy: ''
				showing: [ | view |

					view := self componentSupplier
						dateFieldApplying: [ :div | div setPlaceholderTo: 'Put a date!' ].
					view changeDateTo: Date today
					] );
		add:
			( CodeSnippetExampleWebView
				titled: 'Decimal number input'
				describedBy: 'An input that on the server side will be parsed as a decimal number'
				showing: [ self componentSupplier decimalNumberFieldApplying: [  ] ] );
		add:
			( CodeSnippetExampleWebView
				titled: 'Natural number input'
				describedBy: 'An input that on the server side will be parsed as a natural number'
				showing: [ self componentSupplier naturalNumberFieldApplying: [  ] ] );
		add:
			( CodeSnippetExampleWebView
				titled: 'Text input'
				describedBy:
					'You have several commands to apply to a text input, one of them to convert them to a password input'
				showing: [ | view |

					view := self componentSupplier
						singleLineTextFieldApplying: [ :input | ( input setMaximumLengthTo: 8 ) + input bePasswordInput ].
					view changeContentsTo: 'secret'
					] );
		add:
			( CodeSnippetExampleWebView
				titled: 'Text area'
				describedBy: ''
				showing: [ self componentSupplier
						multiLineTextFieldApplying: [ :input | ( input setPlaceholderTo: 'Just fill me with your Lorem Ipsum' ) + input beRequired ]
					] );
		yourself
]

{ #category : #rendering }
PortableComponentsCatalogWebView >> renderContentOn: aCanvas [

	aCanvas div
		apply: [ :div | div addClass bootstrapCommon container ];
		with: [ aCanvas div
				apply: [ :div | div addClass bootstrapCommon row ];
				with: [ self renderExamplesOn: aCanvas ]
			]
]

{ #category : #rendering }
PortableComponentsCatalogWebView >> renderExamplesOn: aCanvas [

	examples do: [ :exampleView | aCanvas div with: exampleView ]
]

{ #category : #'private-accessing' }
PortableComponentsCatalogWebView >> selectionExamples [

	^ OrderedCollection new
		add:
			( CodeSnippetExampleWebView
				titled: 'Dropdown'
				describedBy: 'You can customize the way the items are rendered'
				showing: [ ( self componentSupplier
						dropdownListApplying: [ :list | 
							( list setAttribute: 'title' to: 'Choose a number :)' )
								+ ( list labelItemsWith: [ :item | item * 2 ] )
							] ) allowAnyOf: #(1 2 3)
					] );
		add:
			( CodeSnippetExampleWebView
				titled: 'Checkbox'
				describedBy: 'With a label'
				showing: [ self componentSupplier
						checkboxLabeled: 'Check me'
						onModel: 3
						offModel: 'Not'
						applying: [  ]
					] );
		add:
			( CodeSnippetExampleWebView
				titled: 'Checkbox'
				describedBy: 'Without a label'
				showing: [ self componentSupplier checkboxUnlabeledOnModel: 4 offModel: 'Hi!' applying: [  ] ] );
		add:
			( CodeSnippetExampleWebView
				titled: 'Multiple selection'
				describedBy: ''
				showing: [ | view |

					view := self componentSupplier multipleSelectionListBoxDisplayingAtOnce: 3 applying: [  ].
					view allowAnyOf: #(Rock Blues KPop)
					] );
		add:
			( CodeSnippetExampleWebView
				titled: 'Radio'
				describedBy: ''
				showing: [ | radio |

					radio := self componentSupplier
						radioRenderingWith: #asUppercase
						applyingToLabel: [  ]
						applyingToInput: [  ].
					radio allowAnyOf: #(Rock Blues KPop Hardcore Classical Punk)
					] );
		add:
			( CodeSnippetExampleWebView
				titled: 'Single Selection'
				describedBy: ''
				showing: [ | view |

					view := self componentSupplier singleSelectionListBoxDisplayingAtOnce: 4 applying: [  ].
					view allowAnyOf: #(Country Metal Blues Indie Rock KPop)
					] );
		yourself
]
