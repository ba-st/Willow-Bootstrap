Instance Creation
searchingWith: aSearchAction labeledBy: aLabelsBlock withSelectionDo: aSelectionCallback

	^ self
		searchingWith: aSearchAction
		labeledBy: aLabelsBlock
		withSelectionDo: aSelectionCallback
		configuredBy: self defaultConfigurationBlock