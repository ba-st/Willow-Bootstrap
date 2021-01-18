Class {
	#name : #Bootstrap4NavigationDropdownMenuBuilder,
	#superclass : #Bootstrap4DropdownBuilder,
	#instVars : [
		'containerBuildingCommand',
		'navigationBarBinding'
	],
	#category : #'Willow-Bootstrap-4-WebViews'
}

{ #category : #building }
Bootstrap4NavigationDropdownMenuBuilder >> buildApplying: aComponentCommand [

	^ ListItemWebView
		itemizing: self content
		containedIn: self navigationBar
		applying: [ :listItem | 
			aComponentCommand asWebComponentCommand + listItem addClass bootstrap4 dropdown
				+ listItem addClass bootstrap4 navItem
			]
]

{ #category : #Configuring }
Bootstrap4NavigationDropdownMenuBuilder >> containedIn: aNavigationBar [

	navigationBarBinding := Binding to: aNavigationBar
]

{ #category : #initialization }
Bootstrap4NavigationDropdownMenuBuilder >> initializeUsing: aSupplier [

	super initializeUsing: aSupplier.
	navigationBarBinding := Binding undefinedExplainedBy: 'Missing navigation bar container'
]

{ #category : #Configuring }
Bootstrap4NavigationDropdownMenuBuilder >> labeled: aRenderable [

	self labeled: aRenderable applying: [  ]
]

{ #category : #Configuring }
Bootstrap4NavigationDropdownMenuBuilder >> labeled: aRenderable applying: aComponentCommand [

	buttonBinding := Binding to:
		( supplier
			asynchronicLinkLabeled: aRenderable
			applying: [ :link :constants | 
				( self dropdownCommandFor: link using: constants ) + ( link setAttribute: 'href' to: '#' )
					+ link addClass bootstrap4 navLink + aComponentCommand
				] )
]

{ #category : #private }
Bootstrap4NavigationDropdownMenuBuilder >> navigationBar [

	^ navigationBarBinding content
]
