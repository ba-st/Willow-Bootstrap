tests-Options
testImmediateUpdates

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker immediateUpdates: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"immediateUpdates":true});</script>'