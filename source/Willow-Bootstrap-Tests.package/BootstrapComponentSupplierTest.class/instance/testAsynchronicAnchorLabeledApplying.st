tests-Supplying
testAsynchronicAnchorLabeledApplying

	| supplier anchor html |

	supplier := BootstrapComponentSupplier online.

	anchor := supplier asynchronicAnchorLabeled: 'Buy' applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles buttonPrimary).

	html := self render: anchor.

	self assert: html equals: '<a role="button" class="btn btn-primary">Buy</a>'