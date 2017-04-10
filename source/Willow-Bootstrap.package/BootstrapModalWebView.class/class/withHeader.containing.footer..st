Instance Creation
withHeader: aBootstrapModalHeader containing: aBodyView footer: aBootstrapModalFooter

	^ self
		withHeader: aBootstrapModalHeader
		containing: aBodyView
		footer: aBootstrapModalFooter
		applyingToDialog: CompositeComponentCommand empty
		andToDocument: CompositeComponentCommand empty