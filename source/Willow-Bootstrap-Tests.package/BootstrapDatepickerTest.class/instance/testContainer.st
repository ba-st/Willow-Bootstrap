tests-Options
testContainer

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker container: '#picker-id' ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"container":"#picker-id"});</script>'