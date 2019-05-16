Class {
	#name : #Bootstrap4CheckboxWebViewTest,
	#superclass : #BinaryChoiceWebViewTest,
	#category : #'Willow-Bootstrap-4-Tests-WebViews'
}

{ #category : #'instance creation' }
Bootstrap4CheckboxWebViewTest >> newBinaryChoiceView [

	^ Bootstrap4CheckboxWebView onModel: true offModel: false
]

{ #category : #'tests-rendering' }
Bootstrap4CheckboxWebViewTest >> testIdentifyIn [

	| html checkbox |

	checkbox := self newBinaryChoiceView.
	html := self
		renderUsing: [ :canvas | 
			checkbox identifyIn: canvas.
			canvas render: checkbox
			].

	self
		assert: html
			equals:
			'<div class="form-check"><input class="form-check-input position-static" checked name="2" id="checkbox-id1" type="checkbox"/><input name="3" type="hidden"/></div>';
		assert: checkbox identifier equals: 'checkbox-id1'
]

{ #category : #'tests-configuring' }
Bootstrap4CheckboxWebViewTest >> testOnTrigger [

	| html binaryChoiceView |

	binaryChoiceView := self newBinaryChoiceView.
	binaryChoiceView onTrigger disable.
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
			'<div class="form-check willow"><input class="willow form-check-input" checked name="2" id="checkbox-id1" type="checkbox"/><input name="3" type="hidden"/><label for="checkbox-id1" class="form-check-label">Enable network</label></div>'
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
