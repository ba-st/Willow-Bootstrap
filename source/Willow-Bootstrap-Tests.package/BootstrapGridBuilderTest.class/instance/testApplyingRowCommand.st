tests
testApplyingRowCommand

	| grid html |

	grid := BootstrapGridBuilder new
		columnsPerRow: 3;
		addContent: 1;
		addContent: 2;
		addContent: 3;
		addContent: 4;
		buildApplying: [ :row | row addClass bootstrap small ].

	html := self render: grid.

	self assert: html equals: '<div class="row small"><div class="col-md-4">1</div><div class="col-md-4">2</div><div class="col-md-4">3</div></div><div class="row small"><div class="col-md-4">4</div></div>'