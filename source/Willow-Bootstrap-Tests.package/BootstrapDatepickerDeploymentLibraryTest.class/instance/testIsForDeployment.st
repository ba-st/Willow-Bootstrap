tests
testIsForDeployment

	self
		assert: BootstrapDatepickerDeploymentLibrary isForDeployment;
		deny: BootstrapDatepickerDeploymentLibrary isForDevelopment