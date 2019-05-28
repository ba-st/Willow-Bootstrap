"
Bootstrap’s cards provide a flexible and extensible content container with multiple variants and options.
About

A card is a flexible and extensible content container. It includes options for headers and footers, a wide variety of content, contextual background colors, and powerful display options. If you’re familiar with Bootstrap 3, cards replace our old panels, wells, and thumbnails. Similar functionality to those components is available as modifier classes for cards.

"
Class {
	#name : #Bootstrap4CardBuilder,
	#superclass : #BootstrapPanelBuilder,
	#instVars : [
		'headingOptional',
		'footerOptional',
		'topImageOptional',
		'bottomImageOptional',
		'elements',
		'currentBody',
		'supplier'
	],
	#category : #'Willow-Bootstrap-4-WebViews'
}

{ #category : #'instance creation' }
Bootstrap4CardBuilder class >> using: aComponentSupplier [

	^ self new initializeUsing: aComponentSupplier
]

{ #category : #private }
Bootstrap4CardBuilder >> add: anElementToRender [

	elements add: anElementToRender
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> addActionLabeled: aRenderable executing: anActionBlock [

	self addActionLabeled: aRenderable executing: anActionBlock applying: [  ]
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> addActionLabeled: aRenderable executing: anActionBlock applying: aCommand [

	| anchor |

	anchor := supplier
		asynchronicLinkLabeled: aRenderable
		applying:
			[ :link :constants | ( link setAttribute: 'href' to: '#' ) + link addClass bootstrap4 cardLink + aCommand ].
	anActionBlock value: anchor.
	self addToBody: anchor
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> addSubtitle: aRenderable withLevel: aLevel [

	self addSubtitle: aRenderable withLevel: aLevel applying: [  ]
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> addSubtitle: aRenderable withLevel: aLevel applying: aCommand [

	self
		addToBody:
			( HeadingWebView
				displaying: aRenderable
				withLevel: aLevel
				applying: [ :heading | heading addClass bootstrap4 cardSubtitle + aCommand ] )
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> addText: aRenderable [

	self
		addToBody: [ :canvas | canvas paragraph with: aRenderable applying: [ :p | p addClass bootstrap4 cardText ] ]
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> addTitle: aRenderable withLevel: aLevel [

	self addTitle: aRenderable withLevel: aLevel applying: [  ]
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> addTitle: aRenderable withLevel: aLevel applying: aCommand [

	self
		addToBody:
			( HeadingWebView
				displaying: aRenderable
				withLevel: aLevel
				applying: [ :heading | heading addClass bootstrap4 cardTitle + aCommand ] )
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> addToBody: aRenderable [

	currentBody add: aRenderable
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> bottomImageCapLocatedAt: aLocation applying: anImageCommand [

	bottomImageOptional := Optional
		containing:
			( ImageWebView
				locatedAt: aLocation
				applying: [ :image | image addClass bootstrap4 cardImageTop + anImageCommand ] )
]

{ #category : #building }
Bootstrap4CardBuilder >> buildApplying: aCommandToCard [

	self resetCurrentBody.
	^ GenericContainerWebView
		wrapping: [ :canvas | 
			self renderTopImageOn: canvas.
			self renderHeadingOn: canvas.
			self renderBodyElementsOn: canvas.
			self renderFooterOn: canvas.
			self renderBottomImageOn: canvas
			]
		applying: [ :panel | panel addClass bootstrap4 card + aCommandToCard ]
]

{ #category : #'private - rendering' }
Bootstrap4CardBuilder >> cardBodyRenderingAll: bodyElements [

	^ [ :canvas | canvas div with: bodyElements applying: [ :div | div addClass bootstrap4 cardBody ] ]
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> footer: aRenderable [

	footerOptional := Optional containing: aRenderable
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> headingDisplaying: aRenderable [

	headingOptional := Optional
		containing: [ :canvas | canvas div with: aRenderable applying: [ :div | div addClass bootstrap4 cardHeader ] ]
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> headingDisplaying: aRenderable withLevel: aHeadingLevel [

	self headingDisplaying: aRenderable withLevel: aHeadingLevel applying: [ :heading |  ]
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> headingDisplaying: aRenderable withLevel: aHeadingLevel applying: aComponentCommand [

	headingOptional := Optional
		containing:
			( HeadingWebView
				displaying: aRenderable
				withLevel: aHeadingLevel
				applying: [ :heading | heading addClass bootstrap4 cardHeader + aComponentCommand ] )
]

{ #category : #initialization }
Bootstrap4CardBuilder >> initializeUsing: aSupplier [

	supplier := aSupplier.
	topImageOptional := Optional unused.
	headingOptional := Optional unused.
	elements := OrderedCollection new.
	currentBody := OrderedCollection new.
	footerOptional := Optional unused.
	bottomImageOptional := Optional unused
]

{ #category : #'private - rendering' }
Bootstrap4CardBuilder >> renderBodyElementsOn: canvas [

	canvas render: elements
]

{ #category : #'private - rendering' }
Bootstrap4CardBuilder >> renderBottomImageOn: canvas [

	bottomImageOptional withContentDo: [ :image | canvas render: image ]
]

{ #category : #'private - rendering' }
Bootstrap4CardBuilder >> renderFooterOn: canvas [

	footerOptional
		withContentDo: [ :footer | canvas div with: footer applying: [ :div | div addClass bootstrap4 cardFooter ] ]
]

{ #category : #'private - rendering' }
Bootstrap4CardBuilder >> renderHeadingOn: canvas [

	headingOptional withContentDo: [ :heading | canvas render: heading ]
]

{ #category : #'private - rendering' }
Bootstrap4CardBuilder >> renderTopImageOn: canvas [

	topImageOptional withContentDo: [ :image | canvas render: image ]
]

{ #category : #initialization }
Bootstrap4CardBuilder >> resetCurrentBody [

	currentBody ifNotEmpty: [ self add: (self cardBodyRenderingAll: currentBody) ].
	currentBody := OrderedCollection new
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> topImageCapLocatedAt: aLocation applying: anImageCommand [

	topImageOptional := Optional
		containing:
			( ImageWebView
				locatedAt: aLocation
				applying: [ :image | image addClass bootstrap4 cardImageTop + anImageCommand ] )
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> withListGroup: aListWebView [

	self resetCurrentBody.
	aListWebView embeddedInCard.
	self add: aListWebView
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> withTable: aTableWebView [

	self resetCurrentBody.
	self add: aTableWebView
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> wrapping: theBodyContent [

	self resetCurrentBody.
	self add: ( self cardBodyRenderingAll: {theBodyContent} )
]
