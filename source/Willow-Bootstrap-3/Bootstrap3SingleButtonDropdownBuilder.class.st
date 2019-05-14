"
I'm a builder for turning a button into a dropdown toggle with some basic markup changes.
"
Class {
	#name : #Bootstrap3SingleButtonDropdownBuilder,
	#superclass : #Bootstrap3DropdownBuilder,
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #building }
Bootstrap3SingleButtonDropdownBuilder >> buildApplying: aComponentCommand [

	^ GenericContainerWebView
		wrapping: self content
		applying: [ :div | aComponentCommand asWebComponentCommand + div addClass bootstrap3 buttonGroup ]
]

{ #category : #Configuring }
Bootstrap3SingleButtonDropdownBuilder >> labeled: aRenderable applying: aComponentCommand [

	buttonBinding := Binding to:
		(supplier
			asynchronicButtonLabeled: [ :canvas | 
				canvas render: aRenderable.
				self renderCaretOn: canvas ]
			applying: [ :button :constants | (self dropdownCommandFor: button using: constants) + aComponentCommand ])
]
