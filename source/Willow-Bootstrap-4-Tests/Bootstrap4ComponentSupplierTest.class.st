"
A Bootstrap4ComponentSupplierTest is a test class for testing the behavior of Bootstrap4ComponentSupplier
"
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

{ #category : #tests }
Bootstrap4ComponentSupplierTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | self supplierClass online updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<!DOCTYPE html><html><head><title></title><meta charset="utf-8"/><meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no"/><link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script><script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.10/css/bootstrap-select.min.css" integrity="sha256-jwJEU4p1YdtymLFwAjYfam5Pj5NOnylms63k7LYQ9Jk=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.10/js/bootstrap-select.min.js" integrity="sha256-FXzZGmaRFZngOjUKy3lWZJq/MflaMpffBbu3lPT0izE=" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.10/js/i18n/defaults-en_US.min.js"></script><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker3.min.css" integrity="sha256-mlKJFBS1jbZwwDrZD1ApO7YFS6MA1XDN37jZ9GDFC64=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js" integrity="sha256-tW5LzEC7QjhG0CiAvxlseMTs2qJS7u3DRPauDjFJ3zo=" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script><link rel="stylesheet" type="text/css" href="/files/willow-bootstrap-8.0.0/css/willow-bootstrap.css"/><script type="text/javascript" src="/files/willow-bootstrap-8.0.0/js/willow-bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
