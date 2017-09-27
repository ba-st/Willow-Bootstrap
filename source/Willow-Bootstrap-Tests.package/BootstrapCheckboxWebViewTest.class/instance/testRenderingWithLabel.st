tests-rendering
testRenderingWithLabel

	| html checkbox |

	checkbox := BootstrapCheckboxWebView
		labeled: 'Enable network'
		onModel: 1
		offModel: 2
		applying: [ :theCheckbox | theCheckbox addClass willow ].

	html := self render: checkbox.

	self
		assert: html
		equals:
			'<div class="checkbox willow"><label><input class="willow" checked="checked" name="1" type="checkbox"/><input name="2" type="hidden"/>Enable network</label></div>'