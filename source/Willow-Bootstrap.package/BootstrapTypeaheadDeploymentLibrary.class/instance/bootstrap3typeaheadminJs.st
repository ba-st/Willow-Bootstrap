uploaded metadata
bootstrap3typeaheadminJs

	^ WAFileLibraryResource
		filepath: 'bootstrap3-typeahead.min.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: self class defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #bootstrap3typeaheadminJsContent)