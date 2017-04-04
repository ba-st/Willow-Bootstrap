tests
testTables

	self
		assert: BootstrapCssStyles table equals: 'table';
		assert: BootstrapCssStyles tableBordered equals: 'table-bordered';
		assert: BootstrapCssStyles tableCondensed equals: 'table-condensed';
		assert: BootstrapCssStyles tableHover equals: 'table-hover';
		assert: BootstrapCssStyles tableResponsive equals: 'table-responsive';
		assert: BootstrapCssStyles tableStriped equals: 'table-striped'.


	self
		assert: BootstrapCssStyles danger equals: 'danger';
		assert: BootstrapCssStyles info equals: 'info';
		assert: BootstrapCssStyles success equals: 'success';
		assert: BootstrapCssStyles warning equals: 'warning'