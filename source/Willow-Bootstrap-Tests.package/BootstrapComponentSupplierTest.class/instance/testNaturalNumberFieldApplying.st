tests-Supplying
testNaturalNumberFieldApplying

	self assertRenderingOf: [ :supplier | supplier naturalNumberFieldApplying: [ :field |  ] ] equals: '<input value="" name="1" type="number" class="form-control text-right" min="0"/>'