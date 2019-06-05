Extension { #name : #BootstrapPopoverTest }

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapPopoverTest >> testBoundary [

	| html |

	html := self
		renderPopoverContentApplying: [ :popover | popover boundary: #scrollParent].

	self
		assert: html
		equals:
			'<div id="id1"></div><script type="text/javascript">$("#id1").popover({"boundary":"scrollParent"});</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapPopoverTest >> testDisable [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover disable ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("disable");</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapPopoverTest >> testDispose [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover dispose ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("dispose");</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapPopoverTest >> testEnable [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover enable ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("enable");</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapPopoverTest >> testFallbackPlacement [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover fallbackPlacement: #flip ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"fallbackPlacement":"flip"});</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapPopoverTest >> testFallbackPlacementWithArray [

	| html |

	html := self
		renderPopoverContentApplying: [ :popover | popover fallbackPlacement: #(#flip #clockwise) ].

	self
		assert: html
		equals:
			'<div id="id1"></div><script type="text/javascript">$("#id1").popover({"fallbackPlacement":["flip","clockwise"]});</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapPopoverTest >> testOffset [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover offset: 1 ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"offset":1});</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapPopoverTest >> testTemplateForBootstrap4 [

	| html |

	html := self
		renderUsing: [ :canvas | 
			| div popover |

			div := canvas div.
			popover := canvas jQuery new bootstrapPopover.
			popover
				template: [ :template | 
					template div
						with: [ template div apply: [ :container | container addClass bootstrapCommon arrow ].
							template
								render:
									( HeadingWebView
										displaying: ''
										withLevel: 3
										applying: [ :container | container addClass bootstrap4 popoverHeader ] ).
							template div
								with: 'Body'
								applying: [ :container | container addClass bootstrap4 popoverBody ]
							]
						applying:
							[ :container :constants | container addClass bootstrapCommon popover + ( container setARIARoleTo: #tooltip ) ]
					].
			div script: popover
			].

	self
		assert: html
		equals:
			'<div id="id1"></div><script type="text/javascript">$("#id1").popover({"template":"<div class=\"popover\" role=\"tooltip\"><div class=\"arrow\"></div><h3 class=\"popover-header\"></h3><div class=\"popover-body\">Body</div></div>"});</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapPopoverTest >> testToggleEnabled [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover toggleEnabled ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("toggleEnabled");</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapPopoverTest >> testUpdate [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover update ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("update");</script>'
]
