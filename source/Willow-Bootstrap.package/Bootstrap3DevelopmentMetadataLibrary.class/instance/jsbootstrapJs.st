uploaded metadata
jsbootstrapJs

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'js/bootstrap.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: self defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #jsbootstrapJsContent)