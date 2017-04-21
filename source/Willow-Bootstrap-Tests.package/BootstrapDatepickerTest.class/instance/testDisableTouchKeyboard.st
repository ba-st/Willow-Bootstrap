tests-Options
testDisableTouchKeyboard

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker disableTouchKeyboard: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"disableTouchKeyboard":true});</script>'