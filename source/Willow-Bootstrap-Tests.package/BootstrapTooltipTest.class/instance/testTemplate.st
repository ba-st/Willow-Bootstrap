tests-Options
testTemplate

	| html |

	html := self
		renderUsing: [ :canvas | 
			| div tooltip |

			div := canvas div.
			tooltip := canvas jQuery new bootstrapTooltip.
			tooltip
				template:
					(GenericContainerWebView
						wrapping: [ :theCanvas | 
							theCanvas
								render: (GenericContainerWebView wrapping: '' applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles tooltipArrow));
								render: (GenericContainerWebView wrapping: (BootstrapIconWebView representing: Glyphicons menuUp) applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles tooltipInner)) ]
						applying: (ComponentClassificationCommand toStyleWith: BootstrapCssStyles tooltip) + (ComponentAttributeCommand named: BootstrapConstants role with: BootstrapCssStyles tooltip)).
			div script: tooltip ].

	self assert: html equals:  '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"template":"<div class=\"tooltip\" role=\"tooltip\"><div class=\"tooltip-arrow\"></div><div class=\"tooltip-inner\"><span class=\"glyphicon glyphicon-menu-up\"></span></div></div>"});</script>'