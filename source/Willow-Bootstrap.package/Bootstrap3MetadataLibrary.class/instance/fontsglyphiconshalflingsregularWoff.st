uploaded metadata
fontsglyphiconshalflingsregularWoff

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'fonts/glyphicons-halflings-regular.woff'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: self defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #fontsglyphiconshalflingsregularWoffContent)