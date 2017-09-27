Supplying
naturalNumberFieldApplying: aComponentCommand

	^ NumberFieldWebView applying: [ :field | field addClass bootstrap formControl + field addClass bootstrap textRight + aComponentCommand + field boundNotNegative ] transformingWith: NaturalNumberCodec new