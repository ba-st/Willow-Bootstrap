uploaded metadata
fontsglyphiconshalflingsregularWoff2

	^ WAFileLibraryResource
		filepath: 'fonts/glyphicons-halflings-regular.woff2'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: self class defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #fontsglyphiconshalflingsregularWoff2Content)