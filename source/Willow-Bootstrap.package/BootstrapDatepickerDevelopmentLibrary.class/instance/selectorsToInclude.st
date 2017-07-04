accessing
selectorsToInclude

	| fileName |

	fileName := BootstrapDatepickerLanguageToFileNameTranslator new
		fileNameFrom: locale
		ifNone: [ ^ #(cssbootstrapdatepicker3Css jsbootstrapdatepickerJs) ].

	^ OrderedCollection new
		addAll: #(cssbootstrapdatepicker3Css jsbootstrapdatepickerJs);
		add: ('locales<1s>Js' expandMacrosWith: (fileName select: #isLetter)) asSymbol;
		asArray