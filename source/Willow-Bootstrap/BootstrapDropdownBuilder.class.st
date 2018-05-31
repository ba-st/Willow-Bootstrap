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
		'listClassificationCommand'
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

	anchor := supplier asynchronicLinkLabeled: aRenderable applying: [ :link :constants | (link setARIARoleTo: #button) + aCommand ].
	anActionBlock value: anchor.
	menuItems add: [ :canvas | canvas listItem: anchor ]
]

{ #category : #Configuring }
BootstrapDropdownBuilder >> addDivider [

	| dividerCommand |

	dividerCommand := [ :listItem :constants | listItem addClass bootstrap divider + (listItem setARIARoleTo: #separator) ] asWebComponentCommand.

	menuItems add: [ :canvas | dividerCommand applyTo: canvas listItem on: canvas ]
]

{ #category : #Configuring }
BootstrapDropdownBuilder >> addHeaderLabeled: aRenderable [

	menuItems add: [ :canvas | canvas listItem with: aRenderable applying: [ :listItem | listItem addClass bootstrap dropdownHeader ] ]
]

{ #category : #Configuring }
BootstrapDropdownBuilder >> beRightAligned [

	listClassificationCommand := listClassificationCommand + [ :list | list addClass bootstrap dropdownMenuRight ] asWebComponentCommand
]

{ #category : #private }
BootstrapDropdownBuilder >> content [

	^ [ :canvas | 
	canvas render: buttonBinding content.
	canvas unorderedList with: [ menuItems do: [ :menuItem | canvas render: menuItem ] ] applying: listClassificationCommand ]
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
	listClassificationCommand := [ :list | list addClass bootstrap dropdownMenu ] asWebComponentCommand
]

{ #category : #Configuring }
BootstrapDropdownBuilder >> labeled: aRenderable applying: aComponentCommand [

	self subclassResponsibility
]

{ #category : #private }
BootstrapDropdownBuilder >> renderCaretOn: canvas [

	canvas space.
	canvas span apply: [ :span | span addClass bootstrap caret ]
]
