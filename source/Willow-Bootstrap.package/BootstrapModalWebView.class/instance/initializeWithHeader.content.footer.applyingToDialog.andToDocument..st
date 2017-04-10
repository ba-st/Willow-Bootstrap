initialize
initializeWithHeader: aBootstrapModalHeader content: aBodyView footer: aBootstrapModalFooter applyingToDialog: aDialogCommand andToDocument: aModalDocumentCommand

	header := aBootstrapModalHeader.
	footer := aBootstrapModalFooter.
	dialog := GenericContainerWebView
		wrapping: (self documentWrapping: (self contentWrapping: aBodyView) applying: aModalDocumentCommand)
		applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles modal) + DisableComponentTabCycleCommand new + (ComponentAttributeCommand named: 'role' with: BootstrapConstants dialog) + aDialogCommand