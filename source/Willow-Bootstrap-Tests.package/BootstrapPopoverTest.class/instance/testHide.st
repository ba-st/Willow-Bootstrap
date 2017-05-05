tests-Methods
testHide

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover hide ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("hide");</script>'