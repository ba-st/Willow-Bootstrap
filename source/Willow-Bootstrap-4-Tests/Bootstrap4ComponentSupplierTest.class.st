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
			'<div class="form-check willow"><input id="checkbox-id1" class="willow form-check-input" checked name="3" type="checkbox"/><input name="4" type="hidden"/><label for="checkbox-id1" class="form-check-label">Labelization</label></div>'
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
			 '<!DOCTYPE html><html><head><title></title><meta charset="utf-8"/><meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no"/><link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"/><script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/css/bootstrap-select.min.css" integrity="sha512-ARJR74swou2y0Q2V9k0GbzQ/5vJ2RBSoCWokg4zkfM29Fb3vZEQyv0iWBMW/yvKgyHSR/7D64pFMmU8nYmbRkg==" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/js/bootstrap-select.min.js" integrity="sha512-yDlE7vpGDP7o2eftkCiPZ+yuUyEcaBwoJoIhdXv71KZWugFqEphIS3PU60lEkFaz8RxaVsMpSvQxMBaKVwA5xg==" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/js/i18n/defaults-en_US.min.js"></script><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/css/bootstrap-datepicker3.min.css" integrity="sha512-aQb0/doxDGrw/OC7drNaJQkIKFu6eSWnVMAwPN64p6sZKeJ4QCDYL42Rumw2ZtL8DB9f66q4CnLIUnAw28dEbg==" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/js/bootstrap-datepicker.min.js" integrity="sha512-LsnSViqQyaXpD4mBBdRYeP6sRwJiJveh2ZIbW41EBrNmKxgr/LFZIiWT6yr+nycvhvauz8c2nYMhrP80YhG7Cw==" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script><link rel="stylesheet" type="text/css" href="/files/willow-bootstrap-8.0.0/css/willow-bootstrap.css"/><script type="text/javascript" src="/files/willow-bootstrap-8.0.0/js/willow-bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
