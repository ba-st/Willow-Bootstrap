private
renderColumnsAt: rowIndex on: aCanvas

	1 to: self columnCountPerRow do:
		[ :columnIndex | self renderContentAt: (self contentIndexAt: rowIndex and: columnIndex) spanning: (columnSpec at: columnIndex) on: aCanvas ]