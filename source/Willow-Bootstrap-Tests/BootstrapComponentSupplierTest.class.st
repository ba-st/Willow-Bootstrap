"
A BootstrapComponentSupplierTest is a test class for testing the behavior of BootstrapComponentSupplier
"
Class {
	#name : #BootstrapComponentSupplierTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-Frontend'
}

{ #category : #private }
BootstrapComponentSupplierTest >> assertRenderingOf: aComponentCreationBlock equals: anExpectedHtml [

	| component html |

	component := aComponentCreationBlock value: BootstrapComponentSupplier online.

	html := self render: component.

	self assert: html equals: anExpectedHtml
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testAsynchronicButtonLabeledApplying [

	self
		assertRenderingOf: [ :supplier | 
			supplier
				asynchronicButtonLabeled: 'Buy'
				applying: [ :anchor | anchor addClass bootstrap buttonPrimary ] ]
		equals: '<button class="btn btn-primary" type="button">Buy</button>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testAsynchronicLinkActingAsButtonLabeledApplying [

	self
		assertRenderingOf: [ :supplier | supplier asynchronicLinkActingAsButtonLabeled: 'Buy' applying: [ :link | link addClass bootstrap buttonPrimary ] ]
		equals:
			'<a id="a-id1" role="button" class="btn btn-primary">Buy</a><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});</script>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testAsynchronicLinkLabeledApplying [

	self
		assertRenderingOf: [ :supplier | supplier asynchronicLinkLabeled: 'Buy' applying: [ :link | link addClass bootstrap buttonPrimary ] ]
		equals:
			'<a id="a-id1" class="btn-primary">Buy</a><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});</script>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testCheckboxLabeledOnModelOffModelApplying [

	self
		assertRenderingOf: [ :supplier | 
			supplier
				checkboxLabeled: 'Labelization'
				onModel: 3
				offModel: 'the off'
				applying: [ :checkbox | checkbox addClass willow ] ]
		equals: '<div class="checkbox willow"><label><input class="willow" checked="checked" name="1" type="checkbox"/><input name="2" type="hidden"/>Labelization</label></div>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testCheckboxUnlabeledOnModelOffModelApplying [

	self
		assertRenderingOf: [ :supplier | supplier checkboxUnlabeledOnModel: 3 offModel: 'the off' applying: [ :checkbox | checkbox addClass willow ] ]
		equals: '<div class="checkbox willow"><label><input class="willow" checked="checked" name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testDateFieldApplying [

	self
		assertRenderingOf: [ :supplier | supplier dateFieldApplying: [ :field | field addClass bootstrap textCenter ] ]
		equals: '<input value="" name="1" class="form-control text-center" maxlength="10" data-provide="datepicker" type="text"/>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testDecimalNumberFieldApplying [

	self assertRenderingOf: [ :supplier | supplier decimalNumberFieldApplying: [ :field |  ] ] equals: '<input value="" name="1" type="number" class="form-control text-right"/>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testDropdownListApplying [

	self
		assertRenderingOf: [ :supplier | supplier dropdownListApplying: [ :dropdownList | dropdownList setData: 'size' to: 10 ] ]
		equals: '<select name="1" class="form-control selectpicker" data-size="10" id="id2"></select><script type="text/javascript">$("#id2").selectpicker("render");</script>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testFieldSetContainingApplyingWithLegendApplying [

	self
		assertRenderingOf: [ :supplier | 
			supplier
				fieldSetContaining: 'The View'
				applying: [ :fieldSet | fieldSet beDisabled ]
				withLegend: 'Its Title'
				applying: [ :legend | legend beAutofocused ] ]
		equals: '<fieldset disabled="disabled"><legend autofocus="autofocus">Its Title</legend>The View</fieldset>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testMultiLineTextFieldApplying [

	self
		assertRenderingOf: [ :supplier | supplier multiLineTextFieldApplying: [ :field | field addClass bootstrap textCenter ] ]
		equals: '<textarea rows="auto" cols="auto" name="1" class="form-control text-center"></textarea>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testMultipleSelectionListBoxDisplayingAtOnceApplying [

	self
		assertRenderingOf: [ :supplier | supplier multipleSelectionListBoxDisplayingAtOnce: 10 applying: [ :listBox |  ] ]
		equals: '<select name="1" size="10" class="form-control" multiple="multiple"></select><input name="2" type="hidden"/>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testNaturalNumberFieldApplying [

	self assertRenderingOf: [ :supplier | supplier naturalNumberFieldApplying: [ :field |  ] ] equals: '<input value="" name="1" type="number" class="form-control text-right" min="0"/>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testNotificationBuilder [

	self
		assertRenderingOf: [ :supplier | 
			supplier notificationBuilder
				wrapping: 'Ouch!';
				danger;
				buildApplying: [  ] ]
		equals: '<div class="alert alert-danger" role="alert">Ouch!</div>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testRadioRenderingWithApplyingToLabelApplyingToInput [

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
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testSingleSelectionListBoxDisplayingAtOnceApplying [

	self assertRenderingOf: [ :supplier | supplier singleSelectionListBoxDisplayingAtOnce: 10 applying: [ :listBox |  ] ] equals: '<select name="1" size="10" class="form-control"></select>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testSynchronicButtonLabeledApplyingEvaluating [

	self
		assertRenderingOf: [ :supplier | 
			supplier
				synchronicButtonLabeled: 'Buy'
				applying: [ :link | link addClass bootstrap buttonPrimary ]
				evaluating: [  ] ]
		equals: '<button name="1" class="btn btn-primary" type="submit">Buy</button>'
]

{ #category : #'tests-Supplying' }
BootstrapComponentSupplierTest >> testTableBuilder [

	| supplier table html |

	supplier := BootstrapComponentSupplier online.

	table := supplier tableBuilder
		addColumnTitled: 'Number' rendering: [ :number | number ];
		build.

	table changeContentsTo: #(1 2 3).

	html := self render: table.

	self
		assert: html
		equals:
			'<table id="table-id1" class="table"><thead><th>Number</th></thead><tbody><tr><td>1</td></tr><tr><td>2</td></tr><tr><td>3</td></tr></tbody></table>'
]

{ #category : #'tests-Processing' }
BootstrapComponentSupplierTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | BootstrapComponentSupplier online updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<!DOCTYPE html><html><head><title></title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="viewport" content="width=device-width, initial-scale=1.0"/><link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/><link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/><script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css" integrity="sha256-/us3egi2cVp0mEkVR8cnqLsuDY6BmrDuvTPUuEr1HJQ=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js" integrity="sha256-19J3rT3tQdidgtqqdQ3xNu++Gd7EoP/ag/0x1lHi0xY=" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/i18n/defaults-en_US.min.js"></script><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.0/css/bootstrap-datepicker3.min.css" integrity="sha256-BGGnKs7D5nLQOdxT3FlL/zrrzQySV6F99F0hvZTBYgw=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.0/js/bootstrap-datepicker.min.js" integrity="sha256-FOV0q1Ks/eXoUwtkcN6OxWV4u9OSq7LDomNYnfF/0Ys=" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script><link rel="stylesheet" type="text/css" href="/files/willow-bootstrap-7.0.0/css/willow-bootstrap.css"/><script type="text/javascript" src="/files/willow-bootstrap-7.0.0/js/willow-bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'

]

{ #category : #'tests-Processing' }
BootstrapComponentSupplierTest >> testUpdateRootWithSelfHostedLibraries [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root |
			(BootstrapComponentSupplier
				withBootstrapLibrary: Bootstrap3DevelopmentMetadataLibrary default
				selectLibrary: BootstrapSelectDevelopmentLibrary default
				datepickerLibrary: BootstrapDatepickerDevelopmentLibrary default
				typeaheadLibrary: BootstrapTypeaheadDevelopmentLibrary default) updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<!DOCTYPE html><html><head><title></title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="viewport" content="width=device-width, initial-scale=1.0"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.3.7/css/bootstrap.css"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.3.7/css/bootstrap-theme.css"/><script type="text/javascript" src="/files/bootstrap-3.3.7/js/bootstrap.js"></script><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.12.4/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/i18n/defaults-en_US.js"></script><link rel="stylesheet" type="text/css" href="/files/bootstrap-datepicker-1.7.0/css/bootstrap-datepicker3.css"/><script type="text/javascript" src="/files/bootstrap-datepicker-1.7.0/js/bootstrap-datepicker.js"></script><script type="text/javascript" src="/files/bootstrap-typeahead-4.0.2/bootstrap3-typeahead.js"></script><link rel="stylesheet" type="text/css" href="/files/willow-bootstrap-7.0.0/css/willow-bootstrap.css"/><script type="text/javascript" src="/files/willow-bootstrap-7.0.0/js/willow-bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'

]

{ #category : #'tests-Processing' }
BootstrapComponentSupplierTest >> testUpdateRootWithSelfHostedLibrariesAndLanguageSupport [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root |
			| locale |

			locale := WALocale fromString: 'it'.
			(BootstrapComponentSupplier
				withBootstrapLibrary: Bootstrap3DevelopmentMetadataLibrary default
				selectLibrary: (BootstrapSelectDevelopmentLibrary using: locale)
				datepickerLibrary: (BootstrapDatepickerDevelopmentLibrary using: locale)
				typeaheadLibrary: BootstrapTypeaheadDevelopmentLibrary default) updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<!DOCTYPE html><html><head><title></title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="viewport" content="width=device-width, initial-scale=1.0"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.3.7/css/bootstrap.css"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.3.7/css/bootstrap-theme.css"/><script type="text/javascript" src="/files/bootstrap-3.3.7/js/bootstrap.js"></script><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.12.4/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/i18n/defaults-it_IT.js"></script><link rel="stylesheet" type="text/css" href="/files/bootstrap-datepicker-1.7.0/css/bootstrap-datepicker3.css"/><script type="text/javascript" src="/files/bootstrap-datepicker-1.7.0/js/bootstrap-datepicker.js"></script><script type="text/javascript" src="/files/bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.it.js"></script><script type="text/javascript" src="/files/bootstrap-typeahead-4.0.2/bootstrap3-typeahead.js"></script><link rel="stylesheet" type="text/css" href="/files/willow-bootstrap-7.0.0/css/willow-bootstrap.css"/><script type="text/javascript" src="/files/willow-bootstrap-7.0.0/js/willow-bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'

]
