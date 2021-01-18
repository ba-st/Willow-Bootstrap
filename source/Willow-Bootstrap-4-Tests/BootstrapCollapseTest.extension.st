Extension { #name : #BootstrapCollapseTest }

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapCollapseTest >> testDispose [

	| html |

	html := self renderCollapsibleContentApplying: [ :collapse | collapse dispose ].
	self assert: html equals: '<div id="id1"></div><script type="text/javascript">$("#id1").collapse("dispose");</script>'
]
