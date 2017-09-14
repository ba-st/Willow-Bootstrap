Instance Creation
searchingWith: aSearchAction withSelectionDo: aSelectionCallback configuredBy: aConfigurationBlock

	^ self
		searchingWith: aSearchAction
		labeledBy: self defaultLabelBlock
		withSelectionDo: aSelectionCallback
		configuredBy: aConfigurationBlock