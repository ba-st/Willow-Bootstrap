tests-Supplying
testCheckboxLabeledOnModelOffModelApplying

	self
		assertRenderingOf: [ :supplier | 
			supplier
				checkboxLabeled: 'Labelization'
				onModel: 3
				offModel: 'the off'
				applying: [ :checkbox | checkbox addClass willow ] ]
		equals: '<div class="checkbox willow"><label><input class="willow" checked="checked" name="1" type="checkbox"/><input name="2" type="hidden"/>Labelization</label></div>'