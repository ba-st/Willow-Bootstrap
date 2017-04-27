uploaded metadata
fontsglyphiconshalflingsregularWoff2

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'fonts/glyphicons-halflings-regular.woff2'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: self defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #fontsglyphiconshalflingsregularWoff2Content)