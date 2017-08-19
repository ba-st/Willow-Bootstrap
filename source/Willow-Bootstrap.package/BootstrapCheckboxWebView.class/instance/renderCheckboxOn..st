rendering - private
renderCheckboxOn: aCanvas

	| checkbox |

	checkbox := aCanvas checkbox.
	commandToComponent applyTo: checkbox on: aCanvas.
	checkbox
		value: isChecked;
		callback: [ :value | 
			value = isChecked
				ifFalse: [ self toggleCurrentSelection ] ].
	identifierAssigner withAssignedIdentifierDo: [ :id | checkbox id: id ].
	interactionInterpreter applyTo: checkbox on: aCanvas