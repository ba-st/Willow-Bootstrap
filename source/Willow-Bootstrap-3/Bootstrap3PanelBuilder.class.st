"
I'm a builder of bootstrap panels
"
Class {
	#name : #Bootstrap3PanelBuilder,
	#superclass : #BootstrapPanelBuilder,
	#instVars : [
		'headingOptional',
		'bodyOptional',
		'footerOptional',
		'tablesAndListGroups'
	],
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #Building }
Bootstrap3PanelBuilder >> buildApplying: aCommandToPanel [

	^ ContainerWebView
		wrapping: [ :canvas | 
			self renderHeadingOn: canvas.
			self renderBodyOn: canvas.
			self renderTableOrListGroupOn: canvas.
			self renderFooterOn: canvas
			]
		intoElementBuiltUsing: [ :theCanvas | theCanvas div ]
		applying: [ :panel | panel addClass bootstrap3 panel + aCommandToPanel ]
]

{ #category : #Configuring }
Bootstrap3PanelBuilder >> footer: aRenderable [

	footerOptional := Optional containing: aRenderable
]

{ #category : #Configuring }
Bootstrap3PanelBuilder >> headingDisplaying: aRenderable [

	headingOptional := Optional containing: aRenderable
]

{ #category : #Configuring }
Bootstrap3PanelBuilder >> headingDisplaying: aRenderable withLevel: aHeadingLevel [

	self headingDisplaying: aRenderable withLevel: aHeadingLevel applying: [ :heading |  ]
]

{ #category : #Configuring }
Bootstrap3PanelBuilder >> headingDisplaying: aRenderable withLevel: aHeadingLevel applying: aComponentCommand [

	headingOptional := Optional
		containing:
			( HeadingWebView
				displaying: aRenderable
				withLevel: aHeadingLevel
				applying: [ :heading | heading addClass bootstrap3 panelTitle + aComponentCommand ] )
]

{ #category : #initialization }
Bootstrap3PanelBuilder >> initialize [

	super initialize.
	headingOptional := Optional unused.
	bodyOptional := Optional unused.
	tablesAndListGroups := OrderedCollection new.
	footerOptional := Optional unused
]

{ #category : #'private - Rendering' }
Bootstrap3PanelBuilder >> renderBodyOn: canvas [

	bodyOptional
		withContentDo:
			[ :renderableInsideBody | canvas div with: renderableInsideBody applying: [ :div | div addClass bootstrap3 panelBody ] ]
]

{ #category : #'private - Rendering' }
Bootstrap3PanelBuilder >> renderFooterOn: canvas [

	footerOptional
		withContentDo: [ :footer | canvas div with: footer applying: [ :div | div addClass bootstrap3 panelFooter ] ]
]

{ #category : #'private - Rendering' }
Bootstrap3PanelBuilder >> renderHeadingOn: canvas [

	headingOptional
		withContentDo: [ :heading | canvas div with: heading applying: [ :div | div addClass bootstrap3 panelHeading ] ]
]

{ #category : #'private - Rendering' }
Bootstrap3PanelBuilder >> renderTableOrListGroupOn: canvas [

	canvas render: tablesAndListGroups
]

{ #category : #Configuring }
Bootstrap3PanelBuilder >> withListGroup: aListWebView [

	self withTable: aListWebView
]

{ #category : #Configuring }
Bootstrap3PanelBuilder >> withTable: aTableWebView [

	tablesAndListGroups add: aTableWebView
]

{ #category : #Configuring }
Bootstrap3PanelBuilder >> wrapping: theBodyContent [

	bodyOptional := Optional containing: theBodyContent
]
