tests-Options
testAutoSelect

	| html |

	html := self renderTextInputApplying: [ :bootstrapTypeahead | bootstrapTypeahead autoSelect: true ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"autoSelect":true});</script>'