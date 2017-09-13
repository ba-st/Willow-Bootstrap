tests-Options
testAfterSelect

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead afterSelect: JSFunction new ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"afterSelect":function(){}});</script>'