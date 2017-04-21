tests
testIsForDevelopment

	self
		assert: BootstrapDatepickerDevelopmentLibrary isForDevelopment;
		deny: BootstrapDatepickerDevelopmentLibrary isForDeployment