tests-Events
testOnYearChanged

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onYearChanged: JSFunction new ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeYear",function(){});</script>'