tests
testRenderContentOn

	| html footer header dialog |

	footer := BootstrapModalFooterWebView withCloseButtonLabeled: 'Ok' applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles buttonLink).
	header := BootstrapModalHeaderWebView titled: 'Terms and Conditions'.

	dialog := BootstrapModalWebView withHeader: header containing: 'Some very large legal stuff. ;)' footer: footer.

	html := self render: dialog.

	self assert: html equals: '<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body">Some very large legal stuff. ;)</div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div>'