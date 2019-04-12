"
I'm a builder of bootstrap dropdown menus
"
Class {
	#name : #BootstrapDropdownMenuBuilder,
	#superclass : #BootstrapDropdownBuilder,
	#instVars : [
		'containerBuildingCommand'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #Configuring }
BootstrapDropdownMenuBuilder >> beNavigationMenuIn: aNavigationBar [

	containerBuildingCommand := [ :containerCommand | 
	ListItemWebView
		itemizing: self content
		containedIn: aNavigationBar
		applying: [ :listItem | containerCommand asWebComponentCommand + listItem addClass bootstrap3 dropdown ]
	]
]

{ #category : #building }
BootstrapDropdownMenuBuilder >> buildApplying: aComponentCommand [

	^ containerBuildingCommand value: aComponentCommand asWebComponentCommand 
]

{ #category : #initialization }
BootstrapDropdownMenuBuilder >> initializeUsing: aSupplier [

	super initializeUsing: aSupplier.
	containerBuildingCommand := [ :containerCommand | 
	GenericContainerWebView
		wrapping: self content
		applying: [ :div | containerCommand asWebComponentCommand + div addClass bootstrap3 dropdown ]
	]
]

{ #category : #Configuring }
BootstrapDropdownMenuBuilder >> labeled: aRenderable [

	buttonBinding := Binding to:
		(supplier
			asynchronicLinkLabeled: [ :canvas | 
				canvas render: aRenderable.
				self renderCaretOn: canvas ]
			applying: [ :button :constants | (button setARIARoleTo: #button) + (self dropdownCommandFor: button using: constants) ])
]

{ #category : #Configuring }
BootstrapDropdownMenuBuilder >> labeled: aRenderable applying: aComponentCommand [

	buttonBinding := Binding to:
		(supplier
			asynchronicButtonLabeled: [ :canvas | 
				canvas render: aRenderable.
				self renderCaretOn: canvas ]
			applying: [ :button :constants | (self dropdownCommandFor: button using: constants) + aComponentCommand ])
]
