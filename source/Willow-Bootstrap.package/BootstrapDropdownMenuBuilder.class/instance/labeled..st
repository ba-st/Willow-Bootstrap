Configuring
labeled: aRenderable

	buttonBinding := Binding to:
		(supplier
			asynchronicAnchorLabeled: [ :canvas | 
				canvas render: aRenderable.
				self renderCaretOn: canvas ]
			applying: self dropdownButtonCommand)