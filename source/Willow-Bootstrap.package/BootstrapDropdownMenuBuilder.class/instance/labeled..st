Configuring
labeled: aRenderable

	buttonBinding := Binding to:
		(AsynchronicLinkWebView
			labeled: [ :canvas | 
				canvas render: aRenderable.
				self renderCaretOn: canvas ]
			applying: [ :button :constants | self dropdownCommandFor: button using: constants ])