Class {
	#name : #Bootstrap4FieldAddonBuilderTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-4-Tests-WebViews'
}

{ #category : #private }
Bootstrap4FieldAddonBuilderTest >> supplier [

	^ Bootstrap4ComponentSupplier online
]

{ #category : #tests }
Bootstrap4FieldAddonBuilderTest >> testCantCreateWithoutAddons [

	self
		should: [ self supplier fieldAddonBuilder
				wrapping: ( self supplier singleLineTextFieldApplying: [  ] );
				build
			]
		raise: InstanceCreationFailed
		withMessageText: 'At least some component must be appended or prepended.'
]

{ #category : #tests }
Bootstrap4FieldAddonBuilderTest >> testCantCreateWithoutFields [

	self
		should: [ self supplier fieldAddonBuilder
				prependText: '$';
				build
			]
		raise: InstanceCreationFailed
		withMessageText: 'At least one field to wrap is required.'
]

{ #category : #tests }
Bootstrap4FieldAddonBuilderTest >> testRenderContentOn [

	| field html |

	field := self supplier fieldAddonBuilder
		wrapping: ( self supplier naturalNumberFieldApplying: [  ] );
		prependText: 'USD';
		appendText: '.00';
		build.

	html := self render: field.

	self
		assert: html
		equals:
			'<div class="input-group"><div class="input-group-prepend"><span class="input-group-text">USD</span></div><input value="" name="1" type="number" class="form-control text-right" min="0"/><div class="input-group-append"><span class="input-group-text">.00</span></div></div>'
]

{ #category : #tests }
Bootstrap4FieldAddonBuilderTest >> testRenderContentOnWithButton [

	| field html |

	field := self supplier fieldAddonBuilder
		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );
		appendButton:
			( self supplier
				asynchronicButtonLabeled: 'Search!'
				applying: [ :button | button addClass bootstrapCommon buttonPrimary ] );
		build.

	html := self render: field.

	self
		assert: html
		equals:
			'<div class="input-group"><input value="" name="1" class="form-control" type="text"/><div class="input-group-append"><button class="btn btn-primary" type="button">Search!</button></div></div>'
]

{ #category : #tests }
Bootstrap4FieldAddonBuilderTest >> testRenderLarge [

	| field html |

	field := self supplier fieldAddonBuilder
		prependText: '@';
		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );
		beLarge;
		build.

	html := self render: field.

	self
		assert: html
		equals:
			'<div class="input-group input-group-lg"><div class="input-group-prepend"><span class="input-group-text">@</span></div><input value="" name="1" class="form-control" type="text"/></div>'
]

{ #category : #tests }
Bootstrap4FieldAddonBuilderTest >> testRenderMultipleAddons [

	| field html |

	field := self supplier fieldAddonBuilder
		prependText: '$';
		prependText: '0.00';
		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );
		build.

	html := self render: field.

	self
		assert: html
		equals:
			'<div class="input-group"><div class="input-group-prepend"><span class="input-group-text">$</span><span class="input-group-text">0.00</span></div><input value="" name="1" class="form-control" type="text"/></div>'
]

{ #category : #tests }
Bootstrap4FieldAddonBuilderTest >> testRenderMultipleInputs [

	| field html |

	field := self supplier fieldAddonBuilder
		prependText: 'Name and Surname';
		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );
		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );
		build.

	html := self render: field.

	self
		assert: html
		equals:
			'<div class="input-group"><div class="input-group-prepend"><span class="input-group-text">Name and Surname</span></div><input value="" name="1" class="form-control" type="text"/><input value="" name="2" class="form-control" type="text"/></div>'
]

{ #category : #tests }
Bootstrap4FieldAddonBuilderTest >> testRenderSmall [

	| field html |

	field := self supplier fieldAddonBuilder
		prependText: '@';
		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );
		beSmall;
		build.

	html := self render: field.

	self
		assert: html
		equals:
			'<div class="input-group input-group-sm"><div class="input-group-prepend"><span class="input-group-text">@</span></div><input value="" name="1" class="form-control" type="text"/></div>'
]
