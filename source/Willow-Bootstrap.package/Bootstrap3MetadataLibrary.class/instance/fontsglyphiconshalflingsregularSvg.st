uploaded metadata
fontsglyphiconshalflingsregularSvg

	^ WAFileLibraryResource
		filepath: 'fonts/glyphicons-halflings-regular.svg'
		mimeType: (WAMimeType main: 'image' sub: 'svg+xml')
		cacheDuration: self class defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #fontsglyphiconshalflingsregularSvgContent)