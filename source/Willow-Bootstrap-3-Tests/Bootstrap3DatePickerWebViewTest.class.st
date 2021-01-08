"
A BootstrapDatePickerWebViewTest is a test class for testing the behavior of BootstrapDatePickerWebView
"
Class {
	#name : #Bootstrap3DatePickerWebViewTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-Bootstrap-3-Tests-WebViews'
}

{ #category : #accessing }
Bootstrap3DatePickerWebViewTest >> componentSupplier [

	^ Bootstrap3ComponentSupplier online
]

{ #category : #accessing }
Bootstrap3DatePickerWebViewTest >> createHandlers [

	^ Array with: self
]

{ #category : #accessing }
Bootstrap3DatePickerWebViewTest >> isSession [

	^ true
]

{ #category : #'tests-rendering' }
Bootstrap3DatePickerWebViewTest >> testRenderContentOn [

	| html |

	html := self render: (Bootstrap3DatePickerWebView wrapping: (TextFieldWebView singleLineApplying: [ :field |  ])).

	self
		assert: html
		equals:
			'<div class="input-group date" data-provide="datepicker"><input value="" name="1" type="text"/><div class="input-group-addon"><small><span class="glyphicon glyphicon-triangle-bottom"></span></small></div></div>'
]

{ #category : #'tests-rendering' }
Bootstrap3DatePickerWebViewTest >> testRenderContentOnWithCommands [

	| html |

	html := self
		render:
			(Bootstrap3DatePickerWebView
				wrapping: (TextFieldWebView singleLineApplying: [ :field |  ])
				applying:
					(BootstrapDatepickerCommand
						configuredBy: [ :datepicker | 
							datepicker
								autoclose: true;
								disableTouchKeyboard: true ])).

	self
		assert: html
		equals:
			'<div class="input-group date" data-provide="datepicker" id="id1"><input value="" name="2" type="text"/><div class="input-group-addon"><small><span class="glyphicon glyphicon-triangle-bottom"></span></small></div></div><script type="text/javascript">$("#id1").datepicker({"autoclose":true,"disableTouchKeyboard":true});</script>'
]
