uploaded metadata
fontsglyphiconshalflingsregularSvg

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'fonts/glyphicons-halflings-regular.svg'
		mimeType: (WAMimeType main: 'image' sub: 'svg+xml')
		cacheDuration: self defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #fontsglyphiconshalflingsregularSvgContent)