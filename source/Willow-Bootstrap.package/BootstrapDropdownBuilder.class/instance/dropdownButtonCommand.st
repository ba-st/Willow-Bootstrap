private
dropdownButtonCommand

	^ (ComponentClassificationCommand toStyleWith: BootstrapCssStyles dropdownToggle) + (ComponentMetadataCommand toDeclare: BootstrapConstants toggle with: BootstrapConstants dropdown)
		+ (ComponentAccessibilityEnrichmentCommand toDeclare: 'haspopup' with: 'true') + (ComponentAccessibilityEnrichmentCommand toDeclare: 'expanded' with: 'false')