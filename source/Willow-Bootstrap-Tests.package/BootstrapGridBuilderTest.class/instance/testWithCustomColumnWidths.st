tests
testWithCustomColumnWidths

	| grid html |

	grid := BootstrapGridBuilder new
		columnsWidths: #(1 4 7);
		addContent: 1;
		addContent: 2;
		addContent: 3;
		addContent: 4;
		build.

	html := self render: grid.

	self assert: html equals: '<div class="row"><div class="col-md-1">1</div><div class="col-md-4">2</div><div class="col-md-7">3</div></div><div class="row"><div class="col-md-1">4</div></div>'