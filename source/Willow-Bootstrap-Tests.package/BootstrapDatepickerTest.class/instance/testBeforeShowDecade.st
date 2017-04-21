tests-Options
testBeforeShowDecade

	| html |

	html := self
		renderTextFieldApplying: [ :datepicker | datepicker beforeShowDecade: (JSFunction new arguments: #(date)) ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"beforeShowDecade":function(date){}});</script>'