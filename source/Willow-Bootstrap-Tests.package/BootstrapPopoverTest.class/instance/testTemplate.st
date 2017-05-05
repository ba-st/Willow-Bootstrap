tests-Options
testTemplate

	| html |

	html := self
		renderUsing: [ :canvas | 
			| div popover |

			div := canvas div.
			popover := canvas jQuery new bootstrapPopover.
			popover
				template:
					(GenericContainerWebView
						wrapping: [ :theCanvas | 
							theCanvas
								render: (GenericContainerWebView wrapping: '' applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles arrow));
								render: (HeadingWebView displaying: '' withLevel: 3 applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles popoverTitle));
								render: (GenericContainerWebView wrapping: (BootstrapIconWebView representing: Glyphicons menuUp) applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles popoverContent )) ]
						applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles popover) + (ComponentAttributeCommand named: BootstrapConstants role with: BootstrapCssStyles tooltip)).
			div script: popover ].

	self assert: html equals:   '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"template":"<div class=\"popover\" role=\"tooltip\"><div class=\"arrow\"></div><h3 class=\"popover-title\"></h3><div class=\"popover-content\"><span class=\"glyphicon glyphicon-menu-up\"></span></div></div>"});</script>'