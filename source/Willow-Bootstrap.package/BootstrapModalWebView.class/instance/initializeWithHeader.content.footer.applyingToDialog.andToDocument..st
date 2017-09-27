initialize
initializeWithHeader: aBootstrapModalHeader content: aBodyView footer: aBootstrapModalFooter applyingToDialog: aDialogCommand andToDocument: aModalDocumentCommand

	header := aBootstrapModalHeader.
	footer := aBootstrapModalFooter.
	dialog := GenericContainerWebView
		wrapping: (self documentWrapping: (self contentWrapping: aBodyView) applying: aModalDocumentCommand)
		applying: [ :container :constants | container addClass bootstrap modal + container disableTabCycle + (container setAttribute: 'role' to: constants bootstrap dialog) + aDialogCommand ]