tests-rendering
testWithNonBooleanModels

	| html checkbox |

	checkbox := BootstrapCheckboxWebView onModel: 1 offModel: 2.

	html := self render: checkbox.

	self
		assert: html
			equals:
			'<div class="checkbox"><label><input checked="checked" name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>';
		assert: checkbox currentSelection equals: 1.

	checkbox toggleCurrentSelection.

	html := self render: checkbox.

	self
		assert: html
			equals:
			'<div class="checkbox"><label><input name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>';
		assert: checkbox currentSelection equals: 2