Class {
	#name : #Bootstrap3CheckboxWebViewTest,
	#superclass : #BinaryChoiceWebViewTest,
	#category : #'Willow-Bootstrap-3-Tests-WebViews'
}

{ #category : #'instance creation' }
Bootstrap3CheckboxWebViewTest >> newBinaryChoiceView [

	^ Bootstrap3CheckboxWebView onModel: true offModel: false
]

{ #category : #'tests-rendering' }
Bootstrap3CheckboxWebViewTest >> testIdentifierOn [

	| html checkbox |

	checkbox := self newBinaryChoiceView.
	html := self
		renderUsing: [ :canvas | 
			self assert: ( checkbox identifierOn: canvas ) equals: 'checkbox-id1'.
			canvas render: checkbox
			].

	self
		assert: html
		equals:
			'<div class="checkbox"><label><input id="checkbox-id1" checked name="2" type="checkbox"/><input name="3" type="hidden"/></label></div>'
]

{ #category : #'tests-configuring' }
Bootstrap3CheckboxWebViewTest >> testOn [

	| html binaryChoiceView |

	binaryChoiceView := self newBinaryChoiceView.
	binaryChoiceView on trigger disable.
	html := self render: binaryChoiceView.

	self
		assert: html
		equals:
			'<div class="checkbox"><label><input checked name="1" id="input-id2" type="checkbox"/><input name="3" type="hidden"/></label></div><script type="text/javascript">$("#input-id2").click(function(event){$(this).prop("disabled",true)});</script>'
]

{ #category : #'tests-rendering' }
Bootstrap3CheckboxWebViewTest >> testRenderingAfterUpdatingModel [

	| html checkbox |

	checkbox := Bootstrap3CheckboxWebView onModel: 1 offModel: 2 applying: [ :theCheckbox | theCheckbox addClass willow ].

	checkbox selectOffModel.
	html := self render: checkbox.
	self
		assert: html
		equals: '<div class="checkbox willow"><label><input class="willow" name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>'.

	checkbox selectOnModel.
	html := self render: checkbox.
	self
		assert: html
		equals: '<div class="checkbox willow"><label><input class="willow" checked name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>'
]

{ #category : #'tests-rendering' }
Bootstrap3CheckboxWebViewTest >> testRenderingWithLabel [

	| html checkbox |

	checkbox := Bootstrap3CheckboxWebView
		labeled: 'Enable network'
		onModel: 1
		offModel: 2
		applying: [ :theCheckbox | theCheckbox addClass willow ].

	html := self render: checkbox.

	self
		assert: html
		equals:
			'<div class="checkbox willow"><label><input class="willow" checked name="1" type="checkbox"/><input name="2" type="hidden"/>Enable network</label></div>'
]

{ #category : #'tests-rendering' }
Bootstrap3CheckboxWebViewTest >> testWithNonBooleanModels [

	| html checkbox |

	checkbox := Bootstrap3CheckboxWebView onModel: 1 offModel: 2.

	html := self render: checkbox.

	self
		assert: html
			equals:
			'<div class="checkbox"><label><input checked name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>';
		assert: checkbox currentSelection equals: 1.

	checkbox toggleCurrentSelection.

	html := self render: checkbox.

	self
		assert: html
			equals:
			'<div class="checkbox"><label><input name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>';
		assert: checkbox currentSelection equals: 2
]
