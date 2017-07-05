uploaded metadata
cssbootstrapmincssMap

	^ WAFileLibraryResource
		filepath: 'css/bootstrap.min.css.map'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: self class defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapmincssMapContent)