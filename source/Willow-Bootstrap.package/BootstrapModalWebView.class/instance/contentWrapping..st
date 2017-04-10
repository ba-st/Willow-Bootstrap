private
contentWrapping: aBodyView

	^ GenericContainerWebView
		wrapping: [ :canvas | 
			canvas render: header.
			canvas div
				class: BootstrapCssStyles modalBody;
				with: [ canvas render: aBodyView ].
			canvas render: footer ]
		applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles modalContent)