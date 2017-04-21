tests-Methods
testUpdateWithArguments

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker update: '2001-03-05' ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("update","2001-03-05");</script>'.

	html := self renderTextFieldApplying: [ :datepicker | datepicker update: self januaryFirst2017 ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("update",new Date(2017,0,1));</script>'.

	html := self renderTextFieldApplying: [ :datepicker | datepicker update: '' ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("update","");</script>'