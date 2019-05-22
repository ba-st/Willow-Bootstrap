"
A Bootstrap3ComponentSupplierTest is a test class for testing the behavior of Bootstrap3ComponentSupplier
"
Class {
	#name : #Bootstrap3ComponentSupplierTest,
	#superclass : #BootstrapComponentSupplierTest,
	#category : #'Willow-Bootstrap-3-Tests-Frontend'
}

{ #category : #private }
Bootstrap3ComponentSupplierTest >> supplierClass [

	^ Bootstrap3ComponentSupplier
]

{ #category : #'tests-Supplying' }
Bootstrap3ComponentSupplierTest >> testAsynchronicLinkLabeledApplying [

	self
		assertRenderingOf:
			[ :supplier | supplier asynchronicLinkLabeled: 'Buy' applying: [ :link | link addClass bootstrap3 buttonPrimary ] ]
		equals:
			'<a id="a-id1" class="btn-primary">Buy</a><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});</script>'
]

{ #category : #'tests-Supplying' }
Bootstrap3ComponentSupplierTest >> testCheckboxLabeledOnModelOffModelApplying [

	self
		assertRenderingOf: [ :supplier | 
			supplier
				checkboxLabeled: 'Labelization'
				onModel: 3
				offModel: 'the off'
				applying: [ :checkbox | checkbox addClass willow ] ]
		equals: '<div class="checkbox willow"><label><input class="willow" checked name="1" type="checkbox"/><input name="2" type="hidden"/>Labelization</label></div>'
]

{ #category : #'tests-Supplying' }
Bootstrap3ComponentSupplierTest >> testCheckboxUnlabeledOnModelOffModelApplying [

	self
		assertRenderingOf: [ :supplier | supplier checkboxUnlabeledOnModel: 3 offModel: 'the off' applying: [ :checkbox | checkbox addClass willow ] ]
		equals: '<div class="checkbox willow"><label><input class="willow" checked name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>'
]

{ #category : #'tests-Supplying' }
Bootstrap3ComponentSupplierTest >> testDateFieldApplying [

	self
		assertRenderingOf: [ :supplier | supplier dateFieldApplying: [ :field | field addClass bootstrap3 textCenter ] ]
		equals:
			'<input value="" name="1" type="text" class="form-control text-center" maxlength="10" data-provide="datepicker"/>'
]

{ #category : #'tests-Supplying' }
Bootstrap3ComponentSupplierTest >> testDropdownListApplying [

	self
		assertRenderingOf: [ :supplier | supplier dropdownListApplying: [ :dropdownList | dropdownList setData: 'size' to: 10 ] ]
		equals: '<select name="1" class="form-control selectpicker" data-size="10" id="id2"></select><script type="text/javascript">$("#id2").selectpicker("render");</script>'
]

{ #category : #'tests-Supplying' }
Bootstrap3ComponentSupplierTest >> testRadioRenderingWithApplyingToLabelApplyingToInput [

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
			'<label class="willow"><input name="1" id="radio-button-id2" class="willow" value="1" type="radio"/>F</label><label class="willow"><input name="1" id="radio-button-id3" class="willow" value="2" type="radio"/>H</label>'
]

{ #category : #'tests-Supplying' }
Bootstrap3ComponentSupplierTest >> testSynchronicButtonLabeledApplyingEvaluating [

	self
		assertRenderingOf: [ :supplier | 
			supplier
				synchronicButtonLabeled: 'Buy'
				applying: [ :link | link addClass bootstrap3 buttonPrimary ]
				evaluating: [  ]
			]
		equals: '<button name="1" class="btn btn-primary" type="submit">Buy</button>'
]

{ #category : #'tests-Processing' }
Bootstrap3ComponentSupplierTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | Bootstrap3ComponentSupplier online updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals: '<!DOCTYPE html><html><head><title></title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="viewport" content="width=device-width, initial-scale=1.0"/><link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous"/><link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous"/><script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css" integrity="sha256-/us3egi2cVp0mEkVR8cnqLsuDY6BmrDuvTPUuEr1HJQ=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js" integrity="sha256-19J3rT3tQdidgtqqdQ3xNu++Gd7EoP/ag/0x1lHi0xY=" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/i18n/defaults-en_US.min.js"></script><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker3.min.css" integrity="sha256-mlKJFBS1jbZwwDrZD1ApO7YFS6MA1XDN37jZ9GDFC64=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js" integrity="sha256-tW5LzEC7QjhG0CiAvxlseMTs2qJS7u3DRPauDjFJ3zo=" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script><link rel="stylesheet" type="text/css" href="/files/willow-bootstrap-8.0.0/css/willow-bootstrap.css"/><script type="text/javascript" src="/files/willow-bootstrap-8.0.0/js/willow-bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
			
]

{ #category : #'tests-Processing' }
Bootstrap3ComponentSupplierTest >> testUpdateRootWithSelfHostedLibraries [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | 
			( Bootstrap3ComponentSupplier
				withBootstrapLibrary: Bootstrap3DevelopmentMetadataLibrary default
				selectLibrary: BootstrapSelectDevelopmentLibrary default
				datepickerLibrary: BootstrapDatepickerDevelopmentLibrary default
				typeaheadLibrary: BootstrapTypeaheadDevelopmentLibrary default ) updateRoot: root
			];
		render: [ :canvas |  ].

	self
		assert: html
		equals: '<!DOCTYPE html><html><head><title></title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="viewport" content="width=device-width, initial-scale=1.0"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.4.1/css/bootstrap.css"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.4.1/css/bootstrap-theme.css"/><script type="text/javascript" src="/files/bootstrap-3.4.1/js/bootstrap.js"></script><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.12.4/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/i18n/defaults-en_US.js"></script><link rel="stylesheet" type="text/css" href="/files/bootstrap-datepicker-1.8.0/css/bootstrap-datepicker3.css"/><script type="text/javascript" src="/files/bootstrap-datepicker-1.8.0/js/bootstrap-datepicker.js"></script><script type="text/javascript" src="/files/bootstrap-typeahead-4.0.2/bootstrap3-typeahead.js"></script><link rel="stylesheet" type="text/css" href="/files/willow-bootstrap-8.0.0/css/willow-bootstrap.css"/><script type="text/javascript" src="/files/willow-bootstrap-8.0.0/js/willow-bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #'tests-Processing' }
Bootstrap3ComponentSupplierTest >> testUpdateRootWithSelfHostedLibrariesAndLanguageSupport [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | 
			| locale |

			locale := WALocale fromString: 'it'.
			( Bootstrap3ComponentSupplier
				withBootstrapLibrary: Bootstrap3DevelopmentMetadataLibrary default
				selectLibrary: ( BootstrapSelectDevelopmentLibrary using: locale )
				datepickerLibrary: ( BootstrapDatepickerDevelopmentLibrary using: locale )
				typeaheadLibrary: BootstrapTypeaheadDevelopmentLibrary default ) updateRoot: root
			];
		render: [ :canvas |  ].

	self
		assert: html
		equals: '<!DOCTYPE html><html><head><title></title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="viewport" content="width=device-width, initial-scale=1.0"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.4.1/css/bootstrap.css"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.4.1/css/bootstrap-theme.css"/><script type="text/javascript" src="/files/bootstrap-3.4.1/js/bootstrap.js"></script><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.12.4/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/i18n/defaults-it_IT.js"></script><link rel="stylesheet" type="text/css" href="/files/bootstrap-datepicker-1.8.0/css/bootstrap-datepicker3.css"/><script type="text/javascript" src="/files/bootstrap-datepicker-1.8.0/js/bootstrap-datepicker.js"></script><script type="text/javascript" src="/files/bootstrap-datepicker-1.8.0/locales/bootstrap-datepicker.it.js"></script><script type="text/javascript" src="/files/bootstrap-typeahead-4.0.2/bootstrap3-typeahead.js"></script><link rel="stylesheet" type="text/css" href="/files/willow-bootstrap-8.0.0/css/willow-bootstrap.css"/><script type="text/javascript" src="/files/willow-bootstrap-8.0.0/js/willow-bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
		 
]
