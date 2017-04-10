tests
testOnTriggerWithButtons

	| html footer header dialog |

	footer := BootstrapModalFooterWebView
		containing:
			{self agreeButton.
			self takeMySoulButton}
		andCloseButton:
			(BootstrapModalFooterWebView
				closeButtonLabeled: 'Disagree'
				applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles buttonLink)).
	header := BootstrapModalHeaderWebView titled: 'Terms and Conditions'.
	dialog := BootstrapModalWebView withHeader: header content: 'Some very large legal stuff. ;)' footer: footer.

	dialog onTrigger disable.

	html := self render: dialog.

	self
		assert: html
		equals:
			'<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body">Some very large legal stuff. ;)</div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Disagree</button><button id="button-id1" class="btn btn-default" type="button">Agree</button><button id="button-id2" class="btn btn-primary" type="button">Just take my soul</button></div></div></div></div><script type="text/javascript">$("#button-id1").click(function(){$(this).prop("disabled",true)});$("#button-id2").click(function(){$(this).prop("disabled",true)});</script>'