tests-Options
testAutoclose

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker autoclose: true ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"autoclose":true});</script>'