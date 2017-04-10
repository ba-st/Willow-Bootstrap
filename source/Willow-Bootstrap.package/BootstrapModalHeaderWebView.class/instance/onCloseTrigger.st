Configuring
onCloseTrigger

	^ dismissButtonOptional withContentDo: [ :dismissButton | dismissButton onTrigger ] ifUnused: [ WebInteractionInterpreter workingWith: WebComponentInteraction neverTriggered ]