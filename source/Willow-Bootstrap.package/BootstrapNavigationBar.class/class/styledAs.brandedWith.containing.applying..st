private-instance creation
styledAs: aContainerClass brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent

	^ self new
		initializeStyledAs: aContainerClass
		brandedWith: aBrandWebView
		containing: aWebView
		applying: aCommandToComponent asWebComponentCommand 