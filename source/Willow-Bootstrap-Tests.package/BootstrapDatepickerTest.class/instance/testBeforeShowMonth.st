tests-Options
testBeforeShowMonth

	| html |

	html := self
		renderTextFieldApplying: [ :datepicker | datepicker beforeShowMonth: (JSFunction new arguments: #(date)) ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"beforeShowMonth":function(date){}});</script>'