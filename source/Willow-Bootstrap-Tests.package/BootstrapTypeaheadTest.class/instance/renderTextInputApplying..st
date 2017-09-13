rendering
renderTextInputApplying: aBlock

	^ self
		renderUsing: [ :canvas | 
			| input bootstrapTypeAhead |

			input := canvas textInput.
			bootstrapTypeAhead := canvas jQuery new bootstrapTypeahead.
			aBlock value: bootstrapTypeAhead.
			input script: bootstrapTypeAhead ]