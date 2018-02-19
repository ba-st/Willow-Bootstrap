Supplying
synchronicButtonLabeled: aRenderable applying: aComponentCommand

	^ SynchronicSubmitButtonWebView
		labeled: aRenderable
		applying: [ :field | field addClass bootstrap button + aComponentCommand ]