tests-Options
testPlacementWithFunction

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover placement: JSFunction new ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"placement":function(){}});</script>'