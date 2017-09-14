tests-Methods
testLookup

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead lookup ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead("lookup");</script>'