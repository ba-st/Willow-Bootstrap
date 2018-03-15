tests-rendering
testOnTrigger

	| radioGroup html |

	radioGroup := self newSingleSelectionView.
	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').
	radioGroup onTrigger disable.
	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<label><input name="1" id="input-id2" value="1" type="radio"/>Buenos Aires</label><label><input name="1" id="input-id3" value="2" type="radio"/>CABA</label><script type="text/javascript">$("#input-id2").change(function(event){$(this).prop("disabled",true)});$("#input-id3").change(function(event){$(this).prop("disabled",true)});</script>'