tests
testVersionCompatibility

	self
		assert: BootstrapTypeaheadDeploymentLibrary version equals: BootstrapTypeaheadDevelopmentLibrary version;
		assert: BootstrapTypeaheadDeploymentLibrary version equals: BootstrapTypeaheadOnlineLibrary default version