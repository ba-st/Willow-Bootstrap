Instance Creation
searchingWith: aSearchAction labeledBy: aLabelsBlock withSelectionDo: aSelectionCallback thenRendering: anIdentifiedWebView

	^ self
		searchingWith: aSearchAction
		labeledBy: aLabelsBlock
		withSelectionDo: aSelectionCallback
		thenRendering: anIdentifiedWebView
		configuredBy: [ :typeahead |  ]