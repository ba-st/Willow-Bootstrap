tests-Methods
testDestroy

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead destroy ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead("destroy");</script>'