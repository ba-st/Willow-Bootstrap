"
I create split button dropdowns with the same markup changes, only with a separate button.
"
Class {
	#name : #BootstrapSplitButtonDropdownBuilder,
	#superclass : #BootstrapDropdownBuilder,
	#instVars : [
		'mainButtonBinding'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #building }
BootstrapSplitButtonDropdownBuilder >> buildApplying: aComponentCommand [

	^ BootstrapSplitButtonWebView
		with: (GenericContainerWebView wrapping: self content applying: [ :div | aComponentCommand asWebComponentCommand + div addClass bootstrap buttonGroup ])
		and: mainButtonBinding content
]

{ #category : #Configuring }
BootstrapSplitButtonDropdownBuilder >> initialize [

	super initialize.
	mainButtonBinding := Binding undefinedExplainedBy: 'Missing main button definition'
]

{ #category : #Configuring }
BootstrapSplitButtonDropdownBuilder >> labeled: aRenderable applying: aComponentCommand [

	self labeled: aRenderable applyingToMainButton: [  ] andToBoth: aComponentCommand
]

{ #category : #Configuring }
BootstrapSplitButtonDropdownBuilder >> labeled: aRenderable applyingToMainButton: theMainButtonCommand andToBoth: theSplitButtonCommand [

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
