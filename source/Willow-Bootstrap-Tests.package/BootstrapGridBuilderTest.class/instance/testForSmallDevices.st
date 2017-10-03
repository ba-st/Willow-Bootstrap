tests
testForSmallDevices

	| grid html |

	grid := BootstrapComponentSupplier online gridBuilder
		addContent: 1;
		forSmallDevices;
		build.

	html := self render: grid.

	self assert: html equals: '<div class="row"><div class="col-sm-6">1</div></div>'