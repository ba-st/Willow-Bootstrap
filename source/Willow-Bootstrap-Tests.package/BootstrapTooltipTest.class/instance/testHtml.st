tests-Options
testHtml

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip html:true ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"html":true});</script>'.
