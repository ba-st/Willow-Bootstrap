private-rendering
renderDivOn: aCanvas with: aRenderable

	| div |

	div := aCanvas div.
	div class: BootstrapCssStyles radio.
	commandToComponent applyTo: div on: aCanvas.
	div with: aRenderable