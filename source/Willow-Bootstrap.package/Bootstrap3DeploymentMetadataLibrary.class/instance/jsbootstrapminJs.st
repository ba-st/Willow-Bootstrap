uploaded metadata
jsbootstrapminJs

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'js/bootstrap.min.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: self defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #jsbootstrapminJsContent)