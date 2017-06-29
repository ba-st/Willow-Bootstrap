Configuring
labeled: aRenderable applying: aComponentCommand

	buttonBinding := Binding to: [ :canvas | 
		canvas render: (supplier asynchronicButtonLabeled: aRenderable applying: aComponentCommand).
		canvas render: (supplier asynchronicButtonLabeled: [ :innerCanvas | self renderCaretOn: innerCanvas ] applying: self dropdownButtonCommand + aComponentCommand) ]