"
A BootstrapTooltipTest is a test class for testing the behavior of BootstrapTooltip
"
Class {
	#name : #BootstrapTooltipTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-Tests-Plugins'
}

{ #category : #rendering }
BootstrapTooltipTest >> renderTooltipContentApplying: aBlock [

	^ self
		renderUsing: [ :canvas | 
			| div tooltip |

			div := canvas div.
			tooltip := canvas jQuery new bootstrapTooltip.
			aBlock value: tooltip.
			div script: tooltip ]
]

{ #category : #'tests-Options' }
BootstrapTooltipTest >> testAnimation [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip animation: true ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"animation":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapTooltipTest >> testContainer [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip container: 'body' ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"container":"body"});</script>'
]

{ #category : #'tests-Options' }
BootstrapTooltipTest >> testDelay [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip delay: 100 ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"delay":100});</script>'.

	html := self renderTooltipContentApplying: [ :tooltip | tooltip delay: (BootstrapDelayConfiguration new show: 200 hide: 100) ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"delay":{"show":200,"hide":100}});</script>'
]

{ #category : #'tests-Methods' }
BootstrapTooltipTest >> testDestroy [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip destroy ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("destroy");</script>'
]

{ #category : #'tests-Methods' }
BootstrapTooltipTest >> testHide [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip hide ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("hide");</script>'
]

{ #category : #'tests-Options' }
BootstrapTooltipTest >> testHtml [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip html: true ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"html":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapTooltipTest >> testHtmlTitle [

	| html |

	html := self
		renderTooltipContentApplying: [ :tooltip | 
			tooltip
				htmlTitle:
					( ContainerWebView
						wrapping: 'A complex tooltip'
						intoElementBuiltUsing: [ :theCanvas | theCanvas div ]
						applying: [ :container | container addClass bootstrapCommon container ] )
			].

	self
		assert: html
		equals:
			'<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"html":true,"title":"<div class=\"container\">A complex tooltip</div>"});</script>'
]

{ #category : #'tests-Events' }
BootstrapTooltipTest >> testOnHidden [

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHiddenTooltip: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hidden.bs.tooltip",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapTooltipTest >> testOnHide [

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHideTooltip: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hide.bs.tooltip",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapTooltipTest >> testOnInserted [

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onInsertedTooltip: JSFunction new) ].
	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("inserted.bs.tooltip",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapTooltipTest >> testOnShow [

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShowTooltip: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("show.bs.tooltip",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapTooltipTest >> testOnShown [

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShownTooltip: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("shown.bs.tooltip",function(){});</script>'
]

{ #category : #'tests-Options' }
BootstrapTooltipTest >> testPlacement [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip placement: #left ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"placement":"left"});</script>'
]

{ #category : #'tests-Options' }
BootstrapTooltipTest >> testPlacementWithFunction [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip placement: JSFunction new ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"placement":function(){}});</script>'
]

{ #category : #'tests-Options' }
BootstrapTooltipTest >> testSanitize [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip sanitize: true ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"sanitize":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapTooltipTest >> testSanitizeFunction [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip sanitizeFunction: JSFunction new ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"sanitizeFn":function(){}});</script>'
]

{ #category : #'tests-Options' }
BootstrapTooltipTest >> testSelector [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip selector: '.has-popover' ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"selector":".has-popover"});</script>'
]

{ #category : #'tests-Methods' }
BootstrapTooltipTest >> testShow [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip show ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("show");</script>'
]

{ #category : #'tests-Options' }
BootstrapTooltipTest >> testTitle [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip title: 'Tooltip' ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"title":"Tooltip"});</script>'
]

{ #category : #'tests-Methods' }
BootstrapTooltipTest >> testToggle [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip toggle ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip("toggle");</script>'
]

{ #category : #'tests-Options' }
BootstrapTooltipTest >> testTrigger [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip trigger: #manual ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"trigger":"manual"});</script>'
]

{ #category : #'tests-Options' }
BootstrapTooltipTest >> testWhiteList [

	| html |

	html := self renderTooltipContentApplying: [ :tooltip | tooltip 	whiteList:
					{( 'a' -> #() ).
					( 'img' -> #('src' 'alt') )} ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").tooltip({"whiteList":{"a":[],"img":["src","alt"]}});</script>'
]
