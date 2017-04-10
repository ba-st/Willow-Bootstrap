tests
testModal

	self
		assert: BootstrapCssStyles modal equals: 'modal';
		assert: BootstrapCssStyles modalBackdrop equals: 'modal-backdrop';
		assert: BootstrapCssStyles modalBody equals: 'modal-body';
		assert: BootstrapCssStyles modalContent equals: 'modal-content';
		assert: BootstrapCssStyles modalDialog equals: 'modal-dialog';
		assert: BootstrapCssStyles modalFooter equals: 'modal-footer';
		assert: BootstrapCssStyles modalHeader equals: 'modal-header';
		assert: BootstrapCssStyles modalLarge equals: 'modal-lg';
		assert: BootstrapCssStyles modalOpen equals: 'modal-open';
		assert: BootstrapCssStyles modalSmall equals: 'modal-sm';
		assert: BootstrapCssStyles modalTitle equals: 'modal-title'