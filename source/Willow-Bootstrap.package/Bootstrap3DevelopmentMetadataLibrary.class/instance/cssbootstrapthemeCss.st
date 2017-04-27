uploaded metadata
cssbootstrapthemeCss

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'css/bootstrap-theme.css'
		mimeType: (WAMimeType main: 'text' sub: 'css')
		cacheDuration: self defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapthemeCssContent)