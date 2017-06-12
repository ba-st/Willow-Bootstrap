tests-Supplying
testNaturalNumberFieldApplying

	| supplier field html |

	supplier := BootstrapComponentSupplier online.

	field := supplier naturalNumberFieldApplying: CompositeComponentCommand empty.

	html := self render: field.

	self assert: html equals: '<input value="" name="1" class="form-control text-right" min="0" type="number"/>'