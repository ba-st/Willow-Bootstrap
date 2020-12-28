"
A BootstrapViewportConfigurationTest is a test class for testing the behavior of BootstrapViewportConfiguration
"
Class {
	#name : #Bootstrap3ViewportConfigurationTest,
	#superclass : #TestCase,
	#category : #'Willow-Bootstrap-3-Tests-Plugins'
}

{ #category : #'tests-printing' }
Bootstrap3ViewportConfigurationTest >> testJavascriptContentOn [

	self
		assert: Bootstrap3ViewportConfiguration new asJavascript equals: '{"selector":"body","padding":0}';
		assert: (Bootstrap3ViewportConfiguration new selector: 'div' padding: 15) asJavascript equals: '{"selector":"div","padding":15}'
]
