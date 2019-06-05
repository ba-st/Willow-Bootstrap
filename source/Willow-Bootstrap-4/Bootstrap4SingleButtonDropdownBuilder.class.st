Class {
	#name : #Bootstrap4SingleButtonDropdownBuilder,
	#superclass : #Bootstrap4DropdownBuilder,
	#category : #'Willow-Bootstrap-4-WebViews'
}

{ #category : #building }
Bootstrap4SingleButtonDropdownBuilder >> buildApplying: aComponentCommand [

	^ GenericContainerWebView
		wrapping: self content
		applying: [ :div | aComponentCommand asWebComponentCommand + div addClass bootstrap4 dropdown ]
]

{ #category : #configuring }
Bootstrap4SingleButtonDropdownBuilder >> labeled: aRenderable applying: aComponentCommand [

	buttonBinding := Binding to:
		( supplier
			asynchronicButtonLabeled: aRenderable
			applying: [ :button :constants | ( self dropdownCommandFor: button using: constants ) + aComponentCommand ] )
]
