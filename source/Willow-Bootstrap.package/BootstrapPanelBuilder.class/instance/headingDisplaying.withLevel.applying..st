Configuring
headingDisplaying: aRenderable withLevel: aHeadingLevel applying: aComponentCommand

	headingOptional := Optional containing: (HeadingWebView displaying: aRenderable withLevel: aHeadingLevel applying: [ :heading | heading addClass bootstrap panelTitle + aComponentCommand ])