uploaded metadata
cssbootstrapCss

	^ WAFileLibraryResource
		filepath: 'css/bootstrap.css'
		mimeType: (WAMimeType main: 'text' sub: 'css')
		cacheDuration: self class defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapCssContent)