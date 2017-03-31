uploaded metadata
jsi18ndefaultstrTRJs
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-tr_TR.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultstrTRJsContent)