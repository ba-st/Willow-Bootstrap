tests-Options
testShowOnFocus

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker showOnFocus: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"showOnFocus":true});</script>'