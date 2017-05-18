initialization
initializeDismissing: aContainerType

	button := AsynchronicButtonWebView
		labeled: (PhrasingContainerWebView wrapping: '×' applying: (ComponentAccessibilityEnrichmentCommand toDeclare: 'hidden' with: 'true'))
		applying:
			(ComponentClassificationCommand toStyleWith: BootstrapCssStyles close) + (ComponentMetadataCommand toDeclare: BootstrapConstants dismiss with: aContainerType)
				+ (ComponentAccessibilityEnrichmentCommand toDeclare: 'label' with: 'Close')