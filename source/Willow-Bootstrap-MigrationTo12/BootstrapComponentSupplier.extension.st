Extension { #name : #BootstrapComponentSupplier }

{ #category : #'*Willow-Bootstrap-MigrationTo12' }
BootstrapComponentSupplier class >> online [

	self
		deprecated: 'BootstrapComponentSupplier was renamed to Bootstrap3ComponentSupplier'
		transformWith: 'BootstrapComponentSupplier online' -> 'Bootstrap3ComponentSupplier online'.
	^ Bootstrap3ComponentSupplier online
]

{ #category : #'*Willow-Bootstrap-MigrationTo12' }
BootstrapComponentSupplier class >> withBootstrapLibrary: aBootstrapLibrary selectLibrary: aBootstrapSelectLibrary datepickerLibrary: aDatePickerLibrary typeaheadLibrary: aTypeaheadLibrary [

	self
		deprecated: 'BootstrapComponentSupplier was renamed to Bootstrap3ComponentSupplier'
		transformWith:
			'BootstrapComponentSupplier withBootstrapLibrary: `@aBootstrapLibrary selectLibrary: `@aBootstrapSelectLibrary datepickerLibrary: `@aDatePickerLibrary typeaheadLibrary: `@aTypeaheadLibrary'
				->
					'Bootstrap3ComponentSupplier withBootstrapLibrary: `@aBootstrapLibrary selectLibrary: `@aBootstrapSelectLibrary datepickerLibrary: `@aDatePickerLibrary typeaheadLibrary: `@aTypeaheadLibrary'.
	^ Bootstrap3ComponentSupplier
		withBootstrapLibrary: aBootstrapLibrary
		selectLibrary: aBootstrapSelectLibrary
		datepickerLibrary: aDatePickerLibrary
		typeaheadLibrary: aTypeaheadLibrary
]
