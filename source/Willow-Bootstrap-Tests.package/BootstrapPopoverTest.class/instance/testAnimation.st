tests-Options
testAnimation

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover animation: true ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"animation":true});</script>'