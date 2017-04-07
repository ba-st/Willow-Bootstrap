tests-Methods
testShow

	| html |

	html := self renderCollapsibleContentApplying: [ :collapse | collapse show ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").collapse("show");</script>'