tests
testOnTrigger

	| footer html |

	footer := BootstrapModalFooterWebView
		with: self acceptButton
		andCloseButtonLabeled: 'Close'
		applyingToIt: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles buttonLink).

	footer onTrigger disable.

	html := self render: footer.

	self
		assert: html
		equals:
			'<div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Close</button><button id="button-id1" class="btn btn-primary" type="button">Accept</button></div><script type="text/javascript">$("#button-id1").click(function(){$(this).prop("disabled",true)});</script>'