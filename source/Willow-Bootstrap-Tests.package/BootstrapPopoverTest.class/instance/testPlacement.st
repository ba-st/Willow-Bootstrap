tests-Options
testPlacement

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover placement: CssConstants left  ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"placement":"left"});</script>'.
