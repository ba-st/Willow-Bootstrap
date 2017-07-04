accessing
selectorsToInclude

	| fileName |

	fileName := BootstrapDatepickerLanguageToFileNameTranslator new
		fileNameFrom: locale
		ifNone: [ ^ #(cssbootstrapdatepicker3minCss jsbootstrapdatepickerminJs) ].

	^ OrderedCollection new
		addAll: #(cssbootstrapdatepicker3minCss jsbootstrapdatepickerminJs);
		add: ('locales<1s>minJs' expandMacrosWith: (fileName select: #isLetter)) asSymbol;
		asArray