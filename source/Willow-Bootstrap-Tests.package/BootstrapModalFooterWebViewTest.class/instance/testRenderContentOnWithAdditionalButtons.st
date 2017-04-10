tests
testRenderContentOnWithAdditionalButtons

	| footer html |

	footer := BootstrapModalFooterWebView
		with: self acceptButton
		andCloseButtonLabeled: 'Close'
		applyingToIt: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles buttonLink).

	html := self render: footer.

	self
		assert: html
		equals:
			'<div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Close</button><button class="btn btn-primary" type="button">Accept</button></div>'