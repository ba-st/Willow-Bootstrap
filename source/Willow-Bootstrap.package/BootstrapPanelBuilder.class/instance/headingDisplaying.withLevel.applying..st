Configuring
headingDisplaying: aRenderable withLevel: aHeadingLevel applying: aComponentCommand

	headingOptional := Optional
		containing: (HeadingWebView displaying: aRenderable withLevel: aHeadingLevel applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles panelTitle) + aComponentCommand)