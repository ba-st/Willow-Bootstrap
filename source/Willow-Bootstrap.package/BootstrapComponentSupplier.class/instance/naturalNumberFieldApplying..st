Supplying
naturalNumberFieldApplying: aComponentCommand

	^NumberFieldWebView
		applying: self formControlCommand + aComponentCommand + ComponentBoundaryCommand nonNegative
		transformingWith: NaturalNumberCodec new