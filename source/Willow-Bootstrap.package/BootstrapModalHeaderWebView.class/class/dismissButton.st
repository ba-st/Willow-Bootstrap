as yet unclassified
dismissButton

	^ AsynchronicButtonWebView
		labeled: (PhrasingContainerWebView wrapping: '×' applying: (ComponentAttributeCommand named: 'aria-hidden' with: 'true'))
		applying:
			(ComponentClassificationCommand toStyleWith: BootstrapCssStyles close)
				+ (ComponentMetadataCommand toDeclare: BootstrapConstants dismiss with: BootstrapConstants modal)
				+ (ComponentAttributeCommand named: 'aria-label' with: 'Close')