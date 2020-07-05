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
