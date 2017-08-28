initialization
initializeRenderingWith: aRenderingBlock applying: aCommandToComponent

	renderingBlock := aRenderingBlock.
	commandToComponent := aCommandToComponent.

	interactionInterpreter := WebInteractionInterpreter forChangeInComponentValue.
	identifierAssigner := IdentifierAssigner prefixedBy: 'radio-button'