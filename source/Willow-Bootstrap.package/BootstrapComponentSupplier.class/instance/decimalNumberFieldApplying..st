Supplying
decimalNumberFieldApplying: aComponentCommand

	^ NumberFieldWebView applying: self formControlCommand + self textRightCommand + aComponentCommand transformingWith: FloatCodec new