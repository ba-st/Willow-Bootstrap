tests-Supplying
testAsynchronicLinkLabeledApplying

	self assertRenderingOf: [ :supplier | supplier asynchronicLinkLabeled: 'Buy' applying: [ :link | link addClass bootstrap buttonPrimary ] ] equals: '<a role="button" class="btn btn-primary">Buy</a>'