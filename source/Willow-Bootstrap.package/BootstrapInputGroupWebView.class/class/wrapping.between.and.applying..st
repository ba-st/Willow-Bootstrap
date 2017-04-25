Instance Creation
wrapping: aTextFieldWebView between: aWebViewToPrepend and: aWebViewToAppend applying: aComponentCommand

	^ self new
		initializeWrapping: aTextFieldWebView
		between: aWebViewToPrepend
		and: aWebViewToAppend
		applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles inputGroup) + aComponentCommand