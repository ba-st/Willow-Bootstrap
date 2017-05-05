tests-Methods
testToggle

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip toggle ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("toggle");</script>'