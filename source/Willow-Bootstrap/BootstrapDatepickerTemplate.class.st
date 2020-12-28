"
I'm a JSObject used to configure the arrow templates of bootstrap-datepicker
"
Class {
	#name : #BootstrapDatepickerTemplate,
	#superclass : #JSObject,
	#instVars : [
		'options'
	],
	#category : #'Willow-Bootstrap-Datepicker'
}

{ #category : #'Instance Creation' }
BootstrapDatepickerTemplate class >> context: aWARenderContext owner: anOwner [

	^ self context: aWARenderContext
]

{ #category : #initialization }
BootstrapDatepickerTemplate >> initialize [

	super initialize.
	options := GRSmallDictionary new.
	options
		at: 'leftArrow' put: '';
		at: 'rightArrow' put: ''
]

{ #category : #printing }
BootstrapDatepickerTemplate >> javascriptContentOn: aStream [

	aStream javascript: options
]

{ #category : #Configuring }
BootstrapDatepickerTemplate >> leftArrow: aLeftArrowRenderable rightArrow: aRightArrowRenderable [

	options
		at: 'leftArrow' put: (self render: aLeftArrowRenderable);
		at: 'rightArrow' put: (self render: aRightArrowRenderable)
]
