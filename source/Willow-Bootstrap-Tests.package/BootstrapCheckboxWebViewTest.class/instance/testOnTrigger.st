tests-configuring
testOnTrigger

	| html binaryChoiceView |

	binaryChoiceView := self newBinaryChoiceView.
	binaryChoiceView onTrigger disable.
	html := self render: binaryChoiceView.

	self
		assert: html
		equals:
			'<div class="checkbox"><label><input checked="checked" name="1" id="input-id2" type="checkbox"/><input name="3" type="hidden"/></label></div><script type="text/javascript">$("#input-id2").click(function(event){$(this).prop("disabled",true)});</script>'