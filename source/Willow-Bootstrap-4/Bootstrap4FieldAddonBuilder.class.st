Class {
	#name : #Bootstrap4FieldAddonBuilder,
	#superclass : #BootstrapFieldAddonBuilder,
	#instVars : [
		'fields',
		'componentsToPrepend',
		'componentsToAppend'
	],
	#category : #'Willow-Bootstrap-4-WebViews'
}

{ #category : #private }
Bootstrap4FieldAddonBuilder >> append: aRenderable [

	componentsToAppend add: aRenderable
]

{ #category : #configuring }
Bootstrap4FieldAddonBuilder >> appendButton: aButtonLikeComponent [

	self append: aButtonLikeComponent
]

{ #category : #configuring }
Bootstrap4FieldAddonBuilder >> appendText: aRenderable [

	self
		append:
			( PhrasingContainerWebView
				wrapping: aRenderable
				applying: [ :span | span addClass bootstrap4 inputGroupText ] )
]

{ #category : #private }
Bootstrap4FieldAddonBuilder >> assertIsCorrectlyConfigured [

	AssertionCheckerBuilder new
		raising: InstanceCreationFailed;
		checking: [ :asserter | 
			asserter
				enforce: [ fields notEmpty ]
				because: 'At least one field to wrap is required.'
				onSuccess: [ :successAsserter | 
					successAsserter
						refuse: [ componentsToAppend isEmpty and: [ componentsToPrepend isEmpty ] ]
						because: 'At least some component must be appended or prepended.'
					]
			];
		buildAndCheck
]

{ #category : #building }
Bootstrap4FieldAddonBuilder >> buildApplying: aCommand [

	self assertIsCorrectlyConfigured.
	^ GenericContainerWebView
		wrapping: [ :canvas | 
			self
				renderPrependedComponentsOn: canvas;
				renderFieldsOn: canvas;
				renderAppendedComponentsOn: canvas
			]
		applying: [ :div | div addClass bootstrapCommon inputGroup + groupCommand + aCommand ]
]

{ #category : #initialization }
Bootstrap4FieldAddonBuilder >> initialize [

	super initialize.
	fields := OrderedCollection new.
	componentsToAppend := OrderedCollection new.
	componentsToPrepend := OrderedCollection new
]

{ #category : #private }
Bootstrap4FieldAddonBuilder >> prepend: aRenderable [

	componentsToPrepend add: aRenderable
]

{ #category : #configuring }
Bootstrap4FieldAddonBuilder >> prependButton: aButtonLikeComponent [

	self prepend: aButtonLikeComponent
]

{ #category : #configuring }
Bootstrap4FieldAddonBuilder >> prependText: aRenderable [

	self
		prepend:
			( PhrasingContainerWebView
				wrapping: aRenderable
				applying: [ :span | span addClass bootstrap4 inputGroupText ] )
]

{ #category : #private }
Bootstrap4FieldAddonBuilder >> renderAppendedComponentsOn: canvas [

	^ componentsToAppend
		ifNotEmpty:
			[ canvas div with: componentsToAppend applying: [ :div | div addClass bootstrap4 inputGroupAppend ] ]
]

{ #category : #private }
Bootstrap4FieldAddonBuilder >> renderFieldsOn: canvas [

	canvas render: fields
]

{ #category : #private }
Bootstrap4FieldAddonBuilder >> renderPrependedComponentsOn: canvas [

	componentsToPrepend
		ifNotEmpty: [ canvas div
				with: componentsToPrepend
				applying: [ :div | div addClass bootstrap4 inputGroupPrepend ] ]
]

{ #category : #configuring }
Bootstrap4FieldAddonBuilder >> wrapping: aField [

	fields add: aField
]
