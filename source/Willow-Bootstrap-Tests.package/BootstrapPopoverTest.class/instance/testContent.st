tests-Options
testContent

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover content: 'Message' ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"content":"Message"});</script>'