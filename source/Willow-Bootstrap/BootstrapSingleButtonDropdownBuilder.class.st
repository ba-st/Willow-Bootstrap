"
I'm a builder for turning a button into a dropdown toggle with some basic markup changes.
"
Class {
	#name : #BootstrapSingleButtonDropdownBuilder,
	#superclass : #BootstrapDropdownBuilder,
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #building }
BootstrapSingleButtonDropdownBuilder >> buildApplying: aComponentCommand [

	^ GenericContainerWebView
		wrapping: self content
		applying: [ :div | aComponentCommand asWebComponentCommand + div addClass bootstrap3 buttonGroup ]
]

{ #category : #Configuring }
BootstrapSingleButtonDropdownBuilder >> labeled: aRenderable applying: aComponentCommand [

	buttonBinding := Binding to:
		(supplier
			asynchronicButtonLabeled: [ :canvas | 
				canvas render: aRenderable.
				self renderCaretOn: canvas ]
			applying: [ :button :constants | (self dropdownCommandFor: button using: constants) + aComponentCommand ])
]
