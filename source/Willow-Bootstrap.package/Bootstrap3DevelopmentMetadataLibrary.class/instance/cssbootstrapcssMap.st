uploaded metadata
cssbootstrapcssMap

	^ WAFileLibraryResource
		filepath: 'css/bootstrap.css.map'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: self class defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapcssMapContent)