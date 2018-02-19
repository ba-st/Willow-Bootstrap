tests-Supplying
testSynchronicButtonLabeledApplying

	self
		assertRenderingOf: [ :supplier | 
			supplier
				synchronicButtonLabeled: 'Buy'
				applying: [ :link | link addClass bootstrap buttonPrimary ] ]
		equals: '<button class="btn btn-primary" type="submit">Buy</button>'