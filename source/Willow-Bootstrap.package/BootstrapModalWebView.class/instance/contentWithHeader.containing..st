private
contentWithHeader: aBootstrapModalHeader containing: aBodyView

	^ GenericContainerWebView
		wrapping: [ :canvas | 
			canvas render: aBootstrapModalHeader.
			canvas div
				class: BootstrapCssStyles modalBody;
				with: [ canvas render: aBodyView ].
			canvas render: footer ]
		applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles modalContent)