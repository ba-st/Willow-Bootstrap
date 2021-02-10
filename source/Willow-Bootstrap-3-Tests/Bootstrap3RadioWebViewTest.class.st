Class {
	#name : #Bootstrap3RadioWebViewTest,
	#superclass : #SingleSelectionWebViewBehaviorTest,
	#category : #'Willow-Bootstrap-3-Tests-WebViews'
}

{ #category : #support }
Bootstrap3RadioWebViewTest >> newSingleSelectionView [

	^Bootstrap3RadioWebView 
		renderingWith: #'yourself'
		applyingToLabel: [:radio | ]
		applyingToInput: []
]

{ #category : #'tests-rendering' }
Bootstrap3RadioWebViewTest >> testOn [

	| radioGroup html |

	radioGroup := self newSingleSelectionView.
	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').
	radioGroup on trigger disable.
	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<label><input name="1" id="radio-button-id2" value="1" type="radio"/>Buenos Aires</label><label><input name="1" id="radio-button-id3" value="2" type="radio"/>CABA</label><script type="text/javascript">$("#radio-button-id2").change(function(event){$(this).prop("disabled",true)});$("#radio-button-id3").change(function(event){$(this).prop("disabled",true)});</script>'
]

{ #category : #'tests-rendering' }
Bootstrap3RadioWebViewTest >> testRenderContentOnWithElements [

	| radioGroup html |

	radioGroup := self newSingleSelectionView.
	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').
	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<label><input name="1" id="radio-button-id2" value="1" type="radio"/>Buenos Aires</label><label><input name="1" id="radio-button-id3" value="2" type="radio"/>CABA</label>'
]

{ #category : #'tests-rendering' }
Bootstrap3RadioWebViewTest >> testRenderContentOnWithElementsAndSomethingSelected [

	| radioGroup html |

	radioGroup := self newSingleSelectionView.
	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').
	radioGroup chooseAnySatisfying: [ :place | true ] ifNone: [ self fail ].

	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<label><input name="1" id="radio-button-id2" checked value="1" type="radio"/>Buenos Aires</label><label><input name="1" id="radio-button-id3" value="2" type="radio"/>CABA</label>'.

	radioGroup chooseAnySatisfying: [ :place | place beginsWith: 'C' ] ifNone: [ self fail ].

	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<label><input name="1" id="radio-button-id2" value="1" type="radio"/>Buenos Aires</label><label><input name="1" id="radio-button-id3" checked value="2" type="radio"/>CABA</label>'
]

{ #category : #'tests-rendering' }
Bootstrap3RadioWebViewTest >> testRenderingWhenEmptyDoesNotProduceHTMLContent [

	| radioGroup html |

	radioGroup := self newSingleSelectionView.
	html := self render: radioGroup.

	self assert: html isEmpty
]

{ #category : #'tests-rendering' }
Bootstrap3RadioWebViewTest >> testRenderingWithApplying [

	| radioGroup html |

	radioGroup := Bootstrap3RadioWebView
		renderingWith: [ :element | element asUppercase ]
		applyingToLabel: [ :radio | radio addClass disabledComponent ]
		applyingToInput: [ :radio | radio addClass disabledComponent ].

	radioGroup allowAnyOf: #($a $b).
	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<label class="willow-disabled-component"><input name="1" id="radio-button-id2" class="willow-disabled-component" value="1" type="radio"/>A</label><label class="willow-disabled-component"><input name="1" id="radio-button-id3" class="willow-disabled-component" value="2" type="radio"/>B</label>'
]
