Instance Creation
withBootstrapLibrary: aBootstrapLibrary selectLibrary: aBootstrapSelectLibrary datepickerLibrary: aDatePickerLibrary

	^ self
		usingLibraries:
			{aBootstrapLibrary.
			aBootstrapSelectLibrary.
			aDatePickerLibrary}