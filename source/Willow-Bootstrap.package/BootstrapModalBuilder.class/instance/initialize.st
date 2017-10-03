initialization
initialize

	super initialize.
	headerBinding := Binding undefinedExplainedBy: 'Missing header definition'.
	content := ''.
	footerCloseButton := BootstrapModalFooterWebView
		closeButtonLabeled: 'Close'
		applying: [  ].
	additionalFooterButtons := OrderedCollection new.
	dialogCommand := [  ] asWebComponentCommand