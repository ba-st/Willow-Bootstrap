Building
closeButtonLabeled: aRenderable applying: aComponentCommand

	^ AsynchronicButtonWebView
		labeled: aRenderable
		applying:
			(ComponentClassificationCommand toStyleWith: BootstrapCssStyles button)
				+ (ComponentMetadataCommand toDeclare: BootstrapConstants dismiss with: BootstrapConstants modal) + aComponentCommand