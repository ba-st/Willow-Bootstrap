tests
testForExtraSmallDevices

	| grid html |

	grid := BootstrapGridBuilder new
		addContent: 1;
		forExtraSmallDevices;
		build.

	html := self render: grid.

	self assert: html equals: '<div class="row"><div class="col-xs-6">1</div></div>'