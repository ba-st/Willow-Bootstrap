uploaded metadata
cssbootstrapdatepicker3cssMap
	^ WAFileLibraryResource
		filepath: 'css/bootstrap-datepicker3.css.map'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapdatepicker3cssMapContent)