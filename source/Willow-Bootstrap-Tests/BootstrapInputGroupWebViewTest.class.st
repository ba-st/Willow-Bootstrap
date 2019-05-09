"
A BootstrapInputGroupWebViewTest is a test class for testing the behavior of BootstrapInputGroupWebView
"
Class {
	#name : #BootstrapInputGroupWebViewTest,
	#superclass : #BWRenderingTest,
	#instVars : [
		'supplier'
	],
	#category : 'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #initialization }
BootstrapInputGroupWebViewTest >> setUp [

	super setUp.
	supplier := BootstrapComponentSupplier online
]

{ #category : #'tests-rendering' }
BootstrapInputGroupWebViewTest >> testIdentifyIn [

	| inputGroup html |

	inputGroup := BootstrapInputGroupWebView prepending: (supplier inputGroupAddOnWrapping: 'http://') to: (supplier singleLineTextFieldApplying: [ :field |  ]) applying: [ :group |  ].

	html := self
		renderUsing: [ :canvas | 
			inputGroup identifyIn: canvas.
			canvas render: inputGroup ].

	self
		assert: html equals: '<div class="input-group"><span class="input-group-addon">http://</span><input value="" name="2" id="text-id1" class="form-control" type="text"/></div>';
		assert: inputGroup identifier equals: 'text-id1'
]

{ #category : #'tests-rendering' }
BootstrapInputGroupWebViewTest >> testRenderContentOn [

	| inputGroup html |

	inputGroup := BootstrapInputGroupWebView
		wrapping: (supplier singleLineTextFieldApplying: [ :field |  ])
		between: (supplier inputGroupAddOnWrapping: 'http://')
		and:
			(supplier
				inputGroupButtonWrapping:
					(supplier
						synchronicButtonLabeled: 'Go!'
						applying: [ :button | button addClass bootstrap buttonDefault ]
						evaluating: [  ]))
		applying: [ :group |  ].

	html := self render: inputGroup.

	self
		assert: html
		equals:
			'<div class="input-group"><span class="input-group-addon">http://</span><input value="" name="1" class="form-control" type="text"/><span class="input-group-btn"><button name="2" class="btn btn-default" type="submit">Go!</button></span></div>'
]

{ #category : #'tests-rendering' }
BootstrapInputGroupWebViewTest >> testRenderContentOnWhenOnlyPreprended [

	| inputGroup html |

	inputGroup := BootstrapInputGroupWebView prepending: (supplier inputGroupAddOnWrapping: 'http://') to: (supplier singleLineTextFieldApplying: [ :field |  ]) applying: [ :group |  ].

	html := self render: inputGroup.

	self assert: html equals: '<div class="input-group"><span class="input-group-addon">http://</span><input value="" name="1" class="form-control" type="text"/></div>'
]

{ #category : #'tests-rendering' }
BootstrapInputGroupWebViewTest >> testRenderContentOnWithCommands [

	| inputGroup html |

	inputGroup := BootstrapInputGroupWebView
		appending:
			(supplier
				inputGroupButtonWrapping:
					(supplier
						synchronicButtonLabeled: 'Go!'
						applying: [ :button | button addClass bootstrap buttonDefault ]
						evaluating: [  ]))
		to: (supplier singleLineTextFieldApplying: [ :field |  ])
		applying: [ :group | group addClass bootstrap inputGroupSmall ].

	html := self render: inputGroup.

	self
		assert: html
		equals:
			'<div class="input-group input-group-sm"><input value="" name="1" class="form-control" type="text"/><span class="input-group-btn"><button name="2" class="btn btn-default" type="submit">Go!</button></span></div>'
]
