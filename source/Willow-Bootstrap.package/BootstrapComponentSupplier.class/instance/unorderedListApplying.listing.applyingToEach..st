Supplying
unorderedListApplying: aCommandToList listing: aCollection applyingToEach: aCommandToItem

	^ UnorderedListWebView
		applying: [ :list | list addClass bootstrap listGroup + aCommandToList ]
		listing: aCollection
		applyingToEach: [ :listItem | listItem addClass bootstrap listGroupItem + aCommandToItem ]