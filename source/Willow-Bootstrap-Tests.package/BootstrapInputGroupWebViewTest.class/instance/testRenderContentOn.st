tests-rendering
testRenderContentOn

	| inputGroup html |

	inputGroup := BootstrapInputGroupWebView
		wrapping: (supplier singleLineTextFieldApplying: [ :field |  ])
		between: (supplier inputGroupAddOnWrapping: 'http://')
		and: (supplier inputGroupButtonWrapping: (supplier synchronicButtonLabeled: 'Go!' applying: [ :button | button addClass bootstrap buttonDefault ] evaluating: [  ]))
		applying: [ :group |  ].

	html := self render: inputGroup.

	self
		assert: html
		equals:
			'<div class="input-group"><span class="input-group-addon">http://</span><input value="" name="1" class="form-control" type="text"/><span class="input-group-btn"><button name="2" class="btn btn-default" type="submit">Go!</button></span></div>'