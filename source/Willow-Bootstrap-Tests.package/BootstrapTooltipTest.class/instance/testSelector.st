tests-Options
testSelector

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip selector: '.has-popover' ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"selector":".has-popover"});</script>'