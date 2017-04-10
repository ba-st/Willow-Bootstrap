private
takeMySoulButton

	^ AsynchronicButtonWebView
		labeled: 'Just take my soul'
		applying:
			(ComponentClassificationCommand
				toStyleWithAll:
					{BootstrapCssStyles button.
					BootstrapCssStyles buttonPrimary})