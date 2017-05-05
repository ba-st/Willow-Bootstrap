tests-Methods
testDestroy

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip destroy ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("destroy");</script>'