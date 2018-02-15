tests-Supplying
testAsynchronicLinkLabeledApplying

	self
		assertRenderingOf: [ :supplier | supplier asynchronicLinkLabeled: 'Buy' applying: [ :link | link addClass bootstrap buttonPrimary ] ]
		equals:
			'<a id="a-id1" class="btn-primary">Buy</a><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});</script>'