tests
testRenderContentOnWithAdditionalButtons

	| footer html |

	footer := BootstrapModalFooterWebView with: self acceptButton andCloseButtonLabeled: 'Close' applyingToIt: [ :closeButton | closeButton addClass bootstrap buttonLink ].

	html := self render: footer.

	self
		assert: html
		equals: '<div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Close</button><button id="button-id1" class="btn btn-primary" type="button">Accept</button></div>'