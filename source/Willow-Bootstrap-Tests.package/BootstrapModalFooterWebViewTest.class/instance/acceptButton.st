private
acceptButton

	^ AsynchronicButtonWebView
		labeled: 'Accept'
		applying:
			(ComponentClassificationCommand
				toStyleWithAll:
					{BootstrapCssStyles button.
					BootstrapCssStyles buttonPrimary})