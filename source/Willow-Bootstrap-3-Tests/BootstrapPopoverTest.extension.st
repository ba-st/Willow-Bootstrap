Extension { #name : #BootstrapPopoverTest }

{ #category : #'*Willow-Bootstrap-3-Tests' }
BootstrapPopoverTest >> testDestroy [

	| html |

	html := self renderPopoverContentApplying: [ :popover | popover destroy ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").popover("destroy");</script>'
]

{ #category : #'*Willow-Bootstrap-3-Tests' }
BootstrapPopoverTest >> testTemplateForBootstrap3 [

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
										applying: [ :container | container addClass bootstrap3 popoverTitle ] ).
							template div
								with: ( Bootstrap3IconWebView representing: Glyphicons menuUp )
								applying: [ :container | container addClass bootstrap3 popoverContent ]
							]
						applying:
							[ :container :constants | container addClass bootstrapCommon popover + ( container setARIARoleTo: #tooltip ) ]
					].
			div script: popover
			].

	self
		assert: html
		equals:
			'<div id="id1"></div><script type="text/javascript">$("#id1").popover({"template":"<div class=\"popover\" role=\"tooltip\"><div class=\"arrow\"></div><h3 class=\"popover-title\"></h3><div class=\"popover-content\"><span class=\"glyphicon glyphicon-menu-up\"></span></div></div>"});</script>'
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
