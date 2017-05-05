tests-Options
testTrigger

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip trigger: BootstrapConstants manual ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"trigger":"manual"});</script>'