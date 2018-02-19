tests-Supplying
testSynchronicButtonLabeledApplyingEvaluating

	self
		assertRenderingOf: [ :supplier | 
			supplier
				synchronicButtonLabeled: 'Buy'
				applying: [ :link | link addClass bootstrap buttonPrimary ]
				evaluating: [  ] ]
		equals: '<button name="1" class="btn btn-primary" type="submit">Buy</button>'