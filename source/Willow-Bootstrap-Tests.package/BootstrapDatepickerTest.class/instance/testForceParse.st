tests-Options
testForceParse

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker forceParse: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"forceParse":true});</script>'