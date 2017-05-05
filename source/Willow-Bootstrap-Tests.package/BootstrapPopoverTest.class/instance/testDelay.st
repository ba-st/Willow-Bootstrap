tests-Options
testDelay

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover delay: 100 ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"delay":100});</script>'.

	html := self renderPopoverContentApplying: [ :popover | popover delay: (BootstrapDelayConfiguration new show: 200 hide: 100) ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"delay":{"show":200,"hide":100}});</script>'