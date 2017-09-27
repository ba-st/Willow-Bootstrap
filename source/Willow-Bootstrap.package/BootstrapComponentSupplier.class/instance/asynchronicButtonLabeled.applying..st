Supplying
asynchronicButtonLabeled: aRenderable applying: aComponentCommand

	^ AsynchronicButtonWebView labeled: aRenderable applying: [ :button | button addClass bootstrap button + aComponentCommand ]