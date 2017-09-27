rendering
renderContentOn: aCanvas

	| button |

	button := aCanvas button.
	button bePush.
	self buttonCommand applyTo: button on: aCanvas.
	button with: [ self renderIconOn: aCanvas ]