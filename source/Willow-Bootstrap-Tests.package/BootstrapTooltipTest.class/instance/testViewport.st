tests-Options
testViewport

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip viewport: '#id1' ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"viewport":"#id1"});</script>'