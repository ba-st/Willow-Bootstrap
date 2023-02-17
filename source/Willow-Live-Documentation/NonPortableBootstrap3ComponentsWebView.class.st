Class {
	#name : #NonPortableBootstrap3ComponentsWebView,
	#superclass : #ComponentsCatalogWebView,
	#instVars : [
		'examples'
	],
	#category : #'Willow-Live-Documentation-WebViews'
}

{ #category : #testing }
NonPortableBootstrap3ComponentsWebView class >> canHandle: aComponentSupplier [

	^ aComponentSupplier isA: Bootstrap3ComponentSupplier
]

{ #category : #initialization }
NonPortableBootstrap3ComponentsWebView >> initializeExamples [

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
				titled: 'Radio Button Group'
				describedBy: 'https://getbootstrap.com/docs/3.4/javascript/#buttons-checkbox-radio'
				showing: [ | radio |

					radio := self componentSupplier
						radioButtonRenderingWith: [ :element | element ]
						applyingToContainer: [ :div | div addClass bootstrap3 buttonGroupSmall ]
						applyingToLabel: [ :label | label addClass bootstrap3 buttonPrimary ]
						applyingToInput: [  ].
					radio allowAnyOf: #(Left Middle Right).
					radio choose: #Middle.
					radio
					] );
		yourself
]

{ #category : #rendering }
NonPortableBootstrap3ComponentsWebView >> renderContentOn: aCanvas [

	aCanvas div
		apply: [ :div | div addClass bootstrapCommon container ];
		with: [ aCanvas div
				apply: [ :div | div addClass bootstrapCommon row ];
				with: [ self renderExamplesOn: aCanvas ]
			]
]

{ #category : #rendering }
NonPortableBootstrap3ComponentsWebView >> renderExamplesOn: aCanvas [

	examples do: [ :exampleView | aCanvas div with: exampleView ]
]
