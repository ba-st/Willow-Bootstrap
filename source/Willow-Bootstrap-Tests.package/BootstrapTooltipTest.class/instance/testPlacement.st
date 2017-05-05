tests-Options
testPlacement

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip placement: CssConstants left  ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"placement":"left"});</script>'.
