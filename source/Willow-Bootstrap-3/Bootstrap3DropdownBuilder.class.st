"
I'm an abstract for building dropdown related components.
"
Class {
	#name : #Bootstrap3DropdownBuilder,
	#superclass : #BootstrapDropdownBuilder,
	#instVars : [
		'listClassificationCommand'
	],
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #Configuring }
Bootstrap3DropdownBuilder >> addActionLabeled: aRenderable executing: anActionBlock applying: aCommand [

	| anchor |

	anchor := supplier asynchronicLinkLabeled: aRenderable applying: [ :link :constants | (link setARIARoleTo: #button) + aCommand ].
	anActionBlock value: anchor.
	menuItems add: [ :canvas | canvas listItem: anchor ]
]

{ #category : #Configuring }
Bootstrap3DropdownBuilder >> addDivider [

	| dividerCommand |

	dividerCommand := [ :listItem :constants | listItem addClass bootstrap3 divider + ( listItem setARIARoleTo: #separator ) ]
		asWebComponentCommand.

	menuItems add: [ :canvas | dividerCommand applyTo: canvas listItem on: canvas ]
]

{ #category : #Configuring }
Bootstrap3DropdownBuilder >> addHeaderLabeled: aRenderable [

	menuItems
		add: [ :canvas | 
			canvas listItem
				with: aRenderable
				applying: [ :listItem | listItem addClass bootstrap3 dropdownHeader ]
			]
]

{ #category : #Configuring }
Bootstrap3DropdownBuilder >> beRightAligned [

	listClassificationCommand := listClassificationCommand
		+ [ :list | list addClass bootstrap3 dropdownMenuRight ] asWebComponentCommand
]

{ #category : #private }
Bootstrap3DropdownBuilder >> content [

	^ [ :canvas | 
	canvas render: buttonBinding content.
	canvas unorderedList with: [ menuItems do: [ :menuItem | canvas render: menuItem ] ] applying: listClassificationCommand ]
]

{ #category : #initialization }
Bootstrap3DropdownBuilder >> initializeUsing: aSupplier [

	super initializeUsing: aSupplier.
	listClassificationCommand := [ :list | list addClass bootstrap3 dropdownMenu ]
		asWebComponentCommand
]

{ #category : #private }
Bootstrap3DropdownBuilder >> renderCaretOn: canvas [

	canvas space.
	canvas span apply: [ :span | span addClass bootstrap3 caret ]
]
