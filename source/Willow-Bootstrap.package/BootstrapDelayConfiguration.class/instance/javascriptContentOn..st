printing
javascriptContentOn: aStream

	aStream nextPut: ${.
	JSStream encodeKey: 'show' value: millisecondCountToShow on: aStream.
	aStream nextPut: $,.
	JSStream encodeKey: 'hide' value: millisecondCountToHide on: aStream.
	aStream nextPut: $}