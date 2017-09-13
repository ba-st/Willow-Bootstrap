tests-Options
testDisplayText

	| html |

	html := self
		renderTextInputApplying: [ :bootstrapTypeahead | 
			bootstrapTypeahead
				displayText:
					(((JSStream this alias: 'item')
						access: 'name';
						asFunction: #('item'))
						return: true;
						yourself) ].

	self
		assert: html
		equals:
			'<input id="id1" type="text"/><script type="text/javascript">$("#id1").typeahead({"displayText":function(item){return item.name}});</script>'