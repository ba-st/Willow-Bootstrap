uploaded metadata
localesbootstrapdatepickerroJs
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.ro.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerroJsContent)