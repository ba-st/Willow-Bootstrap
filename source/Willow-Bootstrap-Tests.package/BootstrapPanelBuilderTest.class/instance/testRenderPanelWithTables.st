tests
testRenderPanelWithTables

	| panel html table |

	table := supplier tableBuilder
		addColumnTitled: 'First Name' rendering: [ :item | item first ];
		build.

	panel := supplier panelBuilder
		headingDisplaying: 'Panel heading';
		wrapping: 'Panel content.';
		withTable: table;
		buildApplying: [ :container | container addClass bootstrap panelDefault ].

	html := self render: panel.

	self
		assert: html
		equals:
			'<div class="panel panel-default"><div class="panel-heading">Panel heading</div><div class="panel-body">Panel content.</div><table id="table-id1" class="table"><thead><th>First Name</th></thead><tbody></tbody></table></div>'.

	panel := supplier panelBuilder
		headingDisplaying: 'Panel heading';
		withTable: table;
		buildApplying: [ :container | container addClass bootstrap panelDefault ].
	html := self render: panel.

	self
		assert: html
		equals:
			'<div class="panel panel-default"><div class="panel-heading">Panel heading</div><table id="table-id1" class="table"><thead><th>First Name</th></thead><tbody></tbody></table></div>'