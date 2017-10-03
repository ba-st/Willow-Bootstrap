tests
testApplyingCellCommand

	| grid html |

	grid := BootstrapGridBuilder new
		addContent: 1;
		addContent: 2;
		addContent: 3;
		addContent: 4;
		applyingToCells: [ :cell | cell addClass bootstrap small ];
		build.

	html := self render: grid.

	self
		assert: html
		equals: '<div class="row"><div class="col-md-6 small">1</div><div class="col-md-6 small">2</div></div><div class="row"><div class="col-md-6 small">3</div><div class="col-md-6 small">4</div></div>'