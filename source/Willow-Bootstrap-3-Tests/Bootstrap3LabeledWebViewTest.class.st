"
A BootstrapLabeledWebViewTest is a test class for testing the behavior of BootstrapLabeledWebView
"
Class {
	#name : #Bootstrap3LabeledWebViewTest,
	#superclass : #BWRenderingTest,
	#instVars : [
		'supplier'
	],
	#category : #'Willow-Bootstrap-3-Tests-WebViews'
}

{ #category : #accessing }
Bootstrap3LabeledWebViewTest >> componentSupplier [

	^ supplier
]

{ #category : #accessing }
Bootstrap3LabeledWebViewTest >> createHandlers [

	^ Array with: self
]

{ #category : #accessing }
Bootstrap3LabeledWebViewTest >> isSession [

	^ true
]

{ #category : #'tests-rendering' }
Bootstrap3LabeledWebViewTest >> setUp [

	super setUp.
	supplier := Bootstrap3ComponentSupplier online
]

{ #category : #'tests-rendering' }
Bootstrap3LabeledWebViewTest >> testRenderContentOn [

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
			'<div class="form-group"><label for="text-id1" class="control-label">E-Mail</label><input value="" name="2" id="text-id1" class="form-control" type="text"/></div>'
]

{ #category : #'tests-rendering' }
Bootstrap3LabeledWebViewTest >> testRenderContentOnWithContainerCommand [

	| labeledView html |

	labeledView := supplier
		labeledFieldApplying: [ :container | container addClass bootstrap3 formGroupLarge ]
		displaying: 'E-Mail'
		applying: [ :label |  ]
		boundTo: ( supplier singleLineTextFieldApplying: [ :field |  ] )
		applying: [ :fieldContainer |  ].

	html := self render: labeledView.

	self
		assert: html
		equals:
			'<div class="form-group form-group-lg"><label for="text-id1" class="control-label">E-Mail</label><input value="" name="2" id="text-id1" class="form-control" type="text"/></div>'
]

{ #category : #'tests-rendering' }
Bootstrap3LabeledWebViewTest >> testRenderContentOnWithFieldCommand [

	| labeledView html |

	labeledView := supplier
		labeledFieldApplying: [  ]
		displaying: 'E-Mail'
		applying: [ :label | label addClass bootstrap3 columnMedium: 2 ]
		boundTo: ( supplier singleLineTextFieldApplying: [ :field |  ] )
		applying: [ :fieldContainer | fieldContainer addClass bootstrap3 columnMedium: 10 ].

	html := self render: labeledView.

	self
		assert: html
		equals:
			'<div class="form-group"><label for="text-id1" class="control-label col-md-2">E-Mail</label><div class="col-md-10"><input value="" name="2" id="text-id1" class="form-control" type="text"/></div></div>'
]

{ #category : #'tests-rendering' }
Bootstrap3LabeledWebViewTest >> testRenderContentWithHelpText [

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
			'<div class="form-group"><label for="text-id1" class="control-label">E-Mail</label><input value="" name="2" id="text-id1" class="form-control" type="text"/><span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span></div>'
]
