private
tabTitleWith: aRenderable linkedTo: identifiedContent

	^ [ :canvas | 
	| link |

	link := canvas anchor.
	identifiedContent identifyIn: canvas.
	link url: ('#<1s>' expandMacrosWith: identifiedContent identifier).
	self setRoleWith: BootstrapConstants tab to: link on: canvas.
	(ComponentMetadataCommand toDeclare: BootstrapConstants toggle with: self dataToggleValue) applyTo: link on: canvas.
	(ComponentAccessibilityEnrichmentCommand toDeclare: 'control' with: identifiedContent identifier) applyTo: link on: canvas.
	link with: aRenderable ]