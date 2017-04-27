uploaded metadata
cssbootstrapCss

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'css/bootstrap.css'
		mimeType: (WAMimeType main: 'text' sub: 'css')
		cacheDuration: self defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapCssContent)