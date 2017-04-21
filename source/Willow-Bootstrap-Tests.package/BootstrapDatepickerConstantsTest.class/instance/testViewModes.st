tests
testViewModes

	self
		assert: BootstrapDatepickerConstants days equals: 'days';
		assert: BootstrapDatepickerConstants months equals: 'months';
		assert: BootstrapDatepickerConstants years equals: 'years';
		assert: BootstrapDatepickerConstants decades equals: 'decades';
		assert: BootstrapDatepickerConstants centuries equals: 'centuries'.

	self
		assert: BootstrapDatepickerConstants month equals: 'month';
		assert: BootstrapDatepickerConstants year equals: 'year';
		assert: BootstrapDatepickerConstants decade equals: 'decade';
		assert: BootstrapDatepickerConstants century equals: 'century';
		assert: BootstrapDatepickerConstants millennium equals: 'millennium'.

	self assert: BootstrapDatepickerConstants linked equals: 'linked'