tests
testRenderContentOnWithDismissButton

	| header html |

	header := BootstrapModalHeaderWebView dismissableTitled: 'Welcome!'.
	html := self render: header.

	self
		assert: html
		equals:
			'<div class="modal-header"><button class="close" data-dismiss="modal" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 class="modal-title">Welcome!</h4></div>'