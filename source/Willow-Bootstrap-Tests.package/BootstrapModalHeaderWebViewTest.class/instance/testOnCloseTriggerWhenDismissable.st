tests
testOnCloseTriggerWhenDismissable

	| header html |

	header := BootstrapModalHeaderWebView dismissableTitled: 'Welcome!'.
	header onCloseTrigger disable.
	html := self render: header.

	self
		assert: html
		equals:
			'<div class="modal-header"><button id="button-id1" class="close" data-dismiss="modal" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 class="modal-title">Welcome!</h4></div><script type="text/javascript">$("#button-id1").click(function(event){$(this).prop("disabled",true)});</script>'