tests-rendering
testRenderContentOnWithContainerCommand

	| labeledView html |

	labeledView := BootstrapLabeledWebView
		applying: [ :container | container addClass bootstrap formGroupLarge ]
		displaying: 'E-Mail'
		applying: [ :label |  ]
		boundTo: (supplier singleLineTextFieldApplying: [ :field |  ])
		applying: [ :fieldContainer |  ].

	html := self render: labeledView.

	self
		assert: html
		equals:
			'<div class="form-group form-group-lg"><label for="text-id1" class="control-label">E-Mail</label><input value="" name="2" id="text-id1" class="form-control" type="text"/></div>'