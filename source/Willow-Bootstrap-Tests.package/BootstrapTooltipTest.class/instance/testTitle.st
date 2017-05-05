tests-Options
testTitle

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip title: 'Tooltip' ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"title":"Tooltip"});</script>'