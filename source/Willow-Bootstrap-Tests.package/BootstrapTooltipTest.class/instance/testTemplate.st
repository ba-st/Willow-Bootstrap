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
								render: (GenericContainerWebView wrapping: '' applying: [ :container | container addClass bootstrap tooltipArrow ]);
								render: (GenericContainerWebView wrapping: (BootstrapIconWebView representing: Glyphicons menuUp) applying: [ :container | container addClass bootstrap tooltipInner ]) ]
						applying: [ :container :constants | container addClass bootstrap tooltip + (container setAttribute: constants bootstrap role to: BootstrapCssStyles tooltip )]).
			div script: tooltip ].

	self
		assert: html
		equals:
			'<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"template":"<div class=\"tooltip\" role=\"tooltip\"><div class=\"tooltip-arrow\"></div><div class=\"tooltip-inner\"><span class=\"glyphicon glyphicon-menu-up\"></span></div></div>"});</script>'