building
buildApplying: aRowCommand

	| rows |

	rows := OrderedCollection new.
	1 to: self numberOfRows do: [ :rowIndex | rows add: (GenericContainerWebView wrapping: [ :canvas | self renderColumnsAt: rowIndex on: canvas ] applying: rowCommand + aRowCommand) ].
	^ rows