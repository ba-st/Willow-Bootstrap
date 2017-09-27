Supplying
decimalNumberFieldApplying: aComponentCommand

	^ NumberFieldWebView applying: [ :field | field addClass bootstrap formControl + field addClass bootstrap textRight + aComponentCommand ] transformingWith: FloatCodec new