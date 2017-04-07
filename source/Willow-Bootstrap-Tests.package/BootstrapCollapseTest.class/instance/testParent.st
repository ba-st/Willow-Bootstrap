tests-Options
testParent

	| html |

	html := self renderCollapsibleContentApplying: [ :collapse | collapse parent: false ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").collapse({"parent":false});</script>'