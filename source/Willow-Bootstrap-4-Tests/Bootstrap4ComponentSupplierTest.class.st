Class {
	#name : #Bootstrap4ComponentSupplierTest,
	#superclass : #BootstrapComponentSupplierTest,
	#category : #'Willow-Bootstrap-4-Tests-Frontend'
}

{ #category : #private }
Bootstrap4ComponentSupplierTest >> supplierClass [

	^ Bootstrap4ComponentSupplier
]

{ #category : #tests }
Bootstrap4ComponentSupplierTest >> testCheckboxLabeledOnModelOffModelApplying [

	self
		assertRenderingOf: [ :supplier | 
			supplier
				checkboxLabeled: 'Labelization'
				onModel: 3
				offModel: 'the off'
				applying: [ :checkbox | checkbox addClass willow ]
			]
		equals:
			'<div class="form-check willow"><input class="willow form-check-input" checked name="2" id="checkbox-id1" type="checkbox"/><input name="3" type="hidden"/><label for="checkbox-id1" class="form-check-label">Labelization</label></div>'
]

{ #category : #tests }
Bootstrap4ComponentSupplierTest >> testCheckboxUnlabeledOnModelOffModelApplying [

	self
		assertRenderingOf: [ :supplier | supplier checkboxUnlabeledOnModel: 3 offModel: 'the off' applying: [ :checkbox | checkbox addClass willow ] ]
		equals: '<div class="form-check willow"><input class="willow form-check-input position-static" checked name="1" type="checkbox"/><input name="2" type="hidden"/></div>'
]

{ #category : #tests }
Bootstrap4ComponentSupplierTest >> testNotificationBuilderWithHeading [

	self
		assertRenderingOf: [ :supplier | 
			supplier notificationBuilder
				wrapping: [ :html | 
					html
						render:
							( HeadingWebView
								displaying: 'Well done!'
								withLevel: 4
								applying: [ :heading | heading addClass bootstrap4 alertHeading ] );
						paragraph: 'Ouch!'
					];
				dark;
				buildApplying: [  ]
			]
		equals:
			'<div class="alert alert-dark" role="alert"><h4 class="alert-heading">Well done!</h4><p>Ouch!</p></div>'
]

{ #category : #tests }
Bootstrap4ComponentSupplierTest >> testRadioRenderingWithApplyingToLabelApplyingToInput [

	| supplier radio html |

	supplier := self supplierClass online.
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
			'<div class="form-check"><input name="1" id="radio-button-id2" class="willow form-check-input" value="1" type="radio"/><label for="radio-button-id2" class="willow form-check-label">F</label></div><div class="form-check"><input name="1" id="radio-button-id3" class="willow form-check-input" value="2" type="radio"/><label for="radio-button-id3" class="willow form-check-label">H</label></div>'
]
