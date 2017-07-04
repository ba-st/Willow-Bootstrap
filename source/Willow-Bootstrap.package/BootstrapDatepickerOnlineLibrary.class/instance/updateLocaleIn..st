private
updateLocaleIn: aRoot

	| fileName |

	fileName := BootstrapDatepickerLanguageToFileNameTranslator new fileNameFrom: locale ifNone: [ "If nothing is specified the us locale will be used" ^ self ].
	aRoot javascript url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/<1s>/locales/<2s>.min.js' expandMacrosWith: self version with: fileName)