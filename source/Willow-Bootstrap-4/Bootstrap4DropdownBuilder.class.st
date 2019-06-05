Class {
	#name : #Bootstrap4DropdownBuilder,
	#superclass : #BootstrapDropdownBuilder,
	#instVars : [
		'menuClassificationCommand'
	],
	#category : #'Willow-Bootstrap-4-WebViews'
}

{ #category : #configuring }
Bootstrap4DropdownBuilder >> addActionLabeled: aRenderable executing: anActionBlock applying: aCommand [

	| anchor |

	anchor := supplier
		asynchronicLinkLabeled: aRenderable
		applying: [ :link :constants | 
			( link setARIARoleTo: #button ) + ( link setAttribute: 'href' to: '#' )
				+ link addClass bootstrap4 dropdownItem + aCommand
			].
	anActionBlock value: anchor.
	menuItems add: anchor
]

{ #category : #configuring }
Bootstrap4DropdownBuilder >> addDivider [

	| dividerCommand |

	dividerCommand := [ :div :constants | div addClass bootstrap4 dropdownDivider + ( div setARIARoleTo: #separator ) ]
		asWebComponentCommand.

	menuItems add: [ :canvas | dividerCommand applyTo: canvas div on: canvas ]
]

{ #category : #configuring }
Bootstrap4DropdownBuilder >> addHeaderLabeled: aRenderable [

	menuItems
		add: [ :canvas | 
			canvas heading
				level: 6;
				with: aRenderable applying: [ :heading | heading addClass bootstrap4 dropdownHeader ]
			]
]

{ #category : #configuring }
Bootstrap4DropdownBuilder >> beRightAligned [

	menuClassificationCommand := menuClassificationCommand
		+ [ :list | list addClass bootstrap4 dropdownMenuRight ] asWebComponentCommand
]

{ #category : #private }
Bootstrap4DropdownBuilder >> content [

	^ [ :canvas | 
	canvas render: buttonBinding content.
	canvas div with: menuItems applying: menuClassificationCommand
	]
]

{ #category : #initialization }
Bootstrap4DropdownBuilder >> initializeUsing: aSupplier [

	super initializeUsing: aSupplier.
	menuClassificationCommand := [ :div | div addClass bootstrap4 dropdownMenu ] asWebComponentCommand
]
