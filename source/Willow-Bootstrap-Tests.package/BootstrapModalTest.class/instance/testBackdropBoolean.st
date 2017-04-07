tests-Options
testBackdropBoolean

	| html |

	html := self renderModalContentApplying: [ :modal | modal backdrop: true ].

	self
		assert: html
		equals: '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal({"backdrop":true});</script>'