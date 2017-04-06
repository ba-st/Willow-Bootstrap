private-rendering
renderMetadataFor: button on: aCanvas

	(ComponentMetadataCommand toDeclare: BootstrapConstants toggle with: BootstrapCssStyles collapse) applyTo: button on: aCanvas.
	(ComponentMetadataCommand toDeclare: BootstrapConstants target with: targetIdentifier) applyTo: button on: aCanvas