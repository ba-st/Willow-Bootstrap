tests-Events
testOnDecadeChanged

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onDecadeChanged: JSFunction new ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeDecade",function(){});</script>'