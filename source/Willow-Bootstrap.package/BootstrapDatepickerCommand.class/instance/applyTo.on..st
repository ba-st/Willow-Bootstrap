processing
applyTo: aComponent on: aCanvas

	(ComponentMetadataCommand
		toDeclare: 'provide'
		with: BootstrapDatepickerConstants datepicker) applyTo: aComponent on: aCanvas.
	additionalCommand applyTo: aComponent on: aCanvas