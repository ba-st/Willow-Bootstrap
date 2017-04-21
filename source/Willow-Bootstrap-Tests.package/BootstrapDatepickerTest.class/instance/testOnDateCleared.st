tests-Events
testOnDateCleared

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onDateCleared:  JSFunction new ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("clearDate",function(){});</script>'