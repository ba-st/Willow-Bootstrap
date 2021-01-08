"
I'm a builder of bootstrap dropdown menus
"
Class {
	#name : #Bootstrap3NavigationDropdownMenuBuilder,
	#superclass : #Bootstrap3DropdownBuilder,
	#instVars : [
		'containerBuildingCommand',
		'navigationBarBinding'
	],
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #building }
Bootstrap3NavigationDropdownMenuBuilder >> buildApplying: aComponentCommand [

	^ ListItemWebView
		itemizing: self content
		containedIn: self navigationBar
		applying: [ :listItem | aComponentCommand asWebComponentCommand + listItem addClass bootstrap3 dropdown ]
]

{ #category : #Configuring }
Bootstrap3NavigationDropdownMenuBuilder >> containedIn: aNavigationBar [

	navigationBarBinding := Binding to: aNavigationBar
]

{ #category : #initialization }
Bootstrap3NavigationDropdownMenuBuilder >> initializeUsing: aSupplier [

	super initializeUsing: aSupplier.
	navigationBarBinding := Binding undefinedExplainedBy: 'Missing navigation bar container'
]

{ #category : #Configuring }
Bootstrap3NavigationDropdownMenuBuilder >> labeled: aRenderable [

	buttonBinding := Binding to:
		(supplier
			asynchronicLinkLabeled: [ :canvas | 
				canvas render: aRenderable.
				self renderCaretOn: canvas ]
			applying: [ :button :constants | (button setARIARoleTo: #button) + (self dropdownCommandFor: button using: constants) ])
]

{ #category : #Configuring }
Bootstrap3NavigationDropdownMenuBuilder >> labeled: aRenderable applying: aComponentCommand [

	buttonBinding := Binding to:
		(supplier
			asynchronicButtonLabeled: [ :canvas | 
				canvas render: aRenderable.
				self renderCaretOn: canvas ]
			applying: [ :button :constants | (self dropdownCommandFor: button using: constants) + aComponentCommand ])
]

{ #category : #private }
Bootstrap3NavigationDropdownMenuBuilder >> navigationBar [

	^ navigationBarBinding content
]
