Supplying
unorderedListApplying: aCommandToList listing: aCollection applyingToEach: aCommandToItem

	^ UnorderedListWebView
		applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles listGroup) + aCommandToList
		listing: aCollection
		applyingToEach: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles listGroupItem) + aCommandToItem