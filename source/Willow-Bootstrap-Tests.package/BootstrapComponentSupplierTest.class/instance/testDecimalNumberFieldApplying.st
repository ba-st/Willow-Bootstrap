tests-Supplying
testDecimalNumberFieldApplying

	| supplier field html |

	supplier := BootstrapComponentSupplier online.

	field := supplier decimalNumberFieldApplying: CompositeComponentCommand empty.

	html := self render: field.

	self assert: html equals: '<input value="" name="1" class="form-control text-right" type="number"/>'