tests-Supplying
testTableBuilder

	| supplier table html |

	supplier := BootstrapComponentSupplier online.

	table := supplier tableBuilder
		addColumnTitled: 'Number' rendering: [ :number | number ];
		build.

	table changeContentsTo: #(1 2 3).

	html := self render: table.

	self
		assert: html
		equals:
			'<table id="table-id1" class="table"><thead><th>Number</th></thead><tbody><tr><td>1</td></tr><tr><td>2</td></tr><tr><td>3</td></tr></tbody></table>'