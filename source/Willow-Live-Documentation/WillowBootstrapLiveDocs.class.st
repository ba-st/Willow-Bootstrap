Class {
	#name : #WillowBootstrapLiveDocs,
	#superclass : #WillowApplication,
	#instVars : [
		'identifiedMainWebView',
		'currentCatalog'
	],
	#category : #'Willow-Live-Documentation-Application'
}

{ #category : #accessing }
WillowBootstrapLiveDocs class >> applicationTitle [

	^ 'Willow-Bootstrap Live Docs'
]

{ #category : #accessing }
WillowBootstrapLiveDocs class >> handlerName [

	^ 'live-docs'
]

{ #category : #accessing }
WillowBootstrapLiveDocs class >> sessionClass [

	^ WillowBootstrapLiveDocsSession
]

{ #category : #accessing }
WillowBootstrapLiveDocs class >> start [

	self registerAsDeployedApplication.
	( ZnZincServerAdaptor port: 8080 )
		codec: GRPharoUtf8Codec new;
		start
]

{ #category : #accessing }
WillowBootstrapLiveDocs class >> stop [

	ZnServer stopDefault.
	ZnZincServerAdaptor allInstancesDo: [ :each | each shutDown ].
	self unregisterFromApplications.
	Smalltalk garbageCollect
]

{ #category : #accessing }
WillowBootstrapLiveDocs >> componentSupplierForApplication [

	^ Bootstrap4ComponentSupplier online
]

{ #category : #accessing }
WillowBootstrapLiveDocs >> contentView [

	^ identifiedMainWebView
]

{ #category : #navigating }
WillowBootstrapLiveDocs >> goToNonPortableComponentsCatalog [

	currentCatalog := ComponentsCatalogWebView
		nonPortableComponentsViewFor: self session componentSupplier
]

{ #category : #navigating }
WillowBootstrapLiveDocs >> goToPortableComponentsCatalog [

	currentCatalog := PortableComponentsCatalogWebView new
]

{ #category : #hooks }
WillowBootstrapLiveDocs >> initialRequest: aRequest [

	super initialRequest: aRequest.
	self goToPortableComponentsCatalog.
	identifiedMainWebView := IdentifiedWebView
		forDivNamed: 'main'
		containing: [ :canvas | 
			self renderTopNavigationBarOn: canvas.
			self renderCurrentCatalogOn: canvas
			]
		applying: [ :div |  ]
]

{ #category : #accessing }
WillowBootstrapLiveDocs >> jQueryLibrary [

	^ ( self deploymentMode libraryFor: JQuery3MetadataLibrary ) default
]

{ #category : #hooks }
WillowBootstrapLiveDocs >> renderCurrentCatalogOn: aCanvas [

	aCanvas render: currentCatalog.
	aCanvas document addLoadScript: ( JSStream on: 'Prism.highlightAll();' )
]

{ #category : #rendering }
WillowBootstrapLiveDocs >> renderTopNavigationBarOn: aCanvas [

	aCanvas render: ( LiveDocsNavBar suitableFor: self componentSupplier )
]

{ #category : #testing }
WillowBootstrapLiveDocs >> showingPortableComponents [

	^ currentCatalog isA: PortableComponentsCatalogWebView
]

{ #category : #updating }
WillowBootstrapLiveDocs >> updateRoot: aRoot [

	super updateRoot: aRoot.
	PrismHighlightingOnlineLibrary default updateRoot: aRoot
]
