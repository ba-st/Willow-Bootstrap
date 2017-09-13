tests-Options
testAppendTo

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead appendTo: JSStream this ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"appendTo":this});</script>'