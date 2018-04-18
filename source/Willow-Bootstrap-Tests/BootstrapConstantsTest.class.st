"
A BootstrapConstantsTest is a test class for testing the behavior of BootstrapConstants
"
Class {
	#name : #BootstrapConstantsTest,
	#superclass : #TestCase,
	#category : 'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #tests }
BootstrapConstantsTest >> testDataAPI [

	self
		assert: BootstrapConstants dismiss equals: 'dismiss';
		assert: BootstrapConstants parent equals: 'parent';
		assert: BootstrapConstants target equals: 'target';
		assert: BootstrapConstants toggle equals: 'toggle'.

	self
		assert: BootstrapConstants click equals: 'click';
		assert: BootstrapConstants focus equals: 'focus';
		assert: BootstrapConstants hover equals: 'hover';
		assert: BootstrapConstants manual equals: 'manual';
		assert: BootstrapConstants buttons equals: 'buttons'
]

{ #category : #tests }
BootstrapConstantsTest >> testRoles [

	self
		assert: BootstrapConstants alert equals: 'alert';
		assert: BootstrapConstants button equals: 'button';
		assert: BootstrapConstants dialog equals: 'dialog';
		assert: BootstrapConstants document equals: 'document';
		assert: BootstrapConstants group equals: 'group';
		assert: BootstrapConstants navigation equals: 'navigation';
		assert: BootstrapConstants presentation equals: 'presentation';
		assert: BootstrapConstants progressbar equals: 'progressbar';
		assert: BootstrapConstants separator equals: 'separator';
		assert: BootstrapConstants tablist equals: 'tablist';
		assert: BootstrapConstants toolbar equals: 'toolbar'
]
