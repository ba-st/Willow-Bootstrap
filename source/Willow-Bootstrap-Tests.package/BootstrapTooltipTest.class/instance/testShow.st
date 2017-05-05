tests-Methods
testShow

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip show ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("show");</script>'