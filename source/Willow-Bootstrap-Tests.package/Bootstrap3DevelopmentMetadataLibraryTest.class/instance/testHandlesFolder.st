tests
testHandlesFolder

	self
		assert: (Bootstrap3DevelopmentMetadataLibrary handlesFolder: Bootstrap3DevelopmentMetadataLibrary libraryKey);
		deny: (Bootstrap3DevelopmentMetadataLibrary handlesFolder: #files)