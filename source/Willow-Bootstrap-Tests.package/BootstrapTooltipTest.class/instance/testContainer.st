tests-Options
testContainer

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip container: 'body' ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"container":"body"});</script>'