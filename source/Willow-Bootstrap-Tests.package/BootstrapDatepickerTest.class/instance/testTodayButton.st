tests-Options
testTodayButton

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker todayButton: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"todayBtn":true});</script>'