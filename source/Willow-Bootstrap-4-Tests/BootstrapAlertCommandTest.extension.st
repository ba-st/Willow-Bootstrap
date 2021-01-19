Extension { #name : #BootstrapAlertCommandTest }

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapAlertCommandTest >> testApplyBootstrap4 [

	| html |

	html := self apply: BootstrapAlertCommand light toComponentDefinedBy: [ :canvas | canvas div ].
	self assert: html equals: '<div class="alert alert-light" role="alert"></div>'.

	html := self apply: BootstrapAlertCommand dark toComponentDefinedBy: [ :canvas | canvas div ].
	self assert: html equals: '<div class="alert alert-dark" role="alert"></div>'.

	html := self apply: BootstrapAlertCommand primary toComponentDefinedBy: [ :canvas | canvas div ].
	self assert: html equals: '<div class="alert alert-primary" role="alert"></div>'.

	html := self apply: BootstrapAlertCommand secondary toComponentDefinedBy: [ :canvas | canvas div ].
	self assert: html equals: '<div class="alert alert-secondary" role="alert"></div>'
]
