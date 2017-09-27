Supplying
asynchronicAnchorLabeled: aRenderable applying: aComponentCommand

	^ AsynchronicAnchorWebView
		labeled: aRenderable
		applying: [ :anchor | anchor addClass bootstrap button + aComponentCommand ]