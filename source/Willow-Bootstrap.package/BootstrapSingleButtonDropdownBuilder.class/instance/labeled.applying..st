Configuring
labeled: aRenderable applying: aComponentCommand

	buttonBinding := Binding to:
		(supplier
			asynchronicButtonLabeled: [ :canvas | 
				canvas render: aRenderable.
				self renderCaretOn: canvas ]
			applying: [ :button :constants | (self dropdownCommandFor: button using: constants) + aComponentCommand ])