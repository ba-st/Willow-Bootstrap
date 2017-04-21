tests-Options
testKeyboardNavigation

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker keyboardNavigation: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"keyboardNavigation":true});</script>'