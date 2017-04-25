private - Instance Creation
dismissButton

	^ AsynchronicButtonWebView
		labeled: (PhrasingContainerWebView wrapping: '×' applying: (ComponentAccessibilityEnrichmentCommand toDeclare: 'hidden' with: 'true'))
		applying:
			(ComponentClassificationCommand toStyleWith: BootstrapCssStyles close) + (ComponentMetadataCommand toDeclare: BootstrapConstants dismiss with: BootstrapConstants modal)
				+ (ComponentAccessibilityEnrichmentCommand toDeclare: 'label' with: 'Close')