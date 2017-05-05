tests-Options
testSelector

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover selector: '.has-popover' ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"selector":".has-popover"});</script>'