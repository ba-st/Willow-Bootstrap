tests-rendering
testRenderContentOnWithElementsAndSomethingSelected

	| radioGroup html |

	radioGroup := self newSingleSelectionView.
	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').
	radioGroup chooseAnySatisfying: [ :place | true ] ifNone: [ self fail ].

	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<div class="radio"><label><input name="1" checked="checked" value="1" type="radio"/>Buenos Aires</label></div><div class="radio"><label><input name="1" value="2" type="radio"/>CABA</label></div>'.

	radioGroup chooseAnySatisfying: [ :place | place beginsWith: 'C' ] ifNone: [ self fail ].

	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<div class="radio"><label><input name="1" value="1" type="radio"/>Buenos Aires</label></div><div class="radio"><label><input name="1" checked="checked" value="2" type="radio"/>CABA</label></div>'