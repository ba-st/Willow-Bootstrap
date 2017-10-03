tests
testBeSelfCleaning

	| html dialog |

	dialog := BootstrapComponentSupplier online dialogBuilder
		beSelfCleaning;
		headerTitled: 'Terms and Conditions';
		closeButtonLabeled: 'Ok' applying: [ :closeButton | closeButton addClass bootstrap buttonLink ];
		build.

	html := self render: dialog.

	self
		assert: html
		equals:
			'<div class="modal" tabindex="-1" role="dialog" id="id1"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body"></div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Ok</button></div></div></div></div><script type="text/javascript">$("#id1").modal({"backdrop":"static"}).on("hidden.bs.modal",function(){Willow.Bootstrap.cleanModal($(this))});</script>'