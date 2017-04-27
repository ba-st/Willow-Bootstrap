tests-Supplying
testDateFieldApplying

	| supplier field html |

	supplier := BootstrapComponentSupplier online.

	field := supplier dateFieldApplying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles textCenter).

	html := self render: field.

	self
		assert: html
		equals: '<input value="" name="1" class="form-control text-center" maxlength="10" data-provide="datepicker" type="text"/>'