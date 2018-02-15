tests-Supplying
testAsynchronicLinkActingAsButtonLabeledApplying

	self
		assertRenderingOf: [ :supplier | supplier asynchronicLinkActingAsButtonLabeled: 'Buy' applying: [ :link | link addClass bootstrap buttonPrimary ] ]
		equals:
			'<a id="a-id1" role="button" class="btn btn-primary">Buy</a><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});</script>'