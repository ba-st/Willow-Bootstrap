tests-Supplying
testDecimalNumberFieldApplying

	self assertRenderingOf: [ :supplier | supplier decimalNumberFieldApplying: [ :field |  ] ] equals: '<input value="" name="1" type="number" class="form-control text-right"/>'