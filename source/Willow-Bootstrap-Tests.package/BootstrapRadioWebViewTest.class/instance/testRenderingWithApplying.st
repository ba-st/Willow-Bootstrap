tests-rendering
testRenderingWithApplying

	| radioGroup html |

	radioGroup := BootstrapRadioWebView renderingWith: [ :element | element asUppercase ] applying: [ :radio | radio addClass disabledComponent ].

	radioGroup allowAnyOf: #($a $b).
	html := self render: radioGroup.

	self
		assert: html
		equals:
			'<div class="radio willow-disabled-component"><label class="willow-disabled-component"><input name="1" class="willow-disabled-component" value="1" type="radio"/>A</label></div><div class="radio willow-disabled-component"><label class="willow-disabled-component"><input name="1" class="willow-disabled-component" value="2" type="radio"/>B</label></div>'