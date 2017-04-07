tests-Options
testToggle

	| html |

	html := self renderCollapsibleContentApplying: [ :collapse | collapse toggle: true ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").collapse({"toggle":true});</script>'