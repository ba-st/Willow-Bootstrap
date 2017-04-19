Updating
updateRoot: aRoot

	aRoot stylesheet
		url: ('https://maxcdn.bootstrapcdn.com/bootstrap/<1s>/css/bootstrap.min.css' expandMacrosWith: self version);
		attributeAt: 'integrity' put: 'sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u';
		attributeAt: 'crossorigin' put: 'anonymous'.
	aRoot javascript
		url: ('https://maxcdn.bootstrapcdn.com/bootstrap/<1s>/js/bootstrap.min.js' expandMacrosWith: self version);
		attributeAt: 'integrity' put: 'sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp';
		attributeAt: 'crossorigin' put: 'anonymous'