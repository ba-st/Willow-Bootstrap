tests
testIsForDevelopment

	self
		assert: Bootstrap3DeploymentMetadataLibrary isForDeployment;
		deny: Bootstrap3DeploymentMetadataLibrary isForDevelopment