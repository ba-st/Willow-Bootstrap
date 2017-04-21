rendering
renderTextFieldApplying: aBlock

	^ self
		renderUsing: [ :canvas | 
			| select datepicker |

			select := canvas textInput.
			datepicker := canvas jQuery new bootstrapDatepicker.
			aBlock value: datepicker.
			select script: datepicker ]