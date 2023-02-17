Class {
	#name : #NonPortableBootstrap4ComponentsWebView,
	#superclass : #ComponentsCatalogWebView,
	#instVars : [
		'examples'
	],
	#category : #'Willow-Live-Documentation-WebViews'
}

{ #category : #testing }
NonPortableBootstrap4ComponentsWebView class >> canHandle: aComponentSupplier [

	^ aComponentSupplier isA: Bootstrap4ComponentSupplier
]

{ #category : #initialization }
NonPortableBootstrap4ComponentsWebView >> initializeExamples [

	examples := OrderedCollection new
		add:
			( CodeSnippetExampleWebView
				titled: 'Grid'
				describedBy: ''
				showing: [ self componentSupplier gridBuilder
						columnsWidths: #(2 5 4 1);
						addContent: 'col-md-2';
						addContent: 'col-md-5';
						addContent: 'col-md-4';
						addContent: 'col-md-1';
						build
					] );
		add:
			( CodeSnippetExampleWebView
				titled: 'Cards'
				describedBy: ''
				showing: [ self componentSupplier cardBuilder
						bottomImageCapLocatedAt:
							'https://raw.githubusercontent.com/ba-st/Willow-Bootstrap/release-candidate/assets/logos/128x128.png'
							applying: [  ];
						wrapping: 'Willow Bootstrap 4';
						buildApplying:
								[ :card | card addClass bootstrapCommon textCenter + ( card setStyleTo: [ :style | style width: 128 px ] ) ]
					] );
		add:
			( CodeSnippetExampleWebView
				titled: 'Radio Button Group'
				describedBy: 'https://getbootstrap.com/docs/4.1/components/buttons/#checkbox-and-radio-buttons'
				showing: [ | radio |

					radio := self componentSupplier
						radioButtonRenderingWith: [ :element | element ]
						applyingToContainer: [ :div | div addClass bootstrap4 buttonGroupSmall ]
						applyingToLabel: [  ]
						applyingToInput: [  ].
					radio allowAnyOf: #(Left Middle Right).
					radio choose: #Middle.
					radio
					] );
		yourself
]

{ #category : #rendering }
NonPortableBootstrap4ComponentsWebView >> renderContentOn: aCanvas [

	aCanvas div
		apply: [ :div | div addClass bootstrapCommon container ];
		with: [ aCanvas div
				apply: [ :div | div addClass bootstrapCommon row ];
				with: [ self renderExamplesOn: aCanvas ]
			]
]

{ #category : #rendering }
NonPortableBootstrap4ComponentsWebView >> renderExamplesOn: aCanvas [

	examples do: [ :exampleView | aCanvas div with: exampleView ]
]
