Extension { #name : #BootstrapModalTest }

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapModalTest >> testDispose [

	| html |

	html := self renderModalContentApplying: [ :modal | modal dispose ].

	self
		assert: html
		equals:
			'<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal("dispose");</script>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapModalTest >> testFocus [

	| html |

	html := self renderModalContentApplying: [ :modal | modal focus: false ].

	self
		assert: html
		equals:
			'<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal({"focus":false});</script>'
]
