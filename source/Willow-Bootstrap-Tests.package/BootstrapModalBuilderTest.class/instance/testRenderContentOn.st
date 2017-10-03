tests
testRenderContentOn

	| html dialog |

	dialog := BootstrapComponentSupplier online dialogBuilder
		headerTitled: 'Terms and Conditions';
		wrapping: 'Some very large legal stuff. ;)';
		closeButtonLabeled: 'Ok' applying: [ :closeButton | closeButton addClass bootstrap buttonLink ];
		build.

	html := self render: dialog.

	self
		assert: html
		equals:
			'<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body">Some very large legal stuff. ;)</div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div>'