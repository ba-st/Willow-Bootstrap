tests-Options
testClearButton

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker clearButton:  true ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"clearBtn":true});</script>'