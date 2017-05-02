tests
testRenderingBasicExample

	| panel html |

	panel := supplier panelBuilder
		wrapping: 'Basic panel example';
		buildApplying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles panelDefault).

	html := self render: panel.

	self assert: html equals: '<div class="panel panel-default"><div class="panel-body">Basic panel example</div></div>'