uploaded metadata
cssbootstrapthememincssMap

	^ WAFileLibraryResource
		filepath: 'css/bootstrap-theme.min.css.map'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: self class defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapthememincssMapContent)