tests
testOnCloseTrigger

	| html footer header dialog |

	footer := BootstrapModalFooterWebView withCloseButtonLabeled: 'Ok' applying: [ :closeButton | closeButton addClass bootstrap buttonLink ].
	header := BootstrapModalHeaderWebView dismissableTitled: 'Terms and Conditions'.
	dialog := BootstrapModalWebView withHeader: header content: 'Some very large legal stuff. ;)' footer: footer.

	dialog onCloseTrigger disable.

	html := self render: dialog.

	self
		assert: html
		equals:
			'<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><button id="button-id1" class="close" data-dismiss="modal" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body">Some very large legal stuff. ;)</div><div class="modal-footer"><button id="button-id2" class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div><script type="text/javascript">$("#button-id1").click(function(event){$(this).prop("disabled",true)});$("#button-id2").click(function(event){$(this).prop("disabled",true)});</script>'