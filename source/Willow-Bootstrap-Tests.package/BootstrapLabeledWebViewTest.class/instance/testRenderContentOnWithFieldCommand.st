tests-rendering
testRenderContentOnWithFieldCommand

	| labeledView html |

	labeledView := BootstrapLabeledWebView
		displaying: 'E-Mail'
		applying: (ComponentClassificationCommand toStyleWith: (BootstrapCssStyles columnMedium: 2))
		boundTo: (supplier singleLineTextFieldApplying: CompositeComponentCommand empty)
		applying: (ComponentClassificationCommand toStyleWith: (BootstrapCssStyles columnMedium: 10)).

	html := self render: labeledView.

	self
		assert: html
		equals:
			'<div class="form-group"><label for="text-id1" class="control-label col-md-2">E-Mail</label><div class="col-md-10"><input value="" name="2" id="text-id1" class="form-control" type="text"/></div></div>'