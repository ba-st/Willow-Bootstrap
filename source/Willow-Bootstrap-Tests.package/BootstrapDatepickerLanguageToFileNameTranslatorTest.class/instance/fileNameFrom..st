private
fileNameFrom: aLocaleString

	^ BootstrapDatepickerLanguageToFileNameTranslator new fileNameFrom: (WALocale fromString: aLocaleString) ifNone: [ self fail ]