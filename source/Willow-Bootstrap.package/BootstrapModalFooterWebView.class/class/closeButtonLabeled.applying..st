Building
closeButtonLabeled: aRenderable applying: aComponentCommand

	^ AsynchronicButtonWebView
		labeled: aRenderable
		applying:
			[ :button :constants | button addClass bootstrap button + (button setData: constants bootstrap dismiss to: constants bootstrap modal) + aComponentCommand ]