tests-Options
testContainer

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover container: 'body' ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"container":"body"});</script>'