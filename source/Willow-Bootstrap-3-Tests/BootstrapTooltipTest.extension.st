Extension { #name : #BootstrapTooltipTest }

{ #category : #'*Willow-Bootstrap-3-Tests' }
BootstrapTooltipTest >> testTemplateForBootstrap3 [

	| html |

	html := self
		renderUsing: [ :canvas | 
			| div tooltip |

			div := canvas div.
			tooltip := canvas jQuery new bootstrapTooltip.
			tooltip
				template: [ :template | 
					template div
						with: [ template div apply: [ :container | container addClass bootstrap3 tooltipArrow ].
							template div
								with: ( Bootstrap3IconWebView representing: Glyphicons menuUp )
								applying: [ :container | container addClass bootstrap3 tooltipInner ]
							]
						applying:
							[ :container :constants | container addClass bootstrap3 tooltip + ( container setARIARoleTo: #tooltip ) ]
					].
			div script: tooltip
			].

	self
		assert: html
		equals:
			'<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"template":"<div class=\"tooltip\" role=\"tooltip\"><div class=\"tooltip-arrow\"></div><div class=\"tooltip-inner\"><span class=\"glyphicon glyphicon-menu-up\"></span></div></div>"});</script>'
]

{ #category : #'*Willow-Bootstrap-3-Tests' }
BootstrapTooltipTest >> testViewport [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip viewport: '#id1' ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"viewport":"#id1"});</script>'
]

{ #category : #'*Willow-Bootstrap-3-Tests' }
BootstrapTooltipTest >> testViewportWithPadding [

	| html |

	html := self
		renderTooltipContentApplying: [ :tooltip | tooltip viewport: (Bootstrap3ViewportConfiguration new selector: '#id1' padding: 5) ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"viewport":{"selector":"#id1","padding":5}});</script>'
]
