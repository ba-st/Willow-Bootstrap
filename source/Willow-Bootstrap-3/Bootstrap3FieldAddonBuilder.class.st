Class {
	#name : #Bootstrap3FieldAddonBuilder,
	#superclass : #BootstrapFieldAddonBuilder,
	#instVars : [
		'fieldBinding',
		'prependedTextOptional',
		'prependedButtons',
		'appendedTextOptional',
		'appendedButtons'
	],
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #configuring }
Bootstrap3FieldAddonBuilder >> appendButton: aButtonLikeComponent [

	appendedButtons add: aButtonLikeComponent
]

{ #category : #configuring }
Bootstrap3FieldAddonBuilder >> appendText: aRenderable [

	appendedTextOptional := Optional
		containing:
			( GenericContainerWebView
				wrapping: aRenderable
				applying: [ :div | div addClass bootstrap3 inputGroupAddon ] )
]

{ #category : #private }
Bootstrap3FieldAddonBuilder >> assertIsCorrectlyConfigured [

	AssertionChecker
		enforce: [ fieldBinding isDefined ]
			because: 'At least one field to wrap is required.'
			raising: InstanceCreationFailed;
		enforce: [ self isSomethingPreprended or: [ self isSomethingAppended ] ]
			because: 'At least some component must be appended or prepended.'
			raising: InstanceCreationFailed
]

{ #category : #building }
Bootstrap3FieldAddonBuilder >> buildApplying: aCommand [

	self assertIsCorrectlyConfigured.
	^ GenericContainerWebView
		wrapping: [ :canvas | 
			self
				renderPrependedComponentsOn: canvas;
				renderFieldOn: canvas;
				renderAppendedComponentsOn: canvas
			]
		applying: [ :div | div addClass bootstrapCommon inputGroup + groupCommand + aCommand ]
]

{ #category : #initialization }
Bootstrap3FieldAddonBuilder >> initialize [

	super initialize.
	fieldBinding := Binding undefinedExplainedBy: 'Missing field'.
	prependedTextOptional := Optional unused.
	prependedButtons := OrderedCollection new.
	appendedTextOptional := Optional unused.
	appendedButtons := OrderedCollection new
]

{ #category : #private }
Bootstrap3FieldAddonBuilder >> isSomethingAppended [

	^ appendedTextOptional withContentDo: [ true ] ifUnused: [ appendedButtons notEmpty ]
]

{ #category : #private }
Bootstrap3FieldAddonBuilder >> isSomethingPreprended [

	^ prependedTextOptional withContentDo: [ true ] ifUnused: [ prependedButtons notEmpty ]
]

{ #category : #configuring }
Bootstrap3FieldAddonBuilder >> prependButton: aButtonLikeComponent [

	prependedButtons add: aButtonLikeComponent
]

{ #category : #configuring }
Bootstrap3FieldAddonBuilder >> prependText: aRenderable [

	prependedTextOptional := Optional
		containing:
			( GenericContainerWebView
				wrapping: aRenderable
				applying: [ :div | div addClass bootstrap3 inputGroupAddon ] )
]

{ #category : #private }
Bootstrap3FieldAddonBuilder >> renderAppendedComponentsOn: aCanvas [

	"Bootstrap 3 don't allow mixing buttons and text in addons"

	appendedTextOptional
		withContentDo: [ :text | aCanvas render: text ]
		ifUnused: [ appendedButtons
				ifNotEmpty:
					[ aCanvas div with: appendedButtons applying: [ :div | div addClass bootstrap3 inputGroupButton ] ]
			]
]

{ #category : #private }
Bootstrap3FieldAddonBuilder >> renderFieldOn: aCanvas [

	aCanvas render: fieldBinding content
]

{ #category : #private }
Bootstrap3FieldAddonBuilder >> renderPrependedComponentsOn: aCanvas [

	"Bootstrap 3 don't allow mixing buttons and text in addons"

	prependedTextOptional
		withContentDo: [ :text | aCanvas render: text ]
		ifUnused: [ prependedButtons
				ifNotEmpty:
					[ aCanvas div with: prependedButtons applying: [ :div | div addClass bootstrap3 inputGroupButton ] ]
			]
]

{ #category : #configuring }
Bootstrap3FieldAddonBuilder >> wrapping: aField [

	fieldBinding := Binding to: aField
]
