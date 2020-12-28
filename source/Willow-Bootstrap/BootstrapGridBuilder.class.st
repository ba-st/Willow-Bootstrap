"
I'm a builder easing the creation of Bootstrap grids
"
Class {
	#name : #BootstrapGridBuilder,
	#superclass : #WillowComponentBuilder,
	#instVars : [
		'contents',
		'columnBreakpointBlock',
		'rowCommand',
		'cellCommand'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #testing }
BootstrapGridBuilder class >> isAbstract [

	^ self name = #BootstrapGridBuilder
]

{ #category : #Configuring }
BootstrapGridBuilder >> addContent: aRenderable [

	contents add: aRenderable
]

{ #category : #Configuring }
BootstrapGridBuilder >> applyingToCells: aCellCommand [

	cellCommand := cellCommand + aCellCommand
]

{ #category : #Configuring }
BootstrapGridBuilder >> forExtraSmallDevices [

	self subclassResponsibility
]

{ #category : #Configuring }
BootstrapGridBuilder >> forLargeDevices [

	self subclassResponsibility
]

{ #category : #Configuring }
BootstrapGridBuilder >> forMediumDevices [

	self subclassResponsibility
]

{ #category : #Configuring }
BootstrapGridBuilder >> forSmallDevices [

	self subclassResponsibility
]

{ #category : #initialization }
BootstrapGridBuilder >> initialize [

	super initialize.
	contents := OrderedCollection new.
	rowCommand := [ :row | row addClass bootstrapCommon row ] asWebComponentCommand.
	cellCommand := [  ] asWebComponentCommand
]
