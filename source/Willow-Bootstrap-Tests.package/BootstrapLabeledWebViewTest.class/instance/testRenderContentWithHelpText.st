tests-rendering
testRenderContentWithHelpText

	| labeledView html |

	labeledView := BootstrapLabeledWebView
		displaying: 'E-Mail'
		applying: [ :label |  ]
		boundTo: (BootstrapHelpTextWebView boundTo: (supplier singleLineTextFieldApplying: [ :field |  ]) describedBy: 'A block of help text that breaks onto a new line and may extend beyond one line.')
		applying: [ :fieldContainer |  ].

	html := self render: labeledView.

	self
		assert: html
		equals:
			'<div class="form-group"><label for="text-id1" class="control-label">E-Mail</label><input value="" name="2" id="text-id1" class="form-control" type="text"/><span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span></div>'