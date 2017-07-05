uploaded metadata
jsbootstrapJs

	^ WAFileLibraryResource
		filepath: 'js/bootstrap.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: self class defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #jsbootstrapJsContent)