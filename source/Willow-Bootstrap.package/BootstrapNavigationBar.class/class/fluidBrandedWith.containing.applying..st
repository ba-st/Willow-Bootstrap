Instance Creation
fluidBrandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent

	^ self
		styledAs: BootstrapCssStyles containerFluid
		brandedWith: aBrandWebView
		containing: aWebView
		applying: aCommandToComponent