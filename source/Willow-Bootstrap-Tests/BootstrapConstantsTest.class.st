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
		assert: Willow constants >> #bootstrap >> #dismiss equals: 'dismiss';
		assert: Willow constants >> #bootstrap >> #parent equals: 'parent';
		assert: Willow constants >> #bootstrap >> #target equals: 'target';
		assert: Willow constants >> #bootstrap >> #toggle equals: 'toggle'.

	self
		assert: Willow constants >> #bootstrap >> #click equals: 'click';
		assert: Willow constants >> #bootstrap >> #focus equals: 'focus';
		assert: Willow constants >> #bootstrap >> #hover equals: 'hover';
		assert: Willow constants >> #bootstrap >> #manual equals: 'manual';
		assert: Willow constants >> #bootstrap >> #buttons equals: 'buttons'
]

{ #category : #tests }
BootstrapConstantsTest >> testRoles [

	self
		assert: Willow constants >> #bootstrap >> #alert equals: 'alert';
		assert: Willow constants >> #bootstrap >> #button equals: 'button';
		assert: Willow constants >> #bootstrap >> #dialog equals: 'dialog';
		assert: Willow constants >> #bootstrap >> #document equals: 'document';
		assert: Willow constants >> #bootstrap >> #group equals: 'group';
		assert: Willow constants >> #bootstrap >> #navigation equals: 'navigation';
		assert: Willow constants >> #bootstrap >> #presentation equals: 'presentation';
		assert: Willow constants >> #bootstrap >> #progressbar equals: 'progressbar';
		assert: Willow constants >> #bootstrap >> #separator equals: 'separator';
		assert: Willow constants >> #bootstrap >> #tablist equals: 'tablist';
		assert: Willow constants >> #bootstrap >> #toolbar equals: 'toolbar'
]
