"
Add quick, dynamic tab functionality to transition through panes of local content, even via dropdown menus. Nested tabs are not supported.
"
Class {
	#name : #BootstrapToggableNavigationBuilder,
	#superclass : #WillowComponentBuilder,
	#instVars : [
		'headers',
		'contents'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #private }
BootstrapToggableNavigationBuilder >> addNavigationHeadedBy: aRenderable containing: aNavigationContent [

	| identifiedContent |

	identifiedContent := self identifiedViewContaining: aNavigationContent.
	
	headers add: (self tabTitleWith: aRenderable linkedTo: identifiedContent).
	contents add: identifiedContent
]

{ #category : #private }
BootstrapToggableNavigationBuilder >> applyMetadataTo: aLink controling: identifiedContent on: canvas [

	self setRoleWith: Willow constants >> #bootstrap >> #tab to: aLink on: canvas.
	[ :link :constants | (link setData: constants >> #bootstrap >> #toggle to: self dataToggleValue) + (link setARIAAttribute: 'control' to: identifiedContent identifier) ] asWebComponentCommand
		applyTo: aLink
		on: canvas
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
BootstrapToggableNavigationBuilder >> identifiedViewContaining: aNavigationContent [

	| isFirstTab |

	"The first tab content needs to be styled as active in order to function properly"
	isFirstTab := contents isEmpty.

	^ IdentifiedWebView
		forDivNamed: self dataToggleValue
		containing: aNavigationContent
		applying:
			[ :div :constants | (div setAttribute: constants >> #bootstrap >> #role to: constants >> #bootstrap >> #tabpanel) + div addClass bootstrap tabPane + (div when: [ isFirstTab ] apply: div addClass bootstrap active) ]
]

{ #category : #initialization }
BootstrapToggableNavigationBuilder >> initialize [

	super initialize.
	headers := OrderedCollection new.
	contents := OrderedCollection new
]

{ #category : #private }
BootstrapToggableNavigationBuilder >> navigationTypeClass [

	^ self subclassResponsibility
]

{ #category : #'private - Rendering' }
BootstrapToggableNavigationBuilder >> renderFirstTabHeaderOn: canvas [

	"The first header must be rendered specially because needs the active style"

	| listItem |

	listItem := canvas listItem.
	listItem apply: [ :item | item addClass bootstrap active ].
	self setRoleWith: Willow constants >> #bootstrap >> #presentation to: listItem on: canvas.
	listItem with: headers first
]

{ #category : #'private - Rendering' }
BootstrapToggableNavigationBuilder >> renderRemainingTabHeadersOn: aCanvas [

	headers copyWithoutFirst
		do: [ :header | 
			| listItem |

			listItem := aCanvas listItem.
			self setRoleWith: Willow constants >> #bootstrap >> #presentation to: listItem on: aCanvas.
			listItem with: header ]
]

{ #category : #'private - Rendering' }
BootstrapToggableNavigationBuilder >> renderTabContentOn: aCanvas [

	aCanvas div with: [ contents do: [ :currentContent | aCanvas render: currentContent ] ] applying: [ :div | div addClass bootstrap tabContent ]
]

{ #category : #'private - Rendering' }
BootstrapToggableNavigationBuilder >> renderTabListOn: aCanvas applying: aCommantToTabList [

	(self tabListOn: aCanvas)
		with: [ self renderFirstTabHeaderOn: aCanvas.
			self renderRemainingTabHeadersOn: aCanvas ]
		applying: aCommantToTabList
]

{ #category : #private }
BootstrapToggableNavigationBuilder >> setRoleWith: aRoleValue to: aComponent on: aCanvas [

	[ :component :constants | component setAttribute: constants >> #bootstrap >> #role to: aRoleValue ] asWebComponentCommand applyTo: aComponent on: aCanvas
]

{ #category : #'private - Rendering' }
BootstrapToggableNavigationBuilder >> tabListOn: canvas [

	| list |

	list := canvas unorderedList.
	list
		apply: [ :theList | theList addClass bootstrap nav ];
		class: self navigationTypeClass.
	self setRoleWith: Willow constants >> #bootstrap >> #tablist to: list on: canvas.
	^ list
]

{ #category : #private }
BootstrapToggableNavigationBuilder >> tabTitleWith: aRenderable linkedTo: identifiedContent [

	^ [ :canvas | 
	| link |

	link := canvas anchor.
	identifiedContent identifyIn: canvas.
	link url: ('#<1s>' expandMacrosWith: identifiedContent identifier).
	self applyMetadataTo: link controling: identifiedContent on: canvas.
	link with: aRenderable ]
]
