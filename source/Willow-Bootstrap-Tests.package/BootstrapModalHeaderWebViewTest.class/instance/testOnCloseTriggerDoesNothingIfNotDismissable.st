tests
testOnCloseTriggerDoesNothingIfNotDismissable

	| header html |

	header := BootstrapModalHeaderWebView titled: 'Welcome!'.
	header onCloseTrigger disable.
	html := self render: header.

	self assert: html equals: '<div class="modal-header"><h4 class="modal-title">Welcome!</h4></div>'