tests
testRenderPanelWithFooter

	| panel html |

	panel := supplier panelBuilder
		wrapping: 'Panel content';
		footer: 'Panel footer';
		buildApplying: [ :container | container addClass bootstrap panelDefault ].
	html := self render: panel.

	self assert: html equals: '<div class="panel panel-default"><div class="panel-body">Panel content</div><div class="panel-footer">Panel footer</div></div>'