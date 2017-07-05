uploaded metadata
fontsglyphiconshalflingsregularEot

	^ WAFileLibraryResource
		filepath: 'fonts/glyphicons-halflings-regular.eot'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: self class defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #fontsglyphiconshalflingsregularEotContent)