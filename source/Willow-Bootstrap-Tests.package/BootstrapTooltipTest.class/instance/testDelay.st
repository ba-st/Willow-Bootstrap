tests-Options
testDelay

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip delay: 100 ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"delay":100});</script>'.

	html := self renderTooltipContentApplying: [ :tooltip | tooltip delay: (BootstrapDelayConfiguration new show: 200 hide: 100) ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"delay":{"show":200,"hide":100}});</script>'