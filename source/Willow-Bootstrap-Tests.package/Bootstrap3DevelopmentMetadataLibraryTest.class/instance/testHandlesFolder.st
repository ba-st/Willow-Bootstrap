tests
testHandlesFolder

	self
		assert: (Bootstrap3DevelopmentMetadataLibrary handlesFolder: Bootstrap3DevelopmentMetadataLibrary folderName);
		deny: (Bootstrap3DevelopmentMetadataLibrary handlesFolder: #files)