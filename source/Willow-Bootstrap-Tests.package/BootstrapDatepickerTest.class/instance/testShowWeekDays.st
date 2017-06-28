tests-Options
testShowWeekDays

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker showWeekDays: true ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"showWeekDays":true});</script>'