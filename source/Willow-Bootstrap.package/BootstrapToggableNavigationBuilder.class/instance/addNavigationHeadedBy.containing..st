private
addNavigationHeadedBy: aRenderable containing: aNavigationContent

	| identifiedContent headerAnchor commandToIdentified |

	commandToIdentified := (ComponentAttributeCommand named: BootstrapConstants role with: BootstrapConstants tabpanel) + (ComponentClassificationCommand toStyleWith: BootstrapCssStyles tabPane).

	contents ifEmpty: [ commandToIdentified := commandToIdentified + (ComponentClassificationCommand toStyleWith: BootstrapCssStyles active) ].

	identifiedContent := IdentifiedWebView forDivNamed: self dataToggleValue containing: aNavigationContent applying: commandToIdentified.

	headerAnchor := [ :canvas | 
	| anchor |

	anchor := canvas anchor.
	identifiedContent identifyIn: canvas.
	anchor url: ('#<1s>' expandMacrosWith: identifiedContent identifier).
	self setRoleWith: BootstrapConstants tab to: anchor on: canvas.
	(ComponentMetadataCommand toDeclare: BootstrapConstants toggle with: self dataToggleValue) applyTo: anchor on: canvas.
	(ComponentAccessibilityEnrichmentCommand toDeclare: 'control' with: identifiedContent identifier) applyTo: anchor on: canvas.
	anchor with: aRenderable ].

	headers add: headerAnchor.
	contents add: identifiedContent