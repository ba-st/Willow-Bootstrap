Accessing
dateFieldApplying: aComponentCommand

	^ self singleLineTextFieldApplying: aComponentCommand + (InputFieldMaxLengthCommand allowingUpTo: 10) + BootstrapDatepickerCommand new