uploaded metadata
cssbootstrapthemecssMap

	^ WAFileLibraryResource
		filepath: 'css/bootstrap-theme.css.map'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: self class defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapthemecssMapContent)