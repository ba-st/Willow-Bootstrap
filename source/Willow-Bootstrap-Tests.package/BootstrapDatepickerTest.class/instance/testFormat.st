tests-Options
testFormat

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker format: 'd/m/yy' ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"format":"d/m/yy"});</script>'