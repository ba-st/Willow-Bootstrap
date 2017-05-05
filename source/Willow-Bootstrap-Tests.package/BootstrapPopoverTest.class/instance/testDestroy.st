tests-Methods
testDestroy

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover destroy ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("destroy");</script>'