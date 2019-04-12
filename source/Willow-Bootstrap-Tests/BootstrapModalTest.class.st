"
A BootstrapModalTest is a test class for testing the behavior of BootstrapModal
"
Class {
	#name : #BootstrapModalTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-Plugins'
}

{ #category : #private }
BootstrapModalTest >> renderModalContentApplying: aBlock [

	^ self
		renderUsing: [ :canvas | 
			| modal |

			modal := canvas jQuery new bootstrapModal.
			aBlock value: modal.
			canvas div
				apply: [ :div | div addClass bootstrap3 modal ];
				script: modal
			]
]

{ #category : #'tests-Options' }
BootstrapModalTest >> testBackdrop [

	| html |

	html := self renderModalContentApplying: [ :modal | modal backdrop: #static ].

	self assert: html equals: '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal({"backdrop":"static"});</script>'
]

{ #category : #'tests-Options' }
BootstrapModalTest >> testBackdropBoolean [

	| html |

	html := self renderModalContentApplying: [ :modal | modal backdrop: true ].

	self
		assert: html
		equals: '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal({"backdrop":true});</script>'
]

{ #category : #'tests-Methods' }
BootstrapModalTest >> testHide [

	| html |

	html := self renderModalContentApplying: [ :modal | modal hide ].

	self assert: html equals: '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal("hide");</script>'
]

{ #category : #'tests-Methods' }
BootstrapModalTest >> testOnHidden [

	| html |

	html := self renderModalContentApplying: [ :modal | modal onHidden: JSFunction new ].

	self assert: html equals:  '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal().on("hidden.bs.modal",function(){});</script>'
]

{ #category : #'tests-Methods' }
BootstrapModalTest >> testOnHide [

	| html |

	html := self renderModalContentApplying: [ :modal | modal onHide: JSFunction new ].

	self assert: html equals:  '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal().on("hide.bs.modal",function(){});</script>'
]

{ #category : #'tests-Methods' }
BootstrapModalTest >> testOnShow [

	| html |

	html := self renderModalContentApplying: [ :modal | modal onShow: JSFunction new ].

	self assert: html equals:  '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal().on("show.bs.modal",function(){});</script>'
]

{ #category : #'tests-Methods' }
BootstrapModalTest >> testOnShown [

	| html |

	html := self renderModalContentApplying: [ :modal | modal onShown: JSFunction new ].

	self assert: html equals:  '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal().on("shown.bs.modal",function(){});</script>'
]

{ #category : #'tests-Options' }
BootstrapModalTest >> testOptions [

	| html |

	html := self
		renderModalContentApplying: [ :modal | 
			modal
				backdrop: false;
				keyboard: false;
				show: true ].

	self
		assert: html
		equals:
			'<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal({"backdrop":false,"keyboard":false,"show":true});</script>'
]

{ #category : #'tests-Methods' }
BootstrapModalTest >> testShow [

	| html |

	html := self renderModalContentApplying: [ :modal | modal show ].

	self assert: html equals: '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal("show");</script>'
]

{ #category : #'tests-Methods' }
BootstrapModalTest >> testToggle [

	| html |

	html := self renderModalContentApplying: [ :modal | modal toggle ].

	self assert: html equals: '<div class="modal" id="id1"></div><script type="text/javascript">$("#id1").modal("toggle");</script>'
]
