Configuring
columnsWidths: aCollection

	AssertionChecker enforce: [ aCollection sum = 12 ] because: 'The specified column count must match the grid total count.'.
	columnSpec := aCollection