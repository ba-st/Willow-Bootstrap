tests-Events
testOnMonthChanged

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onMonthChanged: JSFunction new ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeMonth",function(){});</script>'