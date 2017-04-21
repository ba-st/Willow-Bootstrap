Instance Creation
configuredBy: aConfigurationBlock

	^ self
		applying:
			(ComponentScriptCommand
				toExecute: [ :canvas | 
					| datepicker |
					datepicker := canvas jQuery new bootstrapDatepicker.
					aConfigurationBlock value: datepicker ])