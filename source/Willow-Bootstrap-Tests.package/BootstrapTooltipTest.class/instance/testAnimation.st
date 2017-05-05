tests-Options
testAnimation

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip animation: true ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"animation":true});</script>'