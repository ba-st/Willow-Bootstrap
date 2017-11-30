Configuring
labeled: aRenderable applyingToMainButton: theMainButtonCommand andToBoth: theSplitButtonCommand

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