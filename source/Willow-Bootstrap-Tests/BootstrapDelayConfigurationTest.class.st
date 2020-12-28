"
A BootstrapDelayConfigurationTest is a test class for testing the behavior of BootstrapDelayConfiguration
"
Class {
	#name : #BootstrapDelayConfigurationTest,
	#superclass : #TestCase,
	#category : 'Willow-Bootstrap-Tests-Plugins'
}

{ #category : #'tests-printing' }
BootstrapDelayConfigurationTest >> testJavascriptContentOn [

	self
		assert: BootstrapDelayConfiguration new asJavascript equals: '{"show":0,"hide":0}';
		assert: (BootstrapDelayConfiguration new show: 500 hide: 200) asJavascript equals: '{"show":500,"hide":200}'
]
