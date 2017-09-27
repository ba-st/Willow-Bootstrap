Supplying
dateFieldApplying: aComponentCommand

	^ self singleLineTextFieldApplying: [ :field | (field setMaximumLengthTo: 10) + aComponentCommand + BootstrapDatepickerCommand new ]