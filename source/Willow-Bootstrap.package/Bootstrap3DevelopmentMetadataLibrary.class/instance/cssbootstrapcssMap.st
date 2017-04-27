uploaded metadata
cssbootstrapcssMap

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'css/bootstrap.css.map'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: self defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapcssMapContent)