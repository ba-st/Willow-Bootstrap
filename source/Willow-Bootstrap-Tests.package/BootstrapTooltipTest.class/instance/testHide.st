tests-Methods
testHide

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip hide ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("hide");</script>'