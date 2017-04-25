tests-rendering
testRenderContentOnWithCommands

	| inputGroup html |

	inputGroup := BootstrapInputGroupWebView
		appending:
			(supplier
				inputGroupButtonWrapping:
					(supplier
						synchronicButtonLabeled: 'Go!'
						applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles buttonDefault)
						evaluating: [  ]))
		to: (supplier singleLineTextFieldApplying: CompositeComponentCommand empty)
		applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles inputGroupSmall).

	html := self render: inputGroup.

	self
		assert: html
		equals:
			'<div class="input-group input-group-sm"><input value="" name="1" class="form-control" type="text"/><span class="input-group-btn"><button name="2" class="btn btn-default" type="submit">Go!</button></span></div>'