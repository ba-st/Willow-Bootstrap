tests
testRenderContextualAlternatives

	| panel html |

	panel := supplier panelBuilder
		headingDisplaying: 'Panel title' withLevel: 3;
		wrapping: 'Panel content';
		buildApplying: [ :container | container addClass bootstrap panelPrimary ].
	html := self render: panel.

	self assert: html equals: '<div class="panel panel-primary"><div class="panel-heading"><h3 class="panel-title">Panel title</h3></div><div class="panel-body">Panel content</div></div>'