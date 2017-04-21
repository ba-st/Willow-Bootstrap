tests-Options
testBeforeShowDay

	| html |

	html := self
		renderTextFieldApplying: [ :datepicker | datepicker beforeShowDay: (JSFunction new arguments: #(date)) ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"beforeShowDay":function(date){}});</script>'