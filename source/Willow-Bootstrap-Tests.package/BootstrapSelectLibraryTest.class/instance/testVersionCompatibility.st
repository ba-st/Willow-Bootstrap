tests
testVersionCompatibility

	self
		assert: BootstrapSelectDeploymentLibrary version equals: BootstrapSelectDevelopmentLibrary version;
		assert: BootstrapSelectDeploymentLibrary version equals: BootstrapSelectOnlineLibrary default version