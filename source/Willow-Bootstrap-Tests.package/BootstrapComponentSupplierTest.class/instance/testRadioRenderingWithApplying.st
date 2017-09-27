tests-Supplying
testRadioRenderingWithApplying

	| supplier radio html |

	supplier := BootstrapComponentSupplier online.
	radio := supplier radioRenderingWith: #asUppercase applying: [ :theRadio | theRadio addClass willow ].

	html := self render: radio.
	self assert: html isEmpty.

	radio allowAnyOf: #(f h).
	html := self render: radio.
	self
		assert: html
		equals:
			'<div class="radio willow"><label class="willow"><input name="1" class="willow" value="1" type="radio"/>F</label></div><div class="radio willow"><label class="willow"><input name="1" class="willow" value="2" type="radio"/>H</label></div>'