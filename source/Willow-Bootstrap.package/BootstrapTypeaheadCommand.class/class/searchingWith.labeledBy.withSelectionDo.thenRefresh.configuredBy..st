private
searchingWith: aSearchAction labeledBy: aLabelsBlock withSelectionDo: aSelectionCallback thenRefresh: anIdentifiedViewOptional configuredBy: aConfigurationBlock

	^ self new
		initializeSearchingWith: aSearchAction
		labeledBy: aLabelsBlock
		withSelectionDo: aSelectionCallback
		thenRefresh: anIdentifiedViewOptional
		configuredBy: aConfigurationBlock