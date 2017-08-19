tests-rendering
testRenderingAfterUpdatingModel

	| html checkbox |

	checkbox := BootstrapCheckboxWebView
		onModel: 1
		offModel: 2
		applying: (ComponentClassificationCommand toStyleWith: 'dark').

	checkbox selectOffModel.
	html := self render: checkbox.
	self
		assert: html
		equals:
			'<div class="checkbox dark"><label><input class="dark" name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>'.

	checkbox selectOnModel.
	html := self render: checkbox.
	self
		assert: html
		equals:
			'<div class="checkbox dark"><label><input class="dark" checked="checked" name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>'