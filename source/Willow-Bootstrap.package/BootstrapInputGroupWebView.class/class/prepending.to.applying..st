Instance Creation
prepending: aWebViewToPrepend to: aTextFieldWebView applying: aCompositeComponentCommand

	^ self
		wrapping: aTextFieldWebView
		between: aWebViewToPrepend
		and: [  ]
		applying: aCompositeComponentCommand