tests
testRenderPanelWithTables

	| panel html table |

	table := TableWebView
		headedDefinedBy: (Array with: (WebTableColumnRenderer titled: 'First Name' renderingItemWith: [ :item | item first ]))
		applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles table).

	panel := supplier panelBuilder
		headingDisplaying: 'Panel heading';
		wrapping: 'Panel content.';
		withTable: table;
		buildApplying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles panelDefault).

	html := self render: panel.

	self
		assert: html
		equals:
			'<div class="panel panel-default"><div class="panel-heading">Panel heading</div><div class="panel-body">Panel content.</div><table id="table-id1" class="table"><thead><th>First Name</th></thead><tbody></tbody></table></div>'.

	panel := supplier panelBuilder
		headingDisplaying: 'Panel heading';
		withTable: table;
		buildApplying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles panelDefault).
	html := self render: panel.

	self
		assert: html
		equals: '<div class="panel panel-default"><div class="panel-heading">Panel heading</div><table id="table-id1" class="table"><thead><th>First Name</th></thead><tbody></tbody></table></div>'