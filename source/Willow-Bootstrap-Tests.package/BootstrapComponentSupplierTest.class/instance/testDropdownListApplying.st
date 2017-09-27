tests-Supplying
testDropdownListApplying

	self
		assertRenderingOf: [ :supplier | supplier dropdownListApplying: [ :dropdownList | dropdownList setData: 'size' to: 10 ] ]
		equals: '<select name="1" class="form-control selectpicker" data-size="10" id="id2"></select><script type="text/javascript">$("#id2").selectpicker("render");</script>'