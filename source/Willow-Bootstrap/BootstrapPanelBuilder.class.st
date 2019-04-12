"
I'm a builder of bootstrap panels
"
Class {
	#name : #BootstrapPanelBuilder,
	#superclass : #WillowComponentBuilder,
	#instVars : [
		'headingOptional',
		'bodyOptional',
		'footerOptional',
		'tablesAndListGroups'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #Building }
BootstrapPanelBuilder >> buildApplying: aCommandToPanel [

	^ GenericContainerWebView
		wrapping: [ :canvas | 
			self renderHeadingOn: canvas.
			self renderBodyOn: canvas.
			self renderTableOrListGroupOn: canvas.
			self renderFooterOn: canvas
			]
		applying: [ :panel | panel addClass bootstrap3 panel + aCommandToPanel ]
]

{ #category : #Configuring }
BootstrapPanelBuilder >> footer: aRenderable [

	footerOptional := Optional containing: aRenderable
]

{ #category : #Configuring }
BootstrapPanelBuilder >> headingDisplaying: aRenderable [

	headingOptional := Optional containing: aRenderable
]

{ #category : #Configuring }
BootstrapPanelBuilder >> headingDisplaying: aRenderable withLevel: aHeadingLevel [

	self headingDisplaying: aRenderable withLevel: aHeadingLevel applying: [ :heading |  ]
]

{ #category : #Configuring }
BootstrapPanelBuilder >> headingDisplaying: aRenderable withLevel: aHeadingLevel applying: aComponentCommand [

	headingOptional := Optional
		containing:
			( HeadingWebView
				displaying: aRenderable
				withLevel: aHeadingLevel
				applying: [ :heading | heading addClass bootstrap3 panelTitle + aComponentCommand ] )
]

{ #category : #initialization }
BootstrapPanelBuilder >> initialize [

	super initialize.
	headingOptional := Optional unused.
	bodyOptional := Optional unused.
	tablesAndListGroups := OrderedCollection new.
	footerOptional := Optional unused
]

{ #category : #'private - Rendering' }
BootstrapPanelBuilder >> renderBodyOn: canvas [

	bodyOptional
		withContentDo:
			[ :renderableInsideBody | canvas div with: renderableInsideBody applying: [ :div | div addClass bootstrap3 panelBody ] ]
]

{ #category : #'private - Rendering' }
BootstrapPanelBuilder >> renderFooterOn: canvas [

	footerOptional
		withContentDo: [ :footer | canvas div with: footer applying: [ :div | div addClass bootstrap3 panelFooter ] ]
]

{ #category : #'private - Rendering' }
BootstrapPanelBuilder >> renderHeadingOn: canvas [

	headingOptional
		withContentDo: [ :heading | canvas div with: heading applying: [ :div | div addClass bootstrap3 panelHeading ] ]
]

{ #category : #'private - Rendering' }
BootstrapPanelBuilder >> renderTableOrListGroupOn: canvas [

	tablesAndListGroups do: [ :tableOrListGroup | canvas render: tableOrListGroup ]
]

{ #category : #Configuring }
BootstrapPanelBuilder >> withListGroup: aListWebView [

	self withTable: aListWebView
]

{ #category : #Configuring }
BootstrapPanelBuilder >> withTable: aTableWebView [

	tablesAndListGroups add: aTableWebView
]

{ #category : #Configuring }
BootstrapPanelBuilder >> wrapping: theBodyContent [

	bodyOptional := Optional containing: theBodyContent
]
