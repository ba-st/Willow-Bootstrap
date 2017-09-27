Configuring
labeled: aRenderable applying: aComponentCommand

	buttonBinding := Binding to: [ :canvas | 
		canvas
			render: (supplier asynchronicButtonLabeled: aRenderable applying: aComponentCommand);
			render: (supplier asynchronicButtonLabeled: [ :innerCanvas | self renderCaretOn: innerCanvas ] applying: [ :button :constants | (self dropdownCommandFor: button using: constants) + aComponentCommand ]) ]