Accessing
asynchronicButtonLabeled: aRenderable applying: aComponentCommand

	^ AsynchronicButtonWebView labeled: aRenderable applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles button) + aComponentCommand