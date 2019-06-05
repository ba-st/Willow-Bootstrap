Class {
	#name : #BootstrapFieldAddonBuilder,
	#superclass : #WillowComponentBuilder,
	#instVars : [
		'groupCommand'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #testing }
BootstrapFieldAddonBuilder class >> isAbstract [

	^ self name = #BootstrapFieldAddonBuilder
]

{ #category : #configuring }
BootstrapFieldAddonBuilder >> appendButton: aButtonLikeComponent [

	self subclassResponsibility
]

{ #category : #configuring }
BootstrapFieldAddonBuilder >> appendText: aRenderable [

	self subclassResponsibility
]

{ #category : #configuring }
BootstrapFieldAddonBuilder >> beLarge [

	groupCommand := [ :div | div addClass bootstrapCommon inputGroupLarge ]
]

{ #category : #configuring }
BootstrapFieldAddonBuilder >> beSmall [

	groupCommand := [ :div | div addClass bootstrapCommon inputGroupSmall ]
]

{ #category : #initialization }
BootstrapFieldAddonBuilder >> initialize [

	groupCommand := CompositeComponentCommand empty
]

{ #category : #configuring }
BootstrapFieldAddonBuilder >> prependButton: aButtonLikeComponent [

	self subclassResponsibility
]

{ #category : #configuring }
BootstrapFieldAddonBuilder >> prependText: aRenderable [

	self subclassResponsibility
]

{ #category : #Configuring }
BootstrapFieldAddonBuilder >> wrapping: aField [

	self subclassResponsibility
]
