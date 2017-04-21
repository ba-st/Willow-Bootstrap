tests-initialization
testRenderContentOn

	| html |

	html := self
		render: (BootstrapDatePickerWebView wrapping: (TextFieldWebView singleLineTriggeringOnChangeApplying: CompositeComponentCommand empty)).

	self
		assert: html
		equals:
			'<div class="input-group date" data-provide="datepicker"><input value="" name="1" type="text"/><div class="input-group-addon"><small><span class="glyphicon glyphicon-triangle-bottom"></span></small></div></div>'