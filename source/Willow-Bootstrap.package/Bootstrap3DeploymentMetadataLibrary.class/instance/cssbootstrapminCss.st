uploaded metadata
cssbootstrapminCss

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'css/bootstrap.min.css'
		mimeType: (WAMimeType main: 'text' sub: 'css')
		cacheDuration: self defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapminCssContent)