uploaded metadata
cssbootstrapthememincssMap

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'css/bootstrap-theme.min.css.map'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: self defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapthememincssMapContent)