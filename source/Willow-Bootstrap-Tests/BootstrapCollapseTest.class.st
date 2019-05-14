"
A BootstrapCollapseTest is a test class for testing the behavior of BootstrapCollapse
"
Class {
	#name : #BootstrapCollapseTest,
	#superclass : #BWRenderingTest,
	#category : 'Willow-Bootstrap-Tests-Plugins'
}

{ #category : #private }
BootstrapCollapseTest >> renderCollapsibleContentApplying: aBlock [

	^ self
		renderUsing: [ :canvas | 
			| div collapse |

			div := canvas div.
			collapse := canvas jQuery new bootstrapCollapse.
			aBlock value: collapse.
			div script: collapse ]
]

{ #category : #'tests-Methods' }
BootstrapCollapseTest >> testHide [

	| html |

	html := self renderCollapsibleContentApplying: [ :collapse | collapse hide ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").collapse("hide");</script>'
]

{ #category : #'tests-Events' }
BootstrapCollapseTest >> testOnHidden [

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHiddenCollapse: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hidden.bs.collapse",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapCollapseTest >> testOnHide [

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onHideCollapse: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("hide.bs.collapse",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapCollapseTest >> testOnShow [

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShowCollapse: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("show.bs.collapse",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapCollapseTest >> testOnShown [

	| html |

	html := self renderUsing: [ :canvas | canvas div script: (canvas jQuery this onShownCollapse: JSFunction new) ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").on("shown.bs.collapse",function(){});</script>'
]

{ #category : #'tests-Options' }
BootstrapCollapseTest >> testParent [

	| html |

	html := self renderCollapsibleContentApplying: [ :collapse | collapse parent: false ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").collapse({"parent":false});</script>'
]

{ #category : #'tests-Methods' }
BootstrapCollapseTest >> testShow [

	| html |

	html := self renderCollapsibleContentApplying: [ :collapse | collapse show ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").collapse("show");</script>'
]

{ #category : #'tests-Options' }
BootstrapCollapseTest >> testToggle [

	| html |

	html := self renderCollapsibleContentApplying: [ :collapse | collapse toggle: true ].

	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").collapse({"toggle":true});</script>'
]

{ #category : #'tests-Methods' }
BootstrapCollapseTest >> testToggleMethod [

	| html |

	html := self renderCollapsibleContentApplying: [ :collapse | collapse toggle ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").collapse("toggle");</script>'
]
