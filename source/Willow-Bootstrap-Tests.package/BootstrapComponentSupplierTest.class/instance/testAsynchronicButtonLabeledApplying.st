tests-Supplying
testAsynchronicButtonLabeledApplying

	self
		assertRenderingOf: [ :supplier | 
			supplier
				asynchronicButtonLabeled: 'Buy'
				applying: [ :anchor | anchor addClass bootstrap buttonPrimary ] ]
		equals: '<button class="btn btn-primary" type="button">Buy</button>'