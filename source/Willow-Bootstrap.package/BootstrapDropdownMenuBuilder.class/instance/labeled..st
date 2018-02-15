Configuring
labeled: aRenderable

	buttonBinding := Binding to:
		(supplier
			asynchronicLinkLabeled: [ :canvas | 
				canvas render: aRenderable.
				self renderCaretOn: canvas ]
			applying: [ :button :constants | (button setAttribute: constants bootstrap role to: constants bootstrap button) + (self dropdownCommandFor: button using: constants) ])