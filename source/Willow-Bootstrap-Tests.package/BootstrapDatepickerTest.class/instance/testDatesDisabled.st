tests-Options
testDatesDisabled

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker datesDisabled: '2017-12-11' ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"datesDisabled":"2017-12-11"});</script>'.

	html := self renderTextFieldApplying: [ :datepicker | datepicker datesDisabled: #('2017-12-11' '2017-12-10') ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"datesDisabled":["2017-12-11","2017-12-10"]});</script>'