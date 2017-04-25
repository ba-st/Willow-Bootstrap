rendering
renderContentOn: aCanvas

	| button |

	button := aCanvas button.
	button
		bePush;
		class: BootstrapCssStyles navbarToggle;
		class: BootstrapCssStyles collapsed.
	self renderMetadataFor: button on: aCanvas.
	(ComponentAccessibilityEnrichmentCommand toDeclare: 'expanded' with: 'false') applyTo: button on: aCanvas.
	button with: [ self renderIconOn: aCanvas ]