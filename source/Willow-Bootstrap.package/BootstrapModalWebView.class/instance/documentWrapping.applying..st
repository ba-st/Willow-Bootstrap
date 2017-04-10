private
documentWrapping: content applying: aDocumentCommand

	^ GenericContainerWebView
		wrapping: content
		applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles modalDialog) + (ComponentAttributeCommand named: 'role' with: BootstrapConstants document) + aDocumentCommand