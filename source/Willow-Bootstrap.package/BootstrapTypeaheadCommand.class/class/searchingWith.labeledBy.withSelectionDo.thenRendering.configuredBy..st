Instance Creation
searchingWith: aSearchAction labeledBy: aLabelsBlock withSelectionDo: aSelectionCallback thenRendering: anIdentifiedWebView configuredBy: aConfigurationBlock

	^ self
		searchingWith: aSearchAction
		labeledBy: aLabelsBlock
		withSelectionDo: aSelectionCallback
		thenRefresh: (Optional containing: anIdentifiedWebView)
		configuredBy: aConfigurationBlock