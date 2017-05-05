Processing
updateRoot: aRoot

	aRoot beHtml5.
	aRoot meta
		responseHeaderName: 'X-UA-Compatible';
		content: 'IE=edge'.
	aRoot meta
		name: 'viewport';
		content: 'width=device-width, initial-scale=1.0'.
	bootstrapLibraries do: [ :library | library updateRoot: aRoot ].
	WillowBootstrapFileMetadataLibrary default updateRoot: aRoot