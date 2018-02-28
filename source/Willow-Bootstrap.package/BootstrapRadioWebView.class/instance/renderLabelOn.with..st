private-rendering
renderLabelOn: aCanvas with: aRenderable

	| label |

	label := aCanvas label.
	labelCommand applyTo: label on: aCanvas.
	label with: aRenderable