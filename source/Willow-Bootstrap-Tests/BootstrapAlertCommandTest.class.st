"
A BootstrapAlertCommandTest is a test class for testing the behavior of BootstrapAlertCommand
"
Class {
	#name : #BootstrapAlertCommandTest,
	#superclass : #BWRenderingTest,
	#category : 'Willow-Bootstrap-Tests-Frontend'
}

{ #category : #'tests-processing' }
BootstrapAlertCommandTest >> testApplyToOn [

	| html |

	html := self apply: BootstrapAlertCommand success toComponentDefinedBy: [ :canvas | canvas div ].
	self assert: html equals: '<div class="alert alert-success" role="alert"></div>'.

	html := self apply: BootstrapAlertCommand informational toComponentDefinedBy: [ :canvas | canvas div ].
	self assert: html equals: '<div class="alert alert-info" role="alert"></div>'.

	html := self apply: BootstrapAlertCommand danger toComponentDefinedBy: [ :canvas | canvas div ].
	self assert: html equals: '<div class="alert alert-danger" role="alert"></div>'.

	html := self apply: BootstrapAlertCommand warning toComponentDefinedBy: [ :canvas | canvas div ].
	self assert: html equals: '<div class="alert alert-warning" role="alert"></div>'
]
