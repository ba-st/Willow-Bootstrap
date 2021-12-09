Class {
	#name : #Bootstrap4RadioButtonWebViewTest,
	#superclass : #SingleSelectionWebViewBehaviorTest,
	#category : #'Willow-Bootstrap-4-Tests-WebViews'
}

{ #category : #support }
Bootstrap4RadioButtonWebViewTest >> newSingleSelectionView [

	^ self supplier
		radioButtonRenderingWith: #yourself
		applyingToContainer: [ :div |  ]
		applyingToLabel: [ :radio |  ]
		applyingToInput: [  ]
]

{ #category : #private }
Bootstrap4RadioButtonWebViewTest >> supplier [

	^ Bootstrap4ComponentSupplier online
]

{ #category : #tests }
Bootstrap4RadioButtonWebViewTest >> testBeIdentifiable [

	| radiobuttonGroup html |

	radiobuttonGroup := self supplier
		radioButtonRenderingWith: [ :element | element asUppercase ]
		applyingToContainer: [ :div | div addClass bootstrap4 backgroundPrimary ]
		applyingToLabel: [ :radio | radio addClass disabledComponent ]
		applyingToInput: [  ].

	radiobuttonGroup allowAnyOf: #($a $b).
	radiobuttonGroup beIdentifiable.
	html := self render: radiobuttonGroup.

	self
		assert: html
		equals:
			'<div id="radio-button-id1" class="btn-group btn-group-toggle bg-primary" data-toggle="buttons" role="group"><label class="btn willow-disabled-component"><input name="2" id="radio-button-id1" value="1" type="radio"/>A</label><label class="btn willow-disabled-component"><input name="2" id="radio-button-id1" value="2" type="radio"/>B</label></div>'
]

{ #category : #tests }
Bootstrap4RadioButtonWebViewTest >> testOnTrigger [

	| radioButtonGroup html |

	radioButtonGroup := self newSingleSelectionView.
	radioButtonGroup allowAnyOf: #('Buenos Aires' 'CABA').
	radioButtonGroup on trigger disable.
	html := self render: radioButtonGroup.

	self
		assert: html
		equals:
			'<div class="btn-group btn-group-toggle" data-toggle="buttons" role="group"><label class="btn"><input name="1" id="input-id2" value="1" type="radio"/>Buenos Aires</label><label class="btn"><input name="1" id="input-id3" value="2" type="radio"/>CABA</label></div><script type="text/javascript">$("#input-id2").change(function(event){$(this).prop("disabled",true)});$("#input-id3").change(function(event){$(this).prop("disabled",true)});</script>'
]

{ #category : #tests }
Bootstrap4RadioButtonWebViewTest >> testRenderContentOnWithElements [

	| radiobuttonGroup html |

	radiobuttonGroup := self newSingleSelectionView.
	radiobuttonGroup allowAnyOf: #('Buenos Aires' 'CABA').
	html := self render: radiobuttonGroup.
	self
		assert: html
		equals:
			'<div class="btn-group btn-group-toggle" data-toggle="buttons" role="group"><label class="btn"><input name="1" value="1" type="radio"/>Buenos Aires</label><label class="btn"><input name="1" value="2" type="radio"/>CABA</label></div>'
]

{ #category : #tests }
Bootstrap4RadioButtonWebViewTest >> testRenderContentOnWithElementsAndSomethingSelected [

	| radiobuttonGroup html |

	radiobuttonGroup := self newSingleSelectionView.
	radiobuttonGroup allowAnyOf: #('Buenos Aires' 'CABA').
	radiobuttonGroup chooseAnySatisfying: [:place | true] ifNone: [self fail].

	html := self render: radiobuttonGroup.

	self
		assert: html
		equals:
			'<div class="btn-group btn-group-toggle" data-toggle="buttons" role="group"><label class="btn active"><input name="1" checked value="1" type="radio"/>Buenos Aires</label><label class="btn"><input name="1" value="2" type="radio"/>CABA</label></div>'.

	radiobuttonGroup chooseAnySatisfying: [:place | place beginsWith: 'C'] ifNone: [self fail].

	html := self render: radiobuttonGroup.

	self
		assert: html
		equals:
			'<div class="btn-group btn-group-toggle" data-toggle="buttons" role="group"><label class="btn"><input name="1" value="1" type="radio"/>Buenos Aires</label><label class="btn active"><input name="1" checked value="2" type="radio"/>CABA</label></div>'
]

{ #category : #tests }
Bootstrap4RadioButtonWebViewTest >> testRenderingWhenEmptyDoesNotProduceOnlyMainDivHTMLContent [

	| radiobuttonGroup html |

	radiobuttonGroup := self newSingleSelectionView.
	html := self render: radiobuttonGroup.

	self
		assert: html
		equals: '<div class="btn-group btn-group-toggle" data-toggle="buttons" role="group"></div>'
]

{ #category : #tests }
Bootstrap4RadioButtonWebViewTest >> testRenderingWithApplying [

	| radiobuttonGroup html |

	radiobuttonGroup := self supplier
		radioButtonRenderingWith: [ :element | element asUppercase ]
		applyingToContainer: [ :div |  ]
		applyingToLabel: [ :radio | radio addClass disabledComponent ]
		applyingToInput: [  ].

	radiobuttonGroup allowAnyOf: #($a $b).
	html := self render: radiobuttonGroup.

	self
		assert: html
		equals:
			'<div class="btn-group btn-group-toggle" data-toggle="buttons" role="group"><label class="btn willow-disabled-component"><input name="1" value="1" type="radio"/>A</label><label class="btn willow-disabled-component"><input name="1" value="2" type="radio"/>B</label></div>'
]

{ #category : #tests }
Bootstrap4RadioButtonWebViewTest >> testRenderingWithApplyingCommandToContainer [

	| radiobuttonGroup html |

	radiobuttonGroup := self supplier
		radioButtonRenderingWith: [ :element | element asUppercase ]
		applyingToContainer: [ :div | div addClass bootstrap4 backgroundPrimary ]
		applyingToLabel: [ :radio | radio addClass disabledComponent ]
		applyingToInput: [  ].

	radiobuttonGroup allowAnyOf: #($a $b).
	html := self render: radiobuttonGroup.

	self
		assert: html
		equals:
			'<div class="btn-group btn-group-toggle bg-primary" data-toggle="buttons" role="group"><label class="btn willow-disabled-component"><input name="1" value="1" type="radio"/>A</label><label class="btn willow-disabled-component"><input name="1" value="2" type="radio"/>B</label></div>'
]
