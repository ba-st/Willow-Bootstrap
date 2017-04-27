tests
testIsForDevelopment

	self
		assert: Bootstrap3DevelopmentMetadataLibrary isForDevelopment;
		deny: Bootstrap3DevelopmentMetadataLibrary isForDeployment