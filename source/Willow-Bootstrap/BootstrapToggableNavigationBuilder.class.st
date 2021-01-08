"
Add quick, dynamic tab functionality to transition through panes of local content, even via dropdown menus. Nested tabs are not supported.
"
Class {
	#name : #BootstrapToggableNavigationBuilder,
	#superclass : #WillowComponentBuilder,
	#instVars : [
		'headers',
		'contents',
		'tabHeaderCommand',
		'tabTitleCommand',
		'firstTabHeaderCommand',
		'firstTitleCommand'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #private }
BootstrapToggableNavigationBuilder >> addNavigationHeadedBy: aRenderable containing: aNavigationContent [

	| identifiedContent |

	identifiedContent := self identifiedViewContaining: aNavigationContent.

	headers
		ifEmpty: [ headers add: ( self firstTabTitleWith: aRenderable linkedTo: identifiedContent ) ]
		ifNotEmpty: [ headers add: ( self tabTitleWith: aRenderable linkedTo: identifiedContent ) ].
	contents add: identifiedContent
]

{ #category : #Building }
BootstrapToggableNavigationBuilder >> buildApplying: aCommandToComponent [

	AssertionChecker
		enforce: [ headers size > 1 ]
		because: 'It makes no sense to build a toggable navigation component with less than two panes'.

	^ [ :canvas | 
	self renderTabListOn: canvas applying: aCommandToComponent asWebComponentCommand.
	self renderTabContentOn: canvas ]
]

{ #category : #private }
BootstrapToggableNavigationBuilder >> dataToggleValue [

	^ self subclassResponsibility
]

{ #category : #private }
BootstrapToggableNavigationBuilder >> firstTabTitleWith: aRenderable linkedTo: identifiedContent [

	^ self tabTitleWith: aRenderable linkedTo: identifiedContent applying: firstTitleCommand
]

{ #category : #private }
BootstrapToggableNavigationBuilder >> identifiedViewContaining: aNavigationContent [

	| isFirstTab |

	"The first tab content needs to be styled as active in order to function properly"
	isFirstTab := contents isEmpty.

	^ IdentifiedWebView
		forDivNamed: self dataToggleValue
		containing: aNavigationContent
		applying: [ :div :constants | 
			( div setARIARoleTo: #tabPanel ) + div addClass bootstrapCommon tabPane
				+ ( div when: [ isFirstTab ] apply: div addClass bootstrapCommon active )
			]
]

{ #category : #initialization }
BootstrapToggableNavigationBuilder >> initialize [

	super initialize.
	headers := OrderedCollection new.
	contents := OrderedCollection new.
	firstTabHeaderCommand := [ :listItem | listItem addClass bootstrapCommon active ]
		asWebComponentCommand.
	firstTitleCommand := [  ] asWebComponentCommand.
	tabHeaderCommand := [  ] asWebComponentCommand.
	tabTitleCommand := [  ] asWebComponentCommand
]

{ #category : #private }
BootstrapToggableNavigationBuilder >> navigationTypeCommand [

	^ self subclassResponsibility
]

{ #category : #'private - Rendering' }
BootstrapToggableNavigationBuilder >> renderFirstTabHeaderOn: canvas [

	"The first header must be rendered specially because needs the active style"

	canvas listItem
		with: headers first
		applying:
			[ :listItem :constants | tabHeaderCommand + firstTabHeaderCommand + ( listItem setARIARoleTo: #presentation ) ]
]

{ #category : #'private - Rendering' }
BootstrapToggableNavigationBuilder >> renderRemainingTabHeadersOn: aCanvas [

	headers copyWithoutFirst
		do: [ :header | 
			aCanvas listItem
				with: header
				applying: [ :listItem :constants | tabHeaderCommand + ( listItem setARIARoleTo: #presentation ) ]
			]
]

{ #category : #'private - Rendering' }
BootstrapToggableNavigationBuilder >> renderTabContentOn: aCanvas [

	aCanvas div with: contents applying: [ :div | div addClass bootstrapCommon tabContent ]
]

{ #category : #'private - Rendering' }
BootstrapToggableNavigationBuilder >> renderTabListOn: aCanvas applying: aCommantToTabList [

	(self tabListOn: aCanvas)
		with: [ self renderFirstTabHeaderOn: aCanvas.
			self renderRemainingTabHeadersOn: aCanvas ]
		applying: aCommantToTabList
]

{ #category : #'private - Rendering' }
BootstrapToggableNavigationBuilder >> tabListOn: canvas [

	^ canvas unorderedList
		apply:
				[ :list :constants | list addClass bootstrapCommon nav + self navigationTypeCommand + ( list setARIARoleTo: #tabList ) ];
		yourself
]

{ #category : #private }
BootstrapToggableNavigationBuilder >> tabTitleWith: aRenderable linkedTo: identifiedContent [

	^ self tabTitleWith: aRenderable linkedTo: identifiedContent applying: [  ]
]

{ #category : #private }
BootstrapToggableNavigationBuilder >> tabTitleWith: aRenderable linkedTo: identifiedContent applying: aCommand [

	^ [ :canvas | 
	| titleLink |

	titleLink := canvas anchor.
	titleLink
		url: ( '#<1s>' expandMacrosWith: ( identifiedContent identifierOn: canvas ) );
		with: aRenderable
			applying: [ :link :constants | 
			tabTitleCommand + aCommand + ( link setARIARoleTo: #tab )
				+ ( link setData: constants >> #bootstrap >> #toggle to: self dataToggleValue )
				+ ( link setARIAAttribute: 'control' to: ( identifiedContent identifierOn: canvas ) )
			]
	]
]
