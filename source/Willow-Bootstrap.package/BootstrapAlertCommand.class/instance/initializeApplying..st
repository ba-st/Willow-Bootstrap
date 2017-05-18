initialization
initializeApplying: aContextualClassificationCommand

	classificationCommand := (ComponentClassificationCommand toStyleWith: BootstrapCssStyles alert) + aContextualClassificationCommand
		+ (ComponentAttributeCommand named: BootstrapConstants role with: BootstrapCssStyles alert)