Options
language: aString

	"String. Default: “en”

The IETF code (eg “en” for English, “pt-BR” for Brazilian Portuguese) of the language to use for month and day names. These will also be used as the input’s value (and subsequently sent to the server in the case of form submissions). If a full code (eg “de-DE”) is supplied the picker will first check for an “de-DE” language and if not found will fallback and check for a “de” language. If an unknown language code is given, English will be used. "

	self optionAt: 'language' put: aString