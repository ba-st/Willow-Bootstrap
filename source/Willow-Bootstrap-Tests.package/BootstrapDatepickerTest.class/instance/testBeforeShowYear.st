tests-Options
testBeforeShowYear

	| html |

	html := self
		renderTextFieldApplying: [ :datepicker | datepicker beforeShowYear: (JSFunction new arguments: #(date)) ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"beforeShowYear":function(date){}});</script>'