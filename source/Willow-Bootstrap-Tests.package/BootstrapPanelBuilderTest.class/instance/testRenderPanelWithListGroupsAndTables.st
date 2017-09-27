tests
testRenderPanelWithListGroupsAndTables

	| panel html listGroup table |

	table := supplier tableBuilder
		addColumnTitled: 'First Name' rendering: [ :item | item first ];
		build.

	listGroup := supplier unorderedListApplying: [ :list |  ] listing: #(1 2) applyingToEach: [ :listItem |  ].

	panel := supplier panelBuilder
		headingDisplaying: 'Panel heading';
		wrapping: 'Panel content.';
		withListGroup: listGroup;
		withTable: table;
		buildApplying: [ :container | container addClass bootstrap panelDefault ].

	html := self render: panel.

	self
		assert: html
		equals:
			'<div class="panel panel-default"><div class="panel-heading">Panel heading</div><div class="panel-body">Panel content.</div><ul class="list-group"><li class="list-group-item">1</li><li class="list-group-item">2</li></ul><table id="table-id1" class="table"><thead><th>First Name</th></thead><tbody></tbody></table></div>'