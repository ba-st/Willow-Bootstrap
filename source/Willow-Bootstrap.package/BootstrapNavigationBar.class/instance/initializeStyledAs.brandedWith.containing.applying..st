initialization
initializeStyledAs: aContainerClass brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent

	containerClass := aContainerClass.
	componentCommand := aCommandToComponent.
	navbarContent := IdentifiedWebView
		forDivNamed: 'navbar-content'
		containing: aWebView
		applying: [ :div | div addClass bootstrap collapse + div addClass bootstrap navbarCollapse ].
	brandView := aBrandWebView