private
renderContentAt: aContentIndex spanning: aColumnCount on: aCanvas

	aContentIndex > contents size
		ifFalse: [ aCanvas
				render:
					(GenericContainerWebView
						wrapping: (contents at: aContentIndex)
						applying: [ :cell | (columnBreakpointBlock value: cell value: aColumnCount) + cellCommand ]) ]