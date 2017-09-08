tests
testDataAPI

	self
		assert: BootstrapConstants dismiss equals: 'dismiss';
		assert: BootstrapConstants parent equals: 'parent';
		assert: BootstrapConstants target equals: 'target';
		assert: BootstrapConstants toggle equals: 'toggle'.

	self
		assert: BootstrapConstants click equals: 'click';
		assert: BootstrapConstants focus equals: 'focus';
		assert: BootstrapConstants hover equals: 'hover';
		assert: BootstrapConstants manual equals: 'manual';
		assert: BootstrapConstants buttons equals: 'buttons'