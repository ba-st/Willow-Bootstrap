uploaded metadata
cssbootstrapmincssMap

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'css/bootstrap.min.css.map'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: self defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapmincssMapContent)