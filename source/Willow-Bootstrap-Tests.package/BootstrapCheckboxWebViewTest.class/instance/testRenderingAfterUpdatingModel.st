tests-rendering
testRenderingAfterUpdatingModel

	| html checkbox |

	checkbox := BootstrapCheckboxWebView onModel: 1 offModel: 2 applying: [ :theCheckbox | theCheckbox addClass willow ].

	checkbox selectOffModel.
	html := self render: checkbox.
	self
		assert: html
		equals: '<div class="checkbox willow"><label><input class="willow" name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>'.

	checkbox selectOnModel.
	html := self render: checkbox.
	self
		assert: html
		equals: '<div class="checkbox willow"><label><input class="willow" checked="checked" name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>'