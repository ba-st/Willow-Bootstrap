tests-Supplying
testRadioRenderingWithApplying

	| supplier radio html |

	supplier := BootstrapComponentSupplier online.
	radio := supplier
		radioRenderingWith: #asUppercase
		applyingToLabel: [ :theRadio | theRadio addClass willow ]
		applyingToInput: [ :theRadio | theRadio addClass willow ].

	html := self render: radio.
	self assert: html isEmpty.

	radio allowAnyOf: #(f h).
	html := self render: radio.
	self
		assert: html
		equals:
			'<label class="willow"><input name="1" class="willow" value="1" type="radio"/>F</label><label class="willow"><input name="1" class="willow" value="2" type="radio"/>H</label>'