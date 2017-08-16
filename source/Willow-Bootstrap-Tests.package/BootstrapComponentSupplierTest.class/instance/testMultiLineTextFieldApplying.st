tests-Supplying
testMultiLineTextFieldApplying

	| supplier field html |

	supplier := BootstrapComponentSupplier online.

	field := supplier multiLineTextFieldApplying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles textCenter).

	html := self render: field.

	self assert: html equals: '<textarea rows="auto" cols="auto" name="1" class="form-control text-center"></textarea>'