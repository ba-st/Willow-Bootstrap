tests-Options
testZIndexOffset

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker zIndexOffset:15].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"zIndexOffset":15});</script>'