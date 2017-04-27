tests-Supplying
testAsynchronicButtonLabeledApplying

	| supplier button html |

	supplier := BootstrapComponentSupplier online.

	button := supplier asynchronicButtonLabeled: 'Buy' applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles buttonPrimary).

	html := self render: button.

	self assert: html equals: '<button class="btn btn-primary" type="button">Buy</button>'