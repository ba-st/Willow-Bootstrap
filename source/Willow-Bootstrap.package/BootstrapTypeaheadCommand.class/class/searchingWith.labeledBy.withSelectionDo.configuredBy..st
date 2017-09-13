Instance Creation
searchingWith: aSearchAction labeledBy: aLabelsBlock withSelectionDo: aSelectionCallback configuredBy: aConfigurationBlock

	^ self
		searchingWith: aSearchAction
		labeledBy: aLabelsBlock
		withSelectionDo: aSelectionCallback
		thenRefresh: Optional unused
		configuredBy: aConfigurationBlock