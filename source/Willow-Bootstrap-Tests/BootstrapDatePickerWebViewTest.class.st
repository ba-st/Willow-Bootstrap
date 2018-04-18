"
A BootstrapDatePickerWebViewTest is a test class for testing the behavior of BootstrapDatePickerWebView
"
Class {
	#name : #BootstrapDatePickerWebViewTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #'tests-initialization' }
BootstrapDatePickerWebViewTest >> testRenderContentOn [

	| html |

	html := self render: (BootstrapDatePickerWebView wrapping: (TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field |  ])).

	self
		assert: html
		equals:
			'<div class="input-group date" data-provide="datepicker"><input value="" name="1" type="text"/><div class="input-group-addon"><small><span class="glyphicon glyphicon-triangle-bottom"></span></small></div></div>'
]

{ #category : #'tests-initialization' }
BootstrapDatePickerWebViewTest >> testRenderContentOnWithCommands [

	| html |

	html := self
		render:
			(BootstrapDatePickerWebView
				wrapping: (TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field |  ])
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
