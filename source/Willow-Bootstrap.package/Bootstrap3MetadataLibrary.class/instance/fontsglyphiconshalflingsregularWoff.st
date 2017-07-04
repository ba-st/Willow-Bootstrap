uploaded metadata
fontsglyphiconshalflingsregularWoff

	^ WAFileLibraryResource
		filepath: 'fonts/glyphicons-halflings-regular.woff'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: self class defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #fontsglyphiconshalflingsregularWoffContent)