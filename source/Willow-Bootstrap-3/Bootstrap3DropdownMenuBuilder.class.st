"
I'm a builder of bootstrap dropdown menus
"
Class {
	#name : #Bootstrap3DropdownMenuBuilder,
	#superclass : #Bootstrap3DropdownBuilder,
	#instVars : [
		'containerBuildingCommand'
	],
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #Configuring }
Bootstrap3DropdownMenuBuilder >> beNavigationMenuIn: aNavigationBar [

	containerBuildingCommand := [ :containerCommand | 
	ListItemWebView
		itemizing: self content
		containedIn: aNavigationBar
		applying: [ :listItem | containerCommand asWebComponentCommand + listItem addClass bootstrap3 dropdown ]
	]
]

{ #category : #building }
Bootstrap3DropdownMenuBuilder >> buildApplying: aComponentCommand [

	^ containerBuildingCommand value: aComponentCommand asWebComponentCommand 
]

{ #category : #initialization }
Bootstrap3DropdownMenuBuilder >> initializeUsing: aSupplier [

	super initializeUsing: aSupplier.
	containerBuildingCommand := [ :containerCommand | 
	GenericContainerWebView
		wrapping: self content
		applying: [ :div | containerCommand asWebComponentCommand + div addClass bootstrap3 dropdown ]
	]
]

{ #category : #Configuring }
Bootstrap3DropdownMenuBuilder >> labeled: aRenderable [

	buttonBinding := Binding to:
		(supplier
			asynchronicLinkLabeled: [ :canvas | 
				canvas render: aRenderable.
				self renderCaretOn: canvas ]
			applying: [ :button :constants | (button setARIARoleTo: #button) + (self dropdownCommandFor: button using: constants) ])
]

{ #category : #Configuring }
Bootstrap3DropdownMenuBuilder >> labeled: aRenderable applying: aComponentCommand [

	buttonBinding := Binding to:
		(supplier
			asynchronicButtonLabeled: [ :canvas | 
				canvas render: aRenderable.
				self renderCaretOn: canvas ]
			applying: [ :button :constants | (self dropdownCommandFor: button using: constants) + aComponentCommand ])
]
