building
buildApplying: aDocumentCommand

	^ BootstrapModalWebView
		withHeader: headerBinding content
		content: content
		footer: (BootstrapModalFooterWebView containing: additionalFooterButtons andCloseButton: footerCloseButton)
		applyingToDialog: dialogCommand
		andModalDocument: aDocumentCommand