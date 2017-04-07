tests
testCollapse

	self
		assert: BootstrapCssStyles collapse equals: 'collapse';
		assert: BootstrapCssStyles collapsing equals: 'collapsing';
		assert: BootstrapCssStyles in equals: 'in';
		assert: BootstrapCssStyles collapsed equals: 'collapsed'