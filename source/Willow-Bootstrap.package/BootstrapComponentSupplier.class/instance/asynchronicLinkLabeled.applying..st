Supplying
asynchronicLinkLabeled: aRenderable applying: aComponentCommand

	^ AsynchronicLinkWebView
		labeled: aRenderable
		applying: [ :anchor | anchor addClass bootstrap button + aComponentCommand ]