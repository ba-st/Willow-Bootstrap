private-rendering
renderLabelOn: aCanvas with: aRenderable

	| label |

	label := aCanvas label.
	commandToComponent applyTo: label on: aCanvas.
	label with: aRenderable