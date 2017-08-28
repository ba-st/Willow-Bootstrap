private-rendering
renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas

	self
		renderDivOn: aCanvas
		with: [ self
				renderLabelOn: aCanvas
				with: [ self renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas ] ]