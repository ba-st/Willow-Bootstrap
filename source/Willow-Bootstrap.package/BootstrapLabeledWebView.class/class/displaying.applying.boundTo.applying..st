Instance Creation
displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField

	^ self
		applying: CompositeComponentCommand empty
		displaying: thePhrasingContent
		applying: aCommandToLabel
		boundTo: aFieldWebView
		applying: aCommandToField