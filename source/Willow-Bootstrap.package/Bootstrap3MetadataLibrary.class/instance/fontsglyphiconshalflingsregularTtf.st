uploaded metadata
fontsglyphiconshalflingsregularTtf

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'fonts/glyphicons-halflings-regular.ttf'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: self defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #fontsglyphiconshalflingsregularTtfContent)