uploaded metadata
cssbootstrapminCss

	^ WAFileLibraryResource
		filepath: 'css/bootstrap.min.css'
		mimeType: (WAMimeType main: 'text' sub: 'css')
		cacheDuration: self class defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapminCssContent)