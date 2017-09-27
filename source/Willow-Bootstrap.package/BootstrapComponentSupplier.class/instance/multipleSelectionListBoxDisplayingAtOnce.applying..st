Supplying
multipleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand

	^ MultipleSelectionListBoxWebView displayingAtOnce: aNumberOfElements applying: [ :field | field addClass bootstrap formControl + aComponentCommand ]