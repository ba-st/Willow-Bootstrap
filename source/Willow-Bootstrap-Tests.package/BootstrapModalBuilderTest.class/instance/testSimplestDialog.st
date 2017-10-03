tests
testSimplestDialog

	| html |

	html := self
		render:
			(BootstrapComponentSupplier online dialogBuilder
				headerTitled: 'Title';
				build).

	self
		assert: html
		equals:
			'<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Title</h4></div><div class="modal-body"></div><div class="modal-footer"><button class="btn" data-dismiss="modal" type="button">Close</button></div></div></div></div>'