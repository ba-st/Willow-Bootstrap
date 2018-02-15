tests
testOnTriggerWithButtons

	| html dialog |

	dialog := BootstrapComponentSupplier online dialogBuilder
		headerTitled: 'Terms and Conditions';
		wrapping: 'Some very large legal stuff. ;)';
		closeButtonLabeled: 'Disagree' applying: [ :closeButton | closeButton addClass bootstrap buttonLink ];
		addFooterButton: self agreeButton;
		addFooterButton: self takeMySoulButton;
		build.

	dialog onTrigger disable.

	html := self render: dialog.

	self
		assert: html
		equals:
			'<div class="modal" tabindex="-1" role="dialog"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><h4 class="modal-title">Terms and Conditions</h4></div><div class="modal-body">Some very large legal stuff. ;)</div><div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Disagree</button><button id="button-id1" class="btn btn-default" type="button">Agree</button><button id="button-id2" class="btn btn-primary" type="button">Just take my soul</button></div></div></div></div><script type="text/javascript">$("#button-id1").click(function(event){$(this).prop("disabled",true)});$("#button-id2").click(function(event){$(this).prop("disabled",true)});</script>'