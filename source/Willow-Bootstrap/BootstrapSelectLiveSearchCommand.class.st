"
I'm a component command enabling the live search options on Bootstrap Select using the Data-API
"
Class {
	#name : #BootstrapSelectLiveSearchCommand,
	#superclass : #WebComponentCommand,
	#instVars : [
		'normalize',
		'placeholderOptional',
		'searchStyle'
	],
	#category : #'Willow-Bootstrap-Frontend'
}

{ #category : #'Instance Creation' }
BootstrapSelectLiveSearchCommand class >> default [

	^ self normalize: false placeholderOptional: Optional unused style: Constants >> #bootstrap >> #contains
]

{ #category : #'Instance Creation' }
BootstrapSelectLiveSearchCommand class >> normalize: aBoolean placeholderOptional: anOptional style: theSearchStyle [

	^ self new initializeNormalize: aBoolean placeholderOptional: anOptional style: theSearchStyle
]

{ #category : #'Instance Creation' }
BootstrapSelectLiveSearchCommand class >> normalize: aBoolean placeholderText: aString style: aSearchStyle [

	^ self normalize: aBoolean placeholderOptional: (Optional containing: aString) style: aSearchStyle
]

{ #category : #processing }
BootstrapSelectLiveSearchCommand >> applyTo: aComponent on: aCanvas [

	self
		declare: 'live-search'
			with: true greaseString
			applyingTo: aComponent
			on: aCanvas;
		declare: 'live-search-normalize'
			with: normalize
			applyingTo: aComponent
			on: aCanvas.
	placeholderOptional
		withContentDo: [ :placeholder | 
			self
				declare: 'live-search-placeholder'
				with: placeholder
				applyingTo: aComponent
				on: aCanvas ].
	self
		declare: 'live-search-style'
		with: searchStyle
		applyingTo: aComponent
		on: aCanvas
]

{ #category : #private }
BootstrapSelectLiveSearchCommand >> declare: aMetadataKey with: aMetadataValue applyingTo: aComponent on: aCanvas [

	(ComponentMetadataCommand toDeclare: aMetadataKey with: aMetadataValue) applyTo: aComponent on: aCanvas
]

{ #category : #initialization }
BootstrapSelectLiveSearchCommand >> initializeNormalize: aBoolean placeholderOptional: anOptional style: theSearchStyle [

	normalize := aBoolean greaseString.
	placeholderOptional := anOptional.
	searchStyle := theSearchStyle
]
