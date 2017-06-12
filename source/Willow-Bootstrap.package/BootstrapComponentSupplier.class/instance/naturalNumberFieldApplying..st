Supplying
naturalNumberFieldApplying: aComponentCommand

	^ NumberFieldWebView applying: self formControlCommand + self textRightCommand + aComponentCommand + ComponentBoundaryCommand nonNegative transformingWith: NaturalNumberCodec new