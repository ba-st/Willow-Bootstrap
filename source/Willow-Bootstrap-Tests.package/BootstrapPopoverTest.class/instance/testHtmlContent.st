tests-Options
testHtmlContent

	| html |

	html := self
		renderPopoverContentApplying: [ :popover | 
			popover
				htmlContent:
					(GenericContainerWebView
						wrapping: 'A more complex rendering'
						applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles container)) ].

	self
		assert: html
		equals:
			'<div id="id1"></div><script type="text/javascript">$("#id1").popover({"html":true,"content":"<div class=\"container\">A more complex rendering</div>"});</script>'