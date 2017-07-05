uploaded metadata
cssbootstrapthemeCss

	^ WAFileLibraryResource
		filepath: 'css/bootstrap-theme.css'
		mimeType: (WAMimeType main: 'text' sub: 'css')
		cacheDuration: self class defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapthemeCssContent)