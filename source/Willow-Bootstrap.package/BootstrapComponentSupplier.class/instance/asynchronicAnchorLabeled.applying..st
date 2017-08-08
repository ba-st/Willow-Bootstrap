Supplying
asynchronicAnchorLabeled: aRenderable applying: aComponentCommand

	^ AsynchronicAnchorWebView
		labeled: aRenderable
		applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles button) + aComponentCommand