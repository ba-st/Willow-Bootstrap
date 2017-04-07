tests-Methods
testToggleMethod

	| html |

	html := self renderCollapsibleContentApplying: [ :collapse | collapse toggle ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").collapse("toggle");</script>'