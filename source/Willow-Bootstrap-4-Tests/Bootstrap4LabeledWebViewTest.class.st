Class {
	#name : #Bootstrap4LabeledWebViewTest,
	#superclass : #BWRenderingTest,
	#instVars : [
		'supplier'
	],
	#category : #'Willow-Bootstrap-4-Tests-WebViews'
}

{ #category : #'tests-rendering' }
Bootstrap4LabeledWebViewTest >> setUp [

	super setUp.
	supplier := Bootstrap4ComponentSupplier online
]

{ #category : #'tests-rendering' }
Bootstrap4LabeledWebViewTest >> testRenderContentOn [

	| labeledView html |

	labeledView := supplier
		labeledFieldApplying: [  ]
		displaying: 'E-Mail'
		applying: [ :label |  ]
		boundTo: ( supplier singleLineTextFieldApplying: [ :field |  ] )
		applying: [ :fieldContainer |  ].

	html := self render: labeledView.

	self
		assert: html
		equals:
			'<div class="form-group"><label for="text-id1">E-Mail</label><input value="" name="2" id="text-id1" class="form-control" type="text"/></div>'
]

{ #category : #'tests-rendering' }
Bootstrap4LabeledWebViewTest >> testRenderContentOnWithContainerCommand [

	| labeledView html |

	labeledView := supplier
		labeledFieldApplying: [ :container | container addClass bootstrap4 textMuted ]
		displaying: 'E-Mail'
		applying: [ :label |  ]
		boundTo: ( supplier singleLineTextFieldApplying: [ :field |  ] )
		applying: [ :fieldContainer |  ].

	html := self render: labeledView.

	self
		assert: html
		equals:
			'<div class="form-group text-muted"><label for="text-id1">E-Mail</label><input value="" name="2" id="text-id1" class="form-control" type="text"/></div>'
]

{ #category : #'tests-rendering' }
Bootstrap4LabeledWebViewTest >> testRenderContentOnWithFieldCommand [

	| labeledView html |

	labeledView := supplier
		labeledFieldApplying: [ :container | container addClass bootstrap4 row ]
		displaying: 'E-Mail'
		applying: [ :label | label addClass bootstrap4 columnMedium: 2 ]
		boundTo: ( supplier singleLineTextFieldApplying: [ :field | field beEmailInput ] )
		applying: [ :fieldContainer | fieldContainer addClass bootstrap4 columnMedium: 10 ].

	html := self render: labeledView.

	self
		assert: html
		equals:
			'<div class="form-group row"><label for="text-id1" class="col-md-2">E-Mail</label><div class="col-md-10"><input value="" name="2" id="text-id1" class="form-control" type="email"/></div></div>'
]

{ #category : #'tests-rendering' }
Bootstrap4LabeledWebViewTest >> testRenderContentWithHelpText [

	| labeledView html |

	labeledView := supplier
		labeledFieldApplying: [  ]
		displaying: 'E-Mail'
		applying: [ :label |  ]
		boundTo:
			( supplier
				helpTextBoundTo: ( supplier singleLineTextFieldApplying: [ :field |  ] )
				describedBy: 'A block of help text that breaks onto a new line and may extend beyond one line.' )
		applying: [ :fieldContainer |  ].

	html := self render: labeledView.

	self
		assert: html
		equals:
			'<div class="form-group"><label for="text-id1">E-Mail</label><input value="" name="2" id="text-id1" class="form-control" type="text"/><small class="form-text">A block of help text that breaks onto a new line and may extend beyond one line.</small></div>'
]
