rendering
renderContentOn: aCanvas

	| div |

	div := aCanvas div.
	self commandToContainer applyTo: div on: aCanvas.
	div with:
		[ self renderLabelOn: aCanvas ]