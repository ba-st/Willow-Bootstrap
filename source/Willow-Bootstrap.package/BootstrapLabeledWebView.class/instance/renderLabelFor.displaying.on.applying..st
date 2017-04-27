private - Rendering
renderLabelFor: fieldIdentifier displaying: thePhrasingContent on: canvas applying: aCommandToLabel

	| label |

	label := canvas label for: fieldIdentifier.
	aCommandToLabel applyTo: label on: canvas.
	label with: thePhrasingContent