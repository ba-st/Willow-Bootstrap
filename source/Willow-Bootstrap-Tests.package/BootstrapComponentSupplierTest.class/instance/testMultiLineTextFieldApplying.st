tests-Supplying
testMultiLineTextFieldApplying

	self
		assertRenderingOf: [ :supplier | supplier multiLineTextFieldApplying: [ :field | field addClass bootstrap textCenter ] ]
		equals: '<textarea rows="auto" cols="auto" name="1" class="form-control text-center"></textarea>'