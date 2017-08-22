rendering - private
renderLabelOn: aCanvas

	aCanvas
		label: [ self renderCheckboxOn: aCanvas.
			labelOptional withContentDo: [ :label | aCanvas render: label ] ]