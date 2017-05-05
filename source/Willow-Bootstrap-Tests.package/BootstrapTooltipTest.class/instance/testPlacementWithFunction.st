tests-Options
testPlacementWithFunction

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip placement: JSFunction new ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"placement":function(){}});</script>'