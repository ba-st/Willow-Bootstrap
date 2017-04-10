Instance Creation
withHeader: aBootstrapModalHeader containing: aBodyView footer: aBootstrapModalFooter applyingToDialog: aDialogCommand andToDocument: aDocumentCommand

	^ self new
		initializeWithHeader: aBootstrapModalHeader
		containing: aBodyView
		footer: aBootstrapModalFooter
		applyingToDialog: aDialogCommand
		andToDocument: aDocumentCommand