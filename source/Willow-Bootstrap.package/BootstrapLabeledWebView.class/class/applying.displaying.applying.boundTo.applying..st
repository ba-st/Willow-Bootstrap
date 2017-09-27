Instance Creation
applying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField

	^ self new
		initializeApplying: [ :container | container addClass bootstrap formGroup + aCommandToContainer ] asWebComponentCommand
		displaying: thePhrasingContent
		applying: [ :label | label addClass bootstrap controlLabel + aCommandToLabel ] asWebComponentCommand
		boundTo: aFieldWebView
		applying: aCommandToField asWebComponentCommand