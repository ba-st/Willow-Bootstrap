"
A BootstrapViewportConfigurationTest is a test class for testing the behavior of BootstrapViewportConfiguration
"
Class {
	#name : #BootstrapViewportConfigurationTest,
	#superclass : #TestCase,
	#category : 'Willow-Bootstrap-Tests-Plugins'
}

{ #category : #'tests-printing' }
BootstrapViewportConfigurationTest >> testJavascriptContentOn [

	self
		assert: BootstrapViewportConfiguration new asJavascript equals: '{"selector":"body","padding":0}';
		assert: (BootstrapViewportConfiguration new selector: 'div' padding: 15) asJavascript equals: '{"selector":"div","padding":15}'
]
