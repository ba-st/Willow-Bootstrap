private-rendering
renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas

	| radioButton |

	radioButton := aRadioGroup radioButton.
	identifierAssigner withAssignedIdentifierDo: [ :id | radioButton id: id ].
	inputCommand applyTo: radioButton on: aCanvas.
	interactionInterpreter applyTo: radioButton on: aCanvas.
	radioButton value: anElement.
	self renderLabelContentFor: anElement on: aCanvas