Extension { #name : #BootstrapTooltipTest }

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapTooltipTest >> testBoundary [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip boundary: #scrollParent ].

	self
		assert: html
		equals:
			'<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"boundary":"scrollParent"});</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapTooltipTest >> testDisable [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip disable ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("disable");</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapTooltipTest >> testDispose [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip dispose ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("dispose");</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapTooltipTest >> testEnable [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip enable ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("enable");</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapTooltipTest >> testFallbackPlacement [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip fallbackPlacement: #flip ].

	self
		assert: html
		equals:
			'<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"fallbackPlacement":"flip"});</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapTooltipTest >> testFallbackPlacementWithArray [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip fallbackPlacement: #(#flip #clockwise)].

	self
		assert: html
		equals:
			'<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"fallbackPlacement":["flip","clockwise"]});</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapTooltipTest >> testOffset [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip offset: 1 ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"offset":1});</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapTooltipTest >> testTemplateForBootstrap4 [

	| html |

	html := self
		renderUsing: [ :canvas | 
			| div tooltip |

			div := canvas div.
			tooltip := canvas jQuery new bootstrapTooltip.
			tooltip
				template: [ :template | 
					template div
						with: [ template div apply: [ :container | container addClass bootstrapCommon arrow ].
							template div
								with: 'Help!'
								applying: [ :container | container addClass bootstrapCommon tooltipInner ]
							]
						applying:
							[ :container :constants | container addClass bootstrapCommon tooltip + ( container setARIARoleTo: #tooltip ) ]
					].
			div script: tooltip
			].

	self
		assert: html
		equals:
			'<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"template":"<div class=\"tooltip\" role=\"tooltip\"><div class=\"arrow\"></div><div class=\"tooltip-inner\">Help!</div></div>"});</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapTooltipTest >> testToggleEnabled [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip toggleEnabled ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("toggleEnabled");</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapTooltipTest >> testUpdate [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip update ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("update");</script>'
]
