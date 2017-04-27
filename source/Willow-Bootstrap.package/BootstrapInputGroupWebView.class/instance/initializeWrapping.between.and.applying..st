initialization
initializeWrapping: aTextFieldWebView between: aWebViewToPrepend and: aWebViewToAppend applying: aComponentCommand

	textFieldWebView := aTextFieldWebView.
	inputGroupContainer := GenericContainerWebView
		wrapping: [ :canvas | 
			canvas
				render: aWebViewToPrepend;
				render: textFieldWebView;
				render: aWebViewToAppend ]
		applying: aComponentCommand