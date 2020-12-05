Class {
	#name : #Bootstrap3FieldAddonBuilderTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-3-Tests-WebViews'
}

{ #category : #private }
Bootstrap3FieldAddonBuilderTest >> supplier [

	^ Bootstrap3ComponentSupplier online
]

{ #category : #tests }
Bootstrap3FieldAddonBuilderTest >> testCantCreateWithoutAddons [

	self
		should: [ self supplier fieldAddonBuilder
				wrapping: ( self supplier singleLineTextFieldApplying: [  ] );
				build
			]
		raise: InstanceCreationFailed
		withMessageText: 'At least some component must be appended or prepended.'
]

{ #category : #tests }
Bootstrap3FieldAddonBuilderTest >> testCantCreateWithoutFields [

	self
		should: [ self supplier fieldAddonBuilder
				prependText: '$';
				build
			]
		raise: InstanceCreationFailed
		withMessageText: 'At least one field to wrap is required.'
]

{ #category : #tests }
Bootstrap3FieldAddonBuilderTest >> testRenderContentOn [

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
			'<div class="input-group"><div class="input-group-addon">USD</div><input value="" name="1" type="number" class="form-control text-right" min="0"/><div class="input-group-addon">.00</div></div>'
]

{ #category : #tests }
Bootstrap3FieldAddonBuilderTest >> testRenderContentOnWithButton [

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
			'<div class="input-group"><input value="" name="1" class="form-control" type="text"/><div class="input-group-btn"><button class="btn btn-primary" type="button">Search!</button></div></div>'
]

{ #category : #tests }
Bootstrap3FieldAddonBuilderTest >> testRenderLarge [

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
			'<div class="input-group input-group-lg"><div class="input-group-addon">@</div><input value="" name="1" class="form-control" type="text"/></div>'
]

{ #category : #tests }
Bootstrap3FieldAddonBuilderTest >> testRenderMultipleButtons [

	| field html |

	field := self supplier fieldAddonBuilder
		wrapping: ( self supplier singleLineTextFieldApplying: [  ] );
		appendButton:
			( self supplier
				asynchronicButtonLabeled: 'Go'
				applying: [ :button | button addClass bootstrap3 buttonDefault ] );
		appendButton:
			( self supplier
				asynchronicButtonLabeled: 'Johnny Go!'
				applying: [ :button | button addClass bootstrap3 buttonDefault ] );
		build.

	html := self render: field.

	self
		assert: html
		equals:
			'<div class="input-group"><input value="" name="1" class="form-control" type="text"/><div class="input-group-btn"><button class="btn btn-default" type="button">Go</button><button class="btn btn-default" type="button">Johnny Go!</button></div></div>'
]

{ #category : #tests }
Bootstrap3FieldAddonBuilderTest >> testRenderSmall [

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
			'<div class="input-group input-group-sm"><div class="input-group-addon">@</div><input value="" name="1" class="form-control" type="text"/></div>'
]
