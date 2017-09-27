Supplying
singleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand

	^ SingleSelectionListBoxWebView displayingAtOnce: aNumberOfElements applying: [ :listBox | listBox addClass bootstrap formControl + aComponentCommand ]