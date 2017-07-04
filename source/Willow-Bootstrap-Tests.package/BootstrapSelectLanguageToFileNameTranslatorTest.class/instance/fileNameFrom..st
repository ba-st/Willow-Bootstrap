private
fileNameFrom: aLocaleString

	^ BootstrapSelectLanguageToFileNameTranslator new fileNameFrom: (WALocale fromString: aLocaleString)