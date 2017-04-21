tests-Events
testOnDateChanged

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onDateChanged: JSFunction new ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeDate",function(){});</script>'