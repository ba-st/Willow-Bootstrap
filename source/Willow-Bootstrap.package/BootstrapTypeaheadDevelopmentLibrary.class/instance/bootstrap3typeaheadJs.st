uploaded metadata
bootstrap3typeaheadJs

	^ WAFileLibraryResource
		filepath: 'bootstrap3-typeahead.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: self class defaultCacheDuration
		contents: (GRDelayedSend receiver: self selector: #bootstrap3typeaheadJsContent)