tests-Supplying
testCheckboxLabeledOnModelOffModelApplying

	| supplier checkbox html |

	supplier := BootstrapComponentSupplier online.

	checkbox := supplier
		checkboxLabeled: 'Labelization'
		onModel: 3
		offModel: 'the off'
		applying: (ComponentClassificationCommand toStyleWith: WillowCssStyles willow).

	html := self render: checkbox.

	self
		assert: html
		equals:
			'<div class="checkbox willow"><label><input class="willow" checked="checked" name="1" type="checkbox"/><input name="2" type="hidden"/>Labelization</label></div>'