tests-Options
testHtml

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover html:true ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"html":true});</script>'.
