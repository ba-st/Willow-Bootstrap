uploaded metadata
localesbootstrapdatepickertaJs
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.ta.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickertaJsContent)