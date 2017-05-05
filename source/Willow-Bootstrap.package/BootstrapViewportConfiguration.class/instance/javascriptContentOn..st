printing
javascriptContentOn: aStream

	aStream nextPut: ${.
	JSStream encodeKey: 'selector' value: selector on: aStream.
	aStream nextPut: $,.
	JSStream encodeKey: 'padding' value: padding on: aStream.
	aStream nextPut: $}