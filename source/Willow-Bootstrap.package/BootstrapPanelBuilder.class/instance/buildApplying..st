Building
buildApplying: aCommandToPanel

	^ GenericContainerWebView
		wrapping: [ :canvas | 
			self renderHeadingOn: canvas.
			self renderBodyOn: canvas.
			self renderTableOrListGroupOn: canvas.
			self renderFooterOn: canvas ]
		applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles panel) + aCommandToPanel