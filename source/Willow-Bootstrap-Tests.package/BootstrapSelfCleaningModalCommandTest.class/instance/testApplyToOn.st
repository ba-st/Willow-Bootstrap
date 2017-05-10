tests
testApplyToOn

	| html |

	html := self apply: BootstrapSelfCleaningModalCommand new toComponentDefinedBy: [ :canvas | canvas div class: BootstrapCssStyles modal ].

	self
		assert: html
		equals:
			'<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal({"backdrop":"static"}).on("hidden.bs.modal",function(){Willow.Bootstrap.cleanModal($(this))});</script>'