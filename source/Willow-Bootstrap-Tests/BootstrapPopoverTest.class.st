"
A BootstrapPopoverTest is a test class for testing the behavior of BootstrapPopover
"
Class {
	#name : #BootstrapPopoverTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-Tests-Plugins'
}

{ #category : #rendering }
BootstrapPopoverTest >> renderPopoverContentApplying: aBlock [

	^ self
		renderUsing: [ :canvas | 
			| div popover |

			div := canvas div.
			popover := canvas jQuery new bootstrapPopover.
			aBlock value: popover.
			div script: popover ]
]

{ #category : #'tests-Options' }
BootstrapPopoverTest >> testAnimation [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover animation: true ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"animation":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapPopoverTest >> testContainer [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover container: 'body' ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"container":"body"});</script>'
]

{ #category : #'tests-Options' }
BootstrapPopoverTest >> testContent [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover content: 'Message' ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"content":"Message"});</script>'
]

{ #category : #'tests-Options' }
BootstrapPopoverTest >> testDelay [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover delay: 100 ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"delay":100});</script>'.

	html := self renderPopoverContentApplying: [ :popover | popover delay: (BootstrapDelayConfiguration new show: 200 hide: 100) ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"delay":{"show":200,"hide":100}});</script>'
]

{ #category : #'tests-Methods' }
BootstrapPopoverTest >> testHide [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover hide ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("hide");</script>'
]

{ #category : #'tests-Options' }
BootstrapPopoverTest >> testHtml [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover html: true ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"html":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapPopoverTest >> testHtmlContent [

	| html |

	html := self
		renderPopoverContentApplying: [ :popover | 
			popover
				htmlContent:
					( ContainerWebView
						wrapping: 'A more complex rendering'
						intoElementBuiltUsing: [ :theCanvas | theCanvas div ]
						applying: [ :container | container addClass bootstrapCommon container ] )
			].

	self
		assert: html
		equals:
			'<div id="id1"></div><script type="text/javascript">$("#id1").popover({"html":true,"content":"<div class=\"container\">A more complex rendering</div>"});</script>'
]

{ #category : #'tests-Options' }
BootstrapPopoverTest >> testHtmlTitle [

	| html |

	html := self
		renderPopoverContentApplying: [ :popover | 
			popover
				htmlTitle:
					( ContainerWebView
						wrapping: 'A complex title'
						intoElementBuiltUsing: [ :theCanvas | theCanvas div ]
						applying: [ :container | container addClass bootstrapCommon container ] )
			].

	self
		assert: html
		equals:
			'<div id="id1"></div><script type="text/javascript">$("#id1").popover({"html":true,"title":"<div class=\"container\">A complex title</div>"});</script>'
]

{ #category : #'tests-Events' }
BootstrapPopoverTest >> testOnHidden [

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHiddenPopover: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hidden.bs.popover",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapPopoverTest >> testOnHide [

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHidePopover: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hide.bs.popover",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapPopoverTest >> testOnInserted [

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onInsertedPopover: JSFunction new) ].
	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("inserted.bs.popover",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapPopoverTest >> testOnShow [

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShowPopover: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("show.bs.popover",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapPopoverTest >> testOnShown [

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShownPopover: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("shown.bs.popover",function(){});</script>'
]

{ #category : #'tests-Options' }
BootstrapPopoverTest >> testPlacement [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover placement: #left ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"placement":"left"});</script>'
]

{ #category : #'tests-Options' }
BootstrapPopoverTest >> testPlacementWithFunction [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover placement: JSFunction new ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"placement":function(){}});</script>'
]

{ #category : #'tests-Options' }
BootstrapPopoverTest >> testSanitize [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover sanitize: true ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"sanitize":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapPopoverTest >> testSanitizeFunction [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover sanitizeFunction: JSFunction new ].

	self
		assert: html
		equals:
			'<div id="id1"></div><script type="text/javascript">$("#id1").popover({"sanitizeFn":function(){}});</script>'
]

{ #category : #'tests-Options' }
BootstrapPopoverTest >> testSelector [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover selector: '.has-popover' ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"selector":".has-popover"});</script>'
]

{ #category : #'tests-Methods' }
BootstrapPopoverTest >> testShow [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover show ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("show");</script>'
]

{ #category : #'tests-Options' }
BootstrapPopoverTest >> testTitle [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover title: 'Popover' ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"title":"Popover"});</script>'
]

{ #category : #'tests-Methods' }
BootstrapPopoverTest >> testToggle [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover toggle ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("toggle");</script>'
]

{ #category : #'tests-Options' }
BootstrapPopoverTest >> testTrigger [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover trigger: #manual ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"trigger":"manual"});</script>'
]

{ #category : #'tests-Options' }
BootstrapPopoverTest >> testWhiteList [

	| html |

	html := self
		renderPopoverContentApplying: [ :popover | 
			popover
				whiteList:
					{( 'a' -> #() ).
					( 'img' -> #('src' 'alt') )}
			].

	self
		assert: html
		equals:
			'<div id="id1"></div><script type="text/javascript">$("#id1").popover({"whiteList":{"a":[],"img":["src","alt"]}});</script>'
]
