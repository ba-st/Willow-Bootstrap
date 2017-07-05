uploaded metadata
fontsglyphiconshalflingsregularTtf

	^ WAFileLibraryResource
		filepath: 'fonts/glyphicons-halflings-regular.ttf'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: self class defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #fontsglyphiconshalflingsregularTtfContent)