uploaded metadata
jsi18ndefaultskoKRminJs
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-ko_KR.min.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultskoKRminJsContent)