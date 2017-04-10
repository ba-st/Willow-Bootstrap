tests-Options
testOptions

	| html |

	html := self
		renderModalContentApplying: [ :modal | 
			modal
				backdrop: false;
				keyboard: false;
				show: true ].

	self
		assert: html
		equals:
			'<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal({"backdrop":false,"keyboard":false,"show":true});</script>'