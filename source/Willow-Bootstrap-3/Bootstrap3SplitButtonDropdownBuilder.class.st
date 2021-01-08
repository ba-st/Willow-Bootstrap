"
I create split button dropdowns with the same markup changes, only with a separate button.
"
Class {
	#name : #Bootstrap3SplitButtonDropdownBuilder,
	#superclass : #Bootstrap3DropdownBuilder,
	#instVars : [
		'mainButtonBinding'
	],
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #building }
Bootstrap3SplitButtonDropdownBuilder >> buildApplying: aComponentCommand [

	^ BootstrapSplitButtonWebView
		with:
			( ContainerWebView
				wrapping: self content
				intoElementBuiltUsing: [ :theCanvas | theCanvas div ]
				applying: [ :div | aComponentCommand asWebComponentCommand + div addClass bootstrap3 buttonGroup ] )
		and: mainButtonBinding content
]

{ #category : #Configuring }
Bootstrap3SplitButtonDropdownBuilder >> initialize [

	super initialize.
	mainButtonBinding := Binding undefinedExplainedBy: 'Missing main button definition'
]

{ #category : #Configuring }
Bootstrap3SplitButtonDropdownBuilder >> labeled: aRenderable applying: aComponentCommand [

	self labeled: aRenderable applyingToMainButton: [  ] andToBoth: aComponentCommand
]

{ #category : #Configuring }
Bootstrap3SplitButtonDropdownBuilder >> labeled: aRenderable applyingToMainButton: theMainButtonCommand andToBoth: theSplitButtonCommand [

	| mainButton |

	mainButton := supplier asynchronicButtonLabeled: aRenderable applying: theMainButtonCommand asWebComponentCommand + theSplitButtonCommand asWebComponentCommand.
	mainButtonBinding := Binding to: mainButton.
	buttonBinding := Binding to: [ :canvas | 
		canvas
			render: mainButton;
			render:
				(supplier
					asynchronicButtonLabeled: [ :innerCanvas | self renderCaretOn: innerCanvas ]
					applying: [ :button :constants | (self dropdownCommandFor: button using: constants) + theSplitButtonCommand asWebComponentCommand ]) ]
]
