tests-rendering
testRenderContentOnWhenOnlyPreprended

	| inputGroup html |

	inputGroup := BootstrapInputGroupWebView
		prepending: (supplier inputGroupAddOnWrapping: 'http://')
		to: (supplier singleLineTextFieldApplying: CompositeComponentCommand empty)
		applying: CompositeComponentCommand empty.

	html := self render: inputGroup.

	self
		assert: html
		equals: '<div class="input-group"><span class="input-group-addon">http://</span><input value="" name="1" class="form-control" type="text"/></div>'