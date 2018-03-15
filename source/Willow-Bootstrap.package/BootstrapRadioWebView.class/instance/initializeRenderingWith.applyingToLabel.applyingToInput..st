initialization
initializeRenderingWith: aRenderingBlock
	applyingToLabel: aLabelCommand
	applyingToInput: anInputCommand

	renderingBlock := aRenderingBlock.
	labelCommand := aLabelCommand.
	inputCommand := anInputCommand.
	interactionInterpreter := WebInteractionInterpreter forChangeInComponentValue.
	identifierAssigner := IdentifierAssigner prefixedBy: 'radio-button'