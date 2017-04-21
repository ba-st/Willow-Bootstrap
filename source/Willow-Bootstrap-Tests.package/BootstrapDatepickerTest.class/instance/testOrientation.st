tests-Options
testOrientation

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker orientation: CssConstants bottom].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"orientation":"bottom"});</script>'