tests-Methods
testToggle

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover toggle ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("toggle");</script>'