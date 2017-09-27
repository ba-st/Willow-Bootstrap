tests-Supplying
testDateFieldApplying

	self
		assertRenderingOf: [ :supplier | supplier dateFieldApplying: [ :field | field addClass bootstrap textCenter ] ]
		equals: '<input value="" name="1" class="form-control text-center" maxlength="10" data-provide="datepicker" type="text"/>'