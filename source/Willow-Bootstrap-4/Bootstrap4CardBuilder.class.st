"
Bootstrap’s cards provide a flexible and extensible content container with multiple variants and options.
About

A card is a flexible and extensible content container. It includes options for headers and footers, a wide variety of content, contextual background colors, and powerful display options. If you’re familiar with Bootstrap 3, cards replace our old panels, wells, and thumbnails. Similar functionality to those components is available as modifier classes for cards.

"
Class {
	#name : #Bootstrap4CardBuilder,
	#superclass : #BootstrapPanelBuilder,
	#instVars : [
		'bodyOptional',
		'headingOptional',
		'tablesAndListGroups',
		'footerOptional'
	],
	#category : #'Willow-Bootstrap-4-WebViews'
}

{ #category : #building }
Bootstrap4CardBuilder >> buildApplying: aCommandToCard [

	^ GenericContainerWebView
		wrapping: [ :canvas | 
			self renderHeadingOn: canvas.
			self renderBodyOn: canvas.
			self renderTableOrListGroupOn: canvas.
			self renderFooterOn: canvas
			]
		applying: [ :panel | panel addClass bootstrap4 card + aCommandToCard ]
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
Bootstrap4CardBuilder >> initialize [

	super initialize.
	headingOptional := Optional unused.
	bodyOptional := Optional unused.
	tablesAndListGroups := OrderedCollection new.
	footerOptional := Optional unused
]

{ #category : #'private - rendering' }
Bootstrap4CardBuilder >> renderBodyOn: canvas [

	bodyOptional
		withContentDo:
			[ :renderableInsideBody | canvas div with: renderableInsideBody applying: [ :div | div addClass bootstrap4 cardBody ] ]
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
Bootstrap4CardBuilder >> renderTableOrListGroupOn: canvas [

	tablesAndListGroups do: [ :tableOrListGroup | canvas render: tableOrListGroup ]
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> withListGroup: aListWebView [

	aListWebView embeddedInCard.
	self withTable: aListWebView
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> withTable: aTableWebView [

	tablesAndListGroups add: aTableWebView
]

{ #category : #Configuring }
Bootstrap4CardBuilder >> wrapping: theBodyContent [

	bodyOptional := Optional containing: theBodyContent
]
