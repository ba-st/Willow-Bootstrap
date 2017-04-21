tests
testVersionCompatibility

	self
		assert: Bootstrap3DeploymentMetadataLibrary version equals: Bootstrap3DevelopmentMetadataLibrary version;
		assert: Bootstrap3DeploymentMetadataLibrary version equals: Bootstrap3OnlineLibrary default version