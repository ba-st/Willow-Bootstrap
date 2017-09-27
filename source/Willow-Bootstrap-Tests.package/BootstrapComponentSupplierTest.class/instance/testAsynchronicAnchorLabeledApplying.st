tests-Supplying
testAsynchronicAnchorLabeledApplying

	self assertRenderingOf: [ :supplier | supplier asynchronicAnchorLabeled: 'Buy' applying: [ :anchor | anchor addClass bootstrap buttonPrimary ] ] equals: '<a role="button" class="btn btn-primary">Buy</a>'