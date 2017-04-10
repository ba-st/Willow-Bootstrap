Instance Creation
withHeader: aBootstrapModalHeader content: aBodyView footer: aBootstrapModalFooter applyingToDialog: aDialogCommand andModalDocument: aModalDocumentCommand

	^ self new
		initializeWithHeader: aBootstrapModalHeader
		content: aBodyView
		footer: aBootstrapModalFooter
		applyingToDialog: aDialogCommand
		andToDocument: aModalDocumentCommand