Instance Creation
applying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField

	^ self new
		initializeApplying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles formGroup) + aCommandToContainer
		displaying: thePhrasingContent
		applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles controlLabel) + aCommandToLabel
		boundTo: aFieldWebView
		applying: aCommandToField