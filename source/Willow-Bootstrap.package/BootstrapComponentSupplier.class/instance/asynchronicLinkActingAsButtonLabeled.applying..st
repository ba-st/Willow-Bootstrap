Supplying - Non Portable
asynchronicLinkActingAsButtonLabeled: aRenderable applying: aComponentCommand

	^ self
		asynchronicLinkLabeled: aRenderable
		applying: [ :anchor :constants | (anchor setAttribute: constants bootstrap role to: constants bootstrap button) + anchor addClass bootstrap button + aComponentCommand ]