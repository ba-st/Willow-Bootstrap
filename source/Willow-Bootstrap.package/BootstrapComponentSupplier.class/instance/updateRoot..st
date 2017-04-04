Processing
updateRoot: aRoot

	aRoot beHtml5.
	aRoot meta
		name: 'viewport';
		content: 'width=device-width, initial-scale=1.0'.
	bootstrapLibrary updateRoot: aRoot.
	bootstrapSelectLibrary updateRoot: aRoot