tests-Options
testMinLength

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead minLength: 12 ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"minLength":12});</script>'