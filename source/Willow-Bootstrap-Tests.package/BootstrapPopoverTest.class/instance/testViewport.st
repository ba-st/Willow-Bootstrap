tests-Options
testViewport

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover viewport: '#id1' ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"viewport":"#id1"});</script>'