Extension { #name : #BootstrapPopoverTest }

{ #category : #'*Willow-Bootstrap-3-Tests' }
BootstrapPopoverTest >> testDestroy [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover destroy ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("destroy");</script>'
]

{ #category : #'*Willow-Bootstrap-3-Tests' }
BootstrapPopoverTest >> testViewport [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover viewport: '#id1' ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"viewport":"#id1"});</script>'
]

{ #category : #'*Willow-Bootstrap-3-Tests' }
BootstrapPopoverTest >> testViewportWithPadding [

	| html |

	html := self
		renderPopoverContentApplying: [ :popover | popover viewport: (Bootstrap3ViewportConfiguration new selector: '#id1' padding: 5) ].

	self
		assert: html
		equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover({"viewport":{"selector":"#id1","padding":5}});</script>'
]
