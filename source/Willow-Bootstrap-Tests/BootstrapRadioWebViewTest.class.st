Class {
	#name : #BootstrapRadioWebViewTest,
	#superclass : #SingleSelectionWebViewTest,
	#category : 'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #support }
BootstrapRadioWebViewTest >> newSingleSelectionView [

	^BootstrapRadioWebView 
		renderingWith: #'yourself'
		applyingToLabel: [:radio | ]
		applyingToInput: []
]

{ #category : #'tests-rendering' }
BootstrapRadioWebViewTest >> testIdentifyIn [

	| radioGroup html identifier |

	radioGroup := BootstrapRadioWebView
		renderingWith: [ :element | element asUppercase ]
		applyingToLabel: [ :radio | radio addClass disabledComponent ]
		applyingToInput: [ :radio | radio addClass disabledComponent ].

	radioGroup allowAnyOf: 'abc'.
	html := self
		renderUsing: [ :canvas | 
			identifier := radioGroup identifyIn: canvas.
			canvas render: radioGroup ].

	self
		assert: html
			equals:
			'<label class="willow-disabled-component"><input name="2" id="radio-button-id1" class="willow-disabled-component" value="1" type="radio"/>A</label><label class="willow-disabled-component"><input name="2" id="radio-button-id1" class="willow-disabled-component" value="2" type="radio"/>B</label><label class="willow-disabled-component"><input name="2" id="radio-button-id1" class="willow-disabled-component" value="3" type="radio"/>C</label>';
		assert: identifier equals: 'radio-button-id1'
]

{ #category : #'tests-rendering' }
BootstrapRadioWebViewTest >> testOnTrigger [

	| radioGroup html |

	radioGroup := self newSingleSelectionView.
	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').
	radioGroup onTrigger disable.
	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<label><input name="1" id="input-id2" value="1" type="radio"/>Buenos Aires</label><label><input name="1" id="input-id3" value="2" type="radio"/>CABA</label><script type="text/javascript">$("#input-id2").change(function(event){$(this).prop("disabled",true)});$("#input-id3").change(function(event){$(this).prop("disabled",true)});</script>'
]

{ #category : #'tests-rendering' }
BootstrapRadioWebViewTest >> testRenderContentOnWithElements [

	| radioGroup html |

	radioGroup := self newSingleSelectionView.
	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').
	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<label><input name="1" value="1" type="radio"/>Buenos Aires</label><label><input name="1" value="2" type="radio"/>CABA</label>'
]

{ #category : #'tests-rendering' }
BootstrapRadioWebViewTest >> testRenderContentOnWithElementsAndSomethingSelected [

	| radioGroup html |

	radioGroup := self newSingleSelectionView.
	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').
	radioGroup chooseAnySatisfying: [ :place | true ] ifNone: [ self fail ].

	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<label><input name="1" checked value="1" type="radio"/>Buenos Aires</label><label><input name="1" value="2" type="radio"/>CABA</label>'.

	radioGroup chooseAnySatisfying: [ :place | place beginsWith: 'C' ] ifNone: [ self fail ].

	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<label><input name="1" value="1" type="radio"/>Buenos Aires</label><label><input name="1" checked value="2" type="radio"/>CABA</label>'
]

{ #category : #'tests-rendering' }
BootstrapRadioWebViewTest >> testRenderingWhenEmptyDoesNotProduceHTMLContent [

	| radioGroup html |

	radioGroup := self newSingleSelectionView.
	html := self render: radioGroup.

	self assert: html isEmpty
]

{ #category : #'tests-rendering' }
BootstrapRadioWebViewTest >> testRenderingWithApplying [

	| radioGroup html |

	radioGroup := BootstrapRadioWebView 
		renderingWith: [ :element | element asUppercase ]
		applyingToLabel: [ :radio | radio addClass disabledComponent ]
		applyingToInput:  [ :radio | radio addClass disabledComponent ].

	radioGroup allowAnyOf: #($a $b).
	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<label class="willow-disabled-component"><input name="1" class="willow-disabled-component" value="1" type="radio"/>A</label><label class="willow-disabled-component"><input name="1" class="willow-disabled-component" value="2" type="radio"/>B</label>'
]
