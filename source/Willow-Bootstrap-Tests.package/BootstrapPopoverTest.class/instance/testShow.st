tests-Methods
testShow

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover show ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("show");</script>'