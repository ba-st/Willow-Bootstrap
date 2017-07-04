private
updateLocaleIn: aRoot

	| fileName |

	fileName := BootstrapSelectLanguageToFileNameTranslator new fileNameFrom: locale.
	aRoot javascript url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/<1s>/js/i18n/<2s>.min.js' expandMacrosWith: self version with: fileName)