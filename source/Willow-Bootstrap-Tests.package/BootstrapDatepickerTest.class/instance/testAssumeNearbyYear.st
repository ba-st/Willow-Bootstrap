tests-Options
testAssumeNearbyYear

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker assumeNearbyYear: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"assumeNearbyYear":true});</script>'.

	html := self renderTextFieldApplying: [ :datepicker | datepicker assumeNearbyYear: 20 ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"assumeNearbyYear":20});</script>'