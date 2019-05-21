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
