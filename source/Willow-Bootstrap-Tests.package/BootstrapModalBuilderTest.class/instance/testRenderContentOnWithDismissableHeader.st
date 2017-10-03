tests
testRenderContentOnWithDismissableHeader

	| html dialog |

	dialog := BootstrapComponentSupplier online dialogBuilder
		dismissableHeaderTitled: 'Terms and Conditions';
		closeButtonLabeled: 'Ok' applying: [ :closeButton | closeButton addClass bootstrap buttonLink ];
		build.

	html := self render: dialog.

	self
		assert: html
		equals:
			'<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><button class="close" data-dismiss="modal" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body"></div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div>'