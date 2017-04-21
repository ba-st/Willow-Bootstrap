tests-Events
testOnHide

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onHide: JSFunction new ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("hide",function(){});</script>'