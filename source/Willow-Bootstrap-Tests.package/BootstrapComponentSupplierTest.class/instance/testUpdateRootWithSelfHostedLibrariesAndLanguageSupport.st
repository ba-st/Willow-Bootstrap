tests-Processing
testUpdateRootWithSelfHostedLibrariesAndLanguageSupport

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
			'<!DOCTYPE html><html><head><title></title><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="viewport" content="width=device-width, initial-scale=1.0"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.3.7/css/bootstrap.css"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.3.7/css/bootstrap-theme.css"/><script type="text/javascript" src="/files/bootstrap-3.3.7/js/bootstrap.js"></script><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.12.4/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.12.4/js/i18n/defaults-it_IT.js"></script><link rel="stylesheet" type="text/css" href="/files/bootstrap-datepicker-1.7.0/css/bootstrap-datepicker3.css"/><script type="text/javascript" src="/files/bootstrap-datepicker-1.7.0/js/bootstrap-datepicker.js"></script><script type="text/javascript" src="/files/bootstrap-datepicker-1.7.0/locales/bootstrap-datepicker.it.js"></script><script type="text/javascript" src="/files/bootstrap-typeahead-4.0.2/bootstrap3-typeahead.js"></script><link rel="stylesheet" type="text/css" href="/files/willow-bootstrap-5.0.0/css/willow-bootstrap.css"/><script type="text/javascript" src="/files/willow-bootstrap-5.0.0/js/willow-bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
