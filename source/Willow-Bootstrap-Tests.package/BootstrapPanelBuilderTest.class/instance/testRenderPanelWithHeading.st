tests
testRenderPanelWithHeading

	| panel html |

	panel := supplier panelBuilder
		headingDisplaying: 'Panel heading without title';
		wrapping: 'Panel content';
		buildApplying: [ :container | container addClass bootstrap panelDefault ].

	html := self render: panel.

	self assert: html equals: '<div class="panel panel-default"><div class="panel-heading">Panel heading without title</div><div class="panel-body">Panel content</div></div>'.

	panel := supplier panelBuilder
		headingDisplaying: 'Panel title' withLevel: 3;
		wrapping: 'Panel content';
		buildApplying: [ :container | container addClass bootstrap panelDefault ].
	html := self render: panel.

	self assert: html equals: '<div class="panel panel-default"><div class="panel-heading"><h3 class="panel-title">Panel title</h3></div><div class="panel-body">Panel content</div></div>'