uploaded metadata
jsi18ndefaultsenUSJs
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-en_US.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsenUSJsContent)