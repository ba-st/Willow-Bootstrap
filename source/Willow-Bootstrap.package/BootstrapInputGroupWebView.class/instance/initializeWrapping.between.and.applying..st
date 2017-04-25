initialization
initializeWrapping: aTextFieldWebView between: aWebViewToPrepend and: aWebViewToAppend applying: aComponentCommand

	inputGroupContainer := GenericContainerWebView
		wrapping: [ :canvas | 
			canvas
				render: aWebViewToPrepend;
				render: aTextFieldWebView;
				render: aWebViewToAppend ]
		applying: aComponentCommand