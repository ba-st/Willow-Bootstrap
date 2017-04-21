uploaded metadata
cssbootstrapdatepicker3minCss
	^ WAFileLibraryResource
		filepath: 'css/bootstrap-datepicker3.min.css'
		mimeType: (WAMimeType main: 'text' sub: 'css')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapdatepicker3minCssContent)