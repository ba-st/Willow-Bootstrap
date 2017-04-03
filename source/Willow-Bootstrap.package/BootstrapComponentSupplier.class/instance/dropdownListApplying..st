Accessing
dropdownListApplying: aComponentCommand

	| bootstrapSelectCommand |

	bootstrapSelectCommand := ComponentScriptCommand toExecute: [ :canvas | canvas jQuery this bootstrapSelect ].
	^ DropDownListWebView applying: bootstrapSelectCommand + aComponentCommand