tests-Options
testTitle

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover title: 'Popover' ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"title":"Popover"});</script>'