tests
testStartWeekDays

	self
		assert: BootstrapDatepickerConstants monday equals: 1;
		assert: BootstrapDatepickerConstants tuesday equals: 2;
		assert: BootstrapDatepickerConstants wednesday equals: 3;
		assert: BootstrapDatepickerConstants thursday equals: 4;
		assert: BootstrapDatepickerConstants friday equals: 5;
		assert: BootstrapDatepickerConstants saturday equals: 6;
		assert: BootstrapDatepickerConstants sunday equals: 0