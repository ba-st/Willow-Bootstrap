private
identifiedViewContaining: aNavigationContent

	| command |

	command := (ComponentAttributeCommand named: BootstrapConstants role with: BootstrapConstants tabpanel) + (ComponentClassificationCommand toStyleWith: BootstrapCssStyles tabPane).
	"The first tab content needs to be styled as active in order to function properly"
	contents ifEmpty: [ command := command + (ComponentClassificationCommand toStyleWith: BootstrapCssStyles active) ].

	^ IdentifiedWebView forDivNamed: self dataToggleValue containing: aNavigationContent applying: command