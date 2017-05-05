tests-Options
testTrigger

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover trigger: BootstrapConstants manual ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"trigger":"manual"});</script>'