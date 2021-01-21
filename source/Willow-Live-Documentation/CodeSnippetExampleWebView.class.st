Class {
	#name : #CodeSnippetExampleWebView,
	#superclass : #WAPainter,
	#instVars : [
		'examples',
		'title',
		'description',
		'codeProvider',
		'showHtml',
		'identifiedHtmlCodeView'
	],
	#category : #'Willow-Live-Documentation-WebViews'
}

{ #category : #'instance creation' }
CodeSnippetExampleWebView class >> titled: aTitle describedBy: aDescription showing: aBlockClosure [ 

	^ self new initializeTitled: aTitle describedBy: aDescription showing: aBlockClosure 	
]

{ #category : #'private-accessing' }
CodeSnippetExampleWebView >> canvasBuilder [

	^ WAHtmlCanvas builder
		fullDocument: false;
		codec: GRPharoUtf8Codec new
]

{ #category : #initialization }
CodeSnippetExampleWebView >> initializeTitled: aTitle describedBy: aDescription showing: aBlockClosure [

	title := aTitle.
	description := aDescription.
	codeProvider := aBlockClosure.
	showHtml := false.
	identifiedHtmlCodeView := IdentifiedWebView
		forDivNamed: 'html-code'
		containing: [ :canvas | 
			showHtml
				ifTrue: [ self renderHtmlCodeOn: canvas ]
				ifFalse: [ self renderShowHtmlCodeButtonOn: canvas ]
			]
]

{ #category : #rendering }
CodeSnippetExampleWebView >> renderCodeOn: aCanvas [

	aCanvas div
		apply: [ :div | div addClass bootstrapCommon formGroup ];
		with: codeProvider value.
	aCanvas preformatted
		with: [ aCanvas code
				class: 'language-smalltalk';
				with: codeProvider asString
			].
	aCanvas render: identifiedHtmlCodeView
]

{ #category : #rendering }
CodeSnippetExampleWebView >> renderContentOn: aCanvas [

	aCanvas
		render:
			( self componentSupplier
				fieldSetContaining: [ :canvas | 
					canvas paragraph with: description.
					self renderCodeOn: canvas
					]
				applying: [  ]
				withLegend: title
				applying: [  ] )
]

{ #category : #rendering }
CodeSnippetExampleWebView >> renderHtmlCodeOn: aCanvas [

	aCanvas preformatted
		with: [ aCanvas code
				class: 'language-html';
				apply: [ :div | div setStyleTo: [ :style :constants | style whiteSpace: constants >> #preWrap ] ];
				with: ( self canvasBuilder render: codeProvider value )
			].

	aCanvas document addLoadScript: ( JSStream on: 'Prism.highlightAll()' )
]

{ #category : #rendering }
CodeSnippetExampleWebView >> renderShowHtmlCodeButtonOn: aCanvas [

	| btn |

	btn := self componentSupplier
		asynchronicLinkLabeled: 'Show HTML'
		applying: [ :link | 
			link addClass bootstrapCommon button
				+
					( link
						setStyleTo: [ :style :constants | 
							style
								textDecoration: constants >> #underline;
								textDecorationStyle: constants >> #dotted
							] )
			].
	btn onTrigger
		evaluate: [ showHtml := true ];
		render: identifiedHtmlCodeView.
	aCanvas render: btn
]
