Class {
	#name : #BootstrapDropdownBuilder,
	#superclass : #WillowComponentBuilder,
	#instVars : [
		'supplier',
		'menuItems',
		'buttonBinding'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #'instance creation' }
BootstrapDropdownBuilder class >> using: aComponentSupplier [

	^ self new initializeUsing: aComponentSupplier
]

{ #category : #configuring }
BootstrapDropdownBuilder >> addActionLabeled: aRenderable executing: anActionBlock [

	self addActionLabeled: aRenderable executing: anActionBlock applying: [  ]
]

{ #category : #configuring }
BootstrapDropdownBuilder >> addActionLabeled: aRenderable executing: anActionBlock applying: aCommand [

	self subclassResponsibility
]

{ #category : #configuring }
BootstrapDropdownBuilder >> addDivider [

	self subclassResponsibility
]

{ #category : #configuring }
BootstrapDropdownBuilder >> addHeaderLabeled: aRenderable [

	self subclassResponsibility
]

{ #category : #configuring }
BootstrapDropdownBuilder >> beRightAligned [

	self subclassResponsibility
]

{ #category : #private }
BootstrapDropdownBuilder >> dropdownCommandFor: button using: constants [

	^ button addClass bootstrapCommon dropdownToggle
		+ ( button setData: constants >> #bootstrap3  >> #toggle to: constants >> #bootstrap3 >> #dropdown )
		+ ( button setARIAAttribute: 'haspopup' to: 'true' )
		+ ( button setARIAAttribute: 'expanded' to: 'false' )
]

{ #category : #initialization }
BootstrapDropdownBuilder >> initializeUsing: aSupplier [

	supplier := aSupplier.
	buttonBinding := Binding undefinedExplainedBy: 'Missing Dropdown Button Configuration'.
	menuItems := OrderedCollection new
]

{ #category : #configuring }
BootstrapDropdownBuilder >> labeled: aRenderable applying: aComponentCommand [

	self subclassResponsibility
]
