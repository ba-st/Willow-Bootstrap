Supplying
singleLineTextFieldApplying: aComponentCommand

	^ TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field | field addClass bootstrap formControl + aComponentCommand ]