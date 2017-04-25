tests-rendering
testRenderContentOn

	| inputGroup html |

	inputGroup := BootstrapInputGroupWebView
		wrapping: (supplier singleLineTextFieldApplying: CompositeComponentCommand empty)
		between: (supplier inputGroupAddOnWrapping: 'http://')
		and:
			(supplier inputGroupButtonWrapping: (supplier synchronicButtonLabeled: 'Go!' applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles buttonDefault) evaluating: [  ]))
		applying: CompositeComponentCommand empty.

	html := self render: inputGroup.

	self
		assert: html
		equals:
			'<div class="input-group"><span class="input-group-addon">http://</span><input value="" name="1" class="form-control" type="text"/><span class="input-group-btn"><button name="2" class="btn btn-default" type="submit">Go!</button></span></div>'