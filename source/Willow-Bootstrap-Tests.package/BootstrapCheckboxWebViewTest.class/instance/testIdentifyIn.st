tests-rendering
testIdentifyIn

	| html checkbox |

	checkbox := self newBinaryChoiceView.
	html := self
		renderUsing: [ :canvas | 
			checkbox identifyIn: canvas.
			canvas render: checkbox ].

	self
		assert: html
			equals:
			'<div class="checkbox"><label><input checked="checked" name="2" id="checkbox-id1" type="checkbox"/><input name="3" type="hidden"/></label></div>';
		assert: checkbox identifier equals: 'checkbox-id1'