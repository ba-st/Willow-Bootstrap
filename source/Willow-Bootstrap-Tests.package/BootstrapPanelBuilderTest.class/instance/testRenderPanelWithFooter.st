tests
testRenderPanelWithFooter

	| panel html |

	panel := supplier panelBuilder
		wrapping: 'Panel content';
		footer: 'Panel footer';
		buildApplying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles panelDefault).
	html := self render: panel.

	self assert: html equals: '<div class="panel panel-default"><div class="panel-body">Panel content</div><div class="panel-footer">Panel footer</div></div>'