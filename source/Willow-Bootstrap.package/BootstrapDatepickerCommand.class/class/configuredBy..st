Instance Creation
configuredBy: aConfigurationBlock

	^ self
		applying: [ :field | 
			field addScript
				js: [ :canvas | 
					| datepicker |

					datepicker := canvas jQuery new bootstrapDatepicker.
					aConfigurationBlock value: datepicker ] ]