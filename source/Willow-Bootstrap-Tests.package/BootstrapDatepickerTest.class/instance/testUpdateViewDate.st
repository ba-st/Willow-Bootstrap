tests-Options
testUpdateViewDate

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker updateViewDate: true ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"updateViewDate":true});</script>'