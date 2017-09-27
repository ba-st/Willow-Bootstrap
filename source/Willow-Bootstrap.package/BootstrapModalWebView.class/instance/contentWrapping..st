private
contentWrapping: aBodyView

	^ GenericContainerWebView
		wrapping: [ :canvas | 
			canvas render: header.
			canvas div
				class: BootstrapCssStyles modalBody;
				with: aBodyView.
			canvas render: footer ]
		applying: [ :container | container addClass bootstrap modalContent ]