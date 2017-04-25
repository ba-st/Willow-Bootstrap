Instance Creation
appending: aWebViewToAppend to: aTextFieldWebView applying: aComponentCommand

	^ self
		wrapping: aTextFieldWebView
		between: [  ]
		and: aWebViewToAppend
		applying: aComponentCommand