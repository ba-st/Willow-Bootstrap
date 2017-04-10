initialize
initializeWithHeader: aBootstrapModalHeader containing: aBodyView footer: aBootstrapModalFooter applyingToDialog: aDialogCommand andToDocument: aDocumentCommand

	footer := aBootstrapModalFooter.
	dialog := GenericContainerWebView
		wrapping: (self documentWrapping: (self contentWithHeader: aBootstrapModalHeader containing: aBodyView) applying: aDocumentCommand)
		applying:
			(ComponentClassificationCommand toStyleWith: BootstrapCssStyles modal) + DisableComponentTabCycleCommand new + (ComponentAttributeCommand named: 'role' with: BootstrapConstants dialog) + aDialogCommand