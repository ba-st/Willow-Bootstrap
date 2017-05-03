initialization
initializeFormattingWith: aJSFormattingFunction parsingWith: aJSParsingFunction

	options := GRSmallDictionary new.
	options
		at: 'toDisplay' put: aJSFormattingFunction;
		at: 'toValue' put: aJSParsingFunction