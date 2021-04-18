Class {
	#name : #Bootstrap4CheckboxWebViewTest,
	#superclass : #BinaryChoiceWebViewTest,
	#category : #'Willow-Bootstrap-4-Tests-WebViews'
}

{ #category : #'instance creation' }
Bootstrap4CheckboxWebViewTest >> newBinaryChoiceView [

	^ Bootstrap4CheckboxWebView onModel: true offModel: false
]

{ #category : #'tests-configuring' }
Bootstrap4CheckboxWebViewTest >> testBeIdentifiable [

	| html checkbox |

	checkbox := self newBinaryChoiceView.
	checkbox beIdentifiable.
	html := self render: checkbox.

	self
		assert: html
		equals:
			'<div class="form-check"><input id="checkbox-id1" class="form-check-input position-static" checked name="2" type="checkbox"/><input name="3" type="hidden"/></div>'
]

{ #category : #'tests-rendering' }
Bootstrap4CheckboxWebViewTest >> testIdentifierOn [

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
			'<div class="form-check"><input id="checkbox-id1" class="form-check-input position-static" checked name="3" type="checkbox"/><input name="4" type="hidden"/></div>'
]

{ #category : #'tests-configuring' }
Bootstrap4CheckboxWebViewTest >> testOn [

	| html binaryChoiceView |

	binaryChoiceView := self newBinaryChoiceView.
	binaryChoiceView on trigger disable.
	html := self render: binaryChoiceView.

	self
		assert: html
		equals:
			'<div class="form-check"><input class="form-check-input position-static" checked name="1" id="input-id2" type="checkbox"/><input name="3" type="hidden"/></div><script type="text/javascript">$("#input-id2").click(function(event){$(this).prop("disabled",true)});</script>'
]

{ #category : #'tests-rendering' }
Bootstrap4CheckboxWebViewTest >> testRenderingAfterUpdatingModel [

	| html checkbox |

	checkbox := Bootstrap4CheckboxWebView
		onModel: 1
		offModel: 2
		applying: [ :theCheckbox | theCheckbox addClass willow ].

	checkbox selectOffModel.
	html := self render: checkbox.
	self
		assert: html
		equals:
			'<div class="form-check willow"><input class="willow form-check-input position-static" name="1" type="checkbox"/><input name="2" type="hidden"/></div>'.

	checkbox selectOnModel.
	html := self render: checkbox.
	self
		assert: html
		equals:
			'<div class="form-check willow"><input class="willow form-check-input position-static" checked name="1" type="checkbox"/><input name="2" type="hidden"/></div>'
]

{ #category : #'tests-rendering' }
Bootstrap4CheckboxWebViewTest >> testRenderingWithLabel [

	| html checkbox |

	checkbox := Bootstrap4CheckboxWebView
		labeled: 'Enable network'
		onModel: 1
		offModel: 2
		applying: [ :theCheckbox | theCheckbox addClass willow ].

	html := self render: checkbox.

	self
		assert: html
		equals:
			'<div class="form-check willow"><input id="checkbox-id1" class="willow form-check-input" checked name="3" type="checkbox"/><input name="4" type="hidden"/><label for="checkbox-id1" class="form-check-label">Enable network</label></div>'
]

{ #category : #'tests-rendering' }
Bootstrap4CheckboxWebViewTest >> testRenderingWithLabelAndCustomStyle [

	| html checkbox |

	checkbox := Bootstrap4CheckboxWebView
		labeled: 'Enable network'
		onModel: 1
		offModel: 2
		applying: [ :theCheckbox | theCheckbox addClass willow ].

	checkbox beCustom.

	html := self render: checkbox.

	self
		assert: html
		equals:
			'<div class="custom-control custom-checkbox willow"><input id="checkbox-id1" class="willow custom-control-input" checked name="3" type="checkbox"/><input name="4" type="hidden"/><label for="checkbox-id1" class="custom-control-label">Enable network</label></div>'
]

{ #category : #'tests-rendering' }
Bootstrap4CheckboxWebViewTest >> testRenderingWithLabelAsSwitch [

	| html checkbox |

	checkbox := Bootstrap4CheckboxWebView
		labeled: 'Enable network'
		onModel: 1
		offModel: 2
		applying: [ :theCheckbox | theCheckbox addClass willow ].

	checkbox beSwitch.

	html := self render: checkbox.

	self
		assert: html
		equals:
			'<div class="custom-control custom-switch willow"><input id="checkbox-id1" class="willow custom-control-input" checked name="3" type="checkbox"/><input name="4" type="hidden"/><label for="checkbox-id1" class="custom-control-label">Enable network</label></div>'
]

{ #category : #'tests-rendering' }
Bootstrap4CheckboxWebViewTest >> testWithNonBooleanModels [

	| html checkbox |

	checkbox := Bootstrap4CheckboxWebView onModel: 1 offModel: 2.

	html := self render: checkbox.

	self
		assert: html
			equals:
			'<div class="form-check"><input class="form-check-input position-static" checked name="1" type="checkbox"/><input name="2" type="hidden"/></div>';
		assert: checkbox currentSelection equals: 1.

	checkbox toggleCurrentSelection.

	html := self render: checkbox.

	self
		assert: html
			equals:
			'<div class="form-check"><input class="form-check-input position-static" name="1" type="checkbox"/><input name="2" type="hidden"/></div>';
		assert: checkbox currentSelection equals: 2
]
