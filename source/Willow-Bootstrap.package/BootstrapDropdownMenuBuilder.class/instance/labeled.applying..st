Configuring
labeled: aRenderable applying: aComponentCommand

	buttonBinding := Binding to:
		(supplier
			asynchronicButtonLabeled: [ :canvas | 
				canvas render: aRenderable.
				self renderCaret: canvas ]
			applying: self dropdownButtonCommand + aComponentCommand)