tests
testAsJavascript

	| toDisplayFunction toValueFunction |

	toDisplayFunction := 'var d = new Date(date);
            d.setDate(d.getDate() - 7);
            return d.toISOString();' asFunction: #(date format language).
	toValueFunction := 'var d = new Date(date);
            d.setDate(d.getDate() + 7);
            return new Date(d);' asFunction: #(date format language).

	self
		assert: (BootstrapDatepickerFormat formattingWith: toDisplayFunction parsingWith: toValueFunction) asJavascript
		equals:
			'{"toDisplay":function(date,format,language){var d = new Date(date);
            d.setDate(d.getDate() - 7);
            return d.toISOString();},"toValue":function(date,format,language){var d = new Date(date);
            d.setDate(d.getDate() + 7);
            return new Date(d);}}'