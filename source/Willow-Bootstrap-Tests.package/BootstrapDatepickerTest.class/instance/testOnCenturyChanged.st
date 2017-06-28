tests-Events
testOnCenturyChanged

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onCenturyChanged: JSFunction new ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeCentury",function(){});</script>'