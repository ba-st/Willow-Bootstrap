tests
testRenderContentOn

	| footer html |

	footer := BootstrapModalFooterWebView withCloseButtonLabeled: 'Close' applying: [ :closeButton | closeButton addClass bootstrap buttonLink ].

	html := self render: footer.

	self assert: html equals: '<div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Close</button></div>'