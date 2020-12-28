Class {
	#name : #Bootstrap4RadioWebViewTest,
	#superclass : #SingleSelectionWebViewTest,
	#category : #'Willow-Bootstrap-4-Tests-WebViews'
}

{ #category : #support }
Bootstrap4RadioWebViewTest >> newSingleSelectionView [

	^Bootstrap4RadioWebView 
		renderingWith: #'yourself'
		applyingToLabel: [:radio | ]
		applyingToInput: []
]

{ #category : #'tests-rendering' }
Bootstrap4RadioWebViewTest >> testOnTrigger [

	| radioGroup html |

	radioGroup := self newSingleSelectionView.
	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').
	radioGroup on trigger disable.
	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<div class="form-check"><input name="1" id="radio-button-id2" class="form-check-input" value="1" type="radio"/><label for="radio-button-id2" class="form-check-label">Buenos Aires</label></div><div class="form-check"><input name="1" id="radio-button-id3" class="form-check-input" value="2" type="radio"/><label for="radio-button-id3" class="form-check-label">CABA</label></div><script type="text/javascript">$("#radio-button-id2").change(function(event){$(this).prop("disabled",true)});$("#radio-button-id3").change(function(event){$(this).prop("disabled",true)});</script>'
]

{ #category : #'tests-rendering' }
Bootstrap4RadioWebViewTest >> testRenderContentOnWithElements [

	| radioGroup html |

	radioGroup := self newSingleSelectionView.
	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').
	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<div class="form-check"><input name="1" id="radio-button-id2" class="form-check-input" value="1" type="radio"/><label for="radio-button-id2" class="form-check-label">Buenos Aires</label></div><div class="form-check"><input name="1" id="radio-button-id3" class="form-check-input" value="2" type="radio"/><label for="radio-button-id3" class="form-check-label">CABA</label></div>'
]

{ #category : #'tests-rendering' }
Bootstrap4RadioWebViewTest >> testRenderContentOnWithElementsAndSomethingSelected [

	| radioGroup html |

	radioGroup := self newSingleSelectionView.
	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').
	radioGroup chooseAnySatisfying: [ :place | true ] ifNone: [ self fail ].

	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<div class="form-check"><input name="1" id="radio-button-id2" class="form-check-input" checked value="1" type="radio"/><label for="radio-button-id2" class="form-check-label">Buenos Aires</label></div><div class="form-check"><input name="1" id="radio-button-id3" class="form-check-input" value="2" type="radio"/><label for="radio-button-id3" class="form-check-label">CABA</label></div>'.

	radioGroup chooseAnySatisfying: [ :place | place beginsWith: 'C' ] ifNone: [ self fail ].

	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<div class="form-check"><input name="1" id="radio-button-id2" class="form-check-input" value="1" type="radio"/><label for="radio-button-id2" class="form-check-label">Buenos Aires</label></div><div class="form-check"><input name="1" id="radio-button-id3" class="form-check-input" checked value="2" type="radio"/><label for="radio-button-id3" class="form-check-label">CABA</label></div>'
]

{ #category : #'tests-rendering' }
Bootstrap4RadioWebViewTest >> testRenderingWhenEmptyDoesNotProduceHTMLContent [

	| radioGroup html |

	radioGroup := self newSingleSelectionView.
	html := self render: radioGroup.

	self assert: html isEmpty
]

{ #category : #'tests-rendering' }
Bootstrap4RadioWebViewTest >> testRenderingWithApplying [

	| radioGroup html |

	radioGroup := Bootstrap4RadioWebView
		renderingWith: [ :element | element asUppercase ]
		applyingToLabel: [ :radio | radio addClass disabledComponent ]
		applyingToInput: [ :radio | radio addClass disabledComponent ].

	radioGroup allowAnyOf: #($a $b).
	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<div class="form-check"><input name="1" id="radio-button-id2" class="willow-disabled-component form-check-input" value="1" type="radio"/><label for="radio-button-id2" class="willow-disabled-component form-check-label">A</label></div><div class="form-check"><input name="1" id="radio-button-id3" class="willow-disabled-component form-check-input" value="2" type="radio"/><label for="radio-button-id3" class="willow-disabled-component form-check-label">B</label></div>'
]

{ #category : #'tests-rendering' }
Bootstrap4RadioWebViewTest >> testRenderingWithCustomStyle [

	| radioGroup html |

	radioGroup := Bootstrap4RadioWebView
		renderingWith: [ :element | element asUppercase ]
		applyingToLabel: [ :radio | radio addClass disabledComponent ]
		applyingToInput: [ :radio | radio addClass disabledComponent ].

	radioGroup beCustom.
	radioGroup allowAnyOf: #($a $b).
	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<div class="custom-control custom-radio"><input name="1" id="radio-button-id2" class="willow-disabled-component custom-control-input" value="1" type="radio"/><label for="radio-button-id2" class="willow-disabled-component custom-control-label">A</label></div><div class="custom-control custom-radio"><input name="1" id="radio-button-id3" class="willow-disabled-component custom-control-input" value="2" type="radio"/><label for="radio-button-id3" class="willow-disabled-component custom-control-label">B</label></div>'
]
