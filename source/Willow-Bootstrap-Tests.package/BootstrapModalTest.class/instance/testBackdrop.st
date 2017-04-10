tests-Options
testBackdrop

	| html |

	html := self renderModalContentApplying: [ :modal | modal backdrop: BootstrapConstants static ].

	self
		assert: html
		equals: '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal({"backdrop":"static"});</script>'