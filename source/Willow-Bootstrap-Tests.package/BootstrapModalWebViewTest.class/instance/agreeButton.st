private
agreeButton

	^ AsynchronicButtonWebView
		labeled: 'Agree'
		applying:
			(ComponentClassificationCommand
				toStyleWithAll:
					{BootstrapCssStyles button.
					BootstrapCssStyles buttonDefault})