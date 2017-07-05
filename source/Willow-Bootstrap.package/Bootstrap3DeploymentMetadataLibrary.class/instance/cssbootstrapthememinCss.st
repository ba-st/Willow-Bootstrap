uploaded metadata
cssbootstrapthememinCss

	^ WAFileLibraryResource
		filepath: 'css/bootstrap-theme.min.css'
		mimeType: (WAMimeType main: 'text' sub: 'css')
		cacheDuration: self class defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapthememinCssContent)