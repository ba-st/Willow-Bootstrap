initialization
initializeStyledAs: aContainerClass brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent

	containerClass := aContainerClass.
	componentCommand := aCommandToComponent.
	navbarContent := IdentifiedWebView
		forDivNamed: 'navbar-content'
		containing: aWebView
		applying:
			(ComponentClassificationCommand
				toStyleWithAll:
					{BootstrapCssStyles collapse.
					BootstrapCssStyles navbarCollapse}).
	brandView := aBrandWebView