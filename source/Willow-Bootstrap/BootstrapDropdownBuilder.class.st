"
I'm an abstract for building dropdown related components.
"
Class {
	#name : #BootstrapDropdownBuilder,
	#superclass : #WillowComponentBuilder,
	#instVars : [
		'menuItems',
		'supplier',
		'buttonBinding',
		'listCssStyles'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #'instance creation' }
BootstrapDropdownBuilder class >> using: aComponentSupplier [

	^ self new initializeUsing: aComponentSupplier
]

{ #category : #Configuring }
BootstrapDropdownBuilder >> addActionLabeled: aRenderable executing: anActionBlock [

	self addActionLabeled: aRenderable executing: anActionBlock applying: [  ]
]

{ #category : #Configuring }
BootstrapDropdownBuilder >> addActionLabeled: aRenderable executing: anActionBlock applying: aCommand [

	| anchor |

	anchor := supplier asynchronicLinkLabeled: aRenderable applying: [ :link :constants | (link setAttribute: constants >> #bootstrap >> #role to: constants >> #bootstrap >> #button) + aCommand ].
	anActionBlock value: anchor.
	menuItems add: [ :canvas | canvas listItem: anchor ]
]

{ #category : #Configuring }
BootstrapDropdownBuilder >> addDivider [

	| dividerCommand |

	dividerCommand := [ :listItem :constants | listItem addClass bootstrap divider + (listItem setARIAAttribute: constants >> #bootstrap >> #role to: 'divider') ] asWebComponentCommand.

	menuItems add: [ :canvas | dividerCommand applyTo: canvas listItem on: canvas ]
]

{ #category : #Configuring }
BootstrapDropdownBuilder >> addHeaderLabeled: aRenderable [

	menuItems
		add: [ :canvas | 
			canvas listItem
				class: Willow classes >> #bootstrap >>#dropdownHeader;
				with: aRenderable ]
]

{ #category : #Configuring }
BootstrapDropdownBuilder >> beRightAligned [

	listCssStyles add: Willow classes >> #bootstrap >>#dropdownMenuRight
]

{ #category : #private }
BootstrapDropdownBuilder >> content [

	^[:canvas |
		canvas render: buttonBinding content.
		canvas unorderedList
			classes: listCssStyles;
			with: [menuItems do: [:menuItem | canvas render: menuItem]]]
]

{ #category : #private }
BootstrapDropdownBuilder >> dropdownCommandFor: button using: constants [

	^ button addClass bootstrap dropdownToggle + (button setData: constants >> #bootstrap >> #toggle to: constants >> #bootstrap >> #dropdown) + (button setARIAAttribute: 'haspopup' to: 'true')
		+ (button setARIAAttribute: 'expanded' to: 'false')
]

{ #category : #initialization }
BootstrapDropdownBuilder >> initializeUsing: aSupplier [

	supplier := aSupplier.
	buttonBinding := Binding undefinedExplainedBy: 'Missing Dropdown Button Configuration'.
	menuItems := OrderedCollection new.
	listCssStyles := OrderedCollection with: Willow classes >> #bootstrap >>#dropdownMenu
]

{ #category : #Configuring }
BootstrapDropdownBuilder >> labeled: aRenderable applying: aComponentCommand [

	self subclassResponsibility
]

{ #category : #private }
BootstrapDropdownBuilder >> renderCaretOn: canvas [

	canvas space.
	canvas span class: Willow classes >> #bootstrap >>#caret
]
