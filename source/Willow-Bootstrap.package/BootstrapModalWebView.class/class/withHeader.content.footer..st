Instance Creation
withHeader: aBootstrapModalHeader content: aBodyView footer: aBootstrapModalFooter

	^ self
		withHeader: aBootstrapModalHeader
		content: aBodyView
		footer: aBootstrapModalFooter
		applyingToDialog: CompositeComponentCommand empty
		andModalDocument: CompositeComponentCommand empty