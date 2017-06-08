Supplying
decimalNumberFieldApplying: aComponentCommand

	^ NumberFieldWebView applying: self formControlCommand + aComponentCommand transformingWith: FloatCodec new