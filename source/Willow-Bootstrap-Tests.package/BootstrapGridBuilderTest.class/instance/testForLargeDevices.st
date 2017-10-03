tests
testForLargeDevices

	| grid html |

	grid := BootstrapGridBuilder new
		addContent: 1;
		forLargeDevices;
		build.

	html := self render: grid.

	self assert: html equals: '<div class="row"><div class="col-lg-6">1</div></div>'