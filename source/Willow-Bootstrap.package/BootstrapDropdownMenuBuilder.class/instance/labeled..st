Configuring
labeled: aRenderable

	buttonBinding := Binding to:
		(AsynchronicAnchorWebView
			labeled: [ :canvas | 
				canvas render: aRenderable.
				self renderCaret: canvas ]
			applying: self dropdownButtonCommand)