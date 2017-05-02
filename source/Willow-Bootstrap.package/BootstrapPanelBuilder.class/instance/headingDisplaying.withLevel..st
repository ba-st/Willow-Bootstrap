Configuring
headingDisplaying: aRenderable withLevel: aHeadingLevel

	headingOptional := Optional
		containing:
			(HeadingWebView
				displaying: aRenderable
				withLevel: aHeadingLevel
				applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles panelTitle))