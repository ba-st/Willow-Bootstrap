instance creation
renderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand

	^self new
		initializeRenderingWith: aRenderingBlock
		applyingToLabel: aLabelCommand asWebComponentCommand
		applyingToInput: anInputCommand asWebComponentCommand