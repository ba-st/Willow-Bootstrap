uploaded metadata
cssbootstrapthememinCss

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'css/bootstrap-theme.min.css'
		mimeType: (WAMimeType main: 'text' sub: 'css')
		cacheDuration: self defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapthememinCssContent)