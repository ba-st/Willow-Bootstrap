tests-Options
testStartDate

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker startDate: self januaryFirst2017 ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"startDate":new Date(2017,0,1)});</script>'