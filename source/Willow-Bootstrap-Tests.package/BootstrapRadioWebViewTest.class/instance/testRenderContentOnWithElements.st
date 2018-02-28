tests-rendering
testRenderContentOnWithElements

	| radioGroup html |

	radioGroup := self newSingleSelectionView.
	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').
	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<label><input name="1" value="1" type="radio"/>Buenos Aires</label><label><input name="1" value="2" type="radio"/>CABA</label>'