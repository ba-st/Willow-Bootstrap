tests
testRenderContentOnWithComplexTitle

	| header html |

	header := BootstrapModalHeaderWebView
		titled: [ :canvas | 
			canvas
				render: (BootstrapIconWebView representing: Glyphicons menuUp);
				render: 'Up!' ].
	html := self render: header.

	self
		assert: html
		equals: '<div class="modal-header"><h4 class="modal-title"><span class="glyphicon glyphicon-menu-up"></span>Up!</h4></div>'