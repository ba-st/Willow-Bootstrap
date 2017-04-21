tests-Options
testMultidate

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker multidate: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"multidate":true});</script>'