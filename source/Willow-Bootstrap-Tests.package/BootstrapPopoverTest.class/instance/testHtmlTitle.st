tests-Options
testHtmlTitle

	| html |

	html := self
		renderPopoverContentApplying: [ :popover | popover htmlTitle: (GenericContainerWebView wrapping: 'A complex title' applying: [ :container | container addClass bootstrap container ]) ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"html":true,"title":"<div class=\"container\">A complex title</div>"});</script>'