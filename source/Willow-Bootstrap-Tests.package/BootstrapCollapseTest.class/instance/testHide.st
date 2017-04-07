tests-Methods
testHide

	| html |

	html := self renderCollapsibleContentApplying: [ :collapse | collapse hide ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").collapse("hide");</script>'