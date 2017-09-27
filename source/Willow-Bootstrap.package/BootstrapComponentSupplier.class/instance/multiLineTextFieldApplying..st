Supplying
multiLineTextFieldApplying: aComponentCommand

	^ TextFieldWebView multiLineTriggeringOnChangeApplying: [ :field | field addClass bootstrap formControl + aComponentCommand ]