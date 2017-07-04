tests
testUpdateRootWithLocale

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | (BootstrapSelectDevelopmentLibrary using: (WALocale fromString: 'es-AR')) updateRoot: root ];
		render: [ :canvas |  ].


	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.12.2/css/bootstrap-select.css"/><script type="text/javascript" src="/files/bootstrap-select-1.12.2/js/bootstrap-select.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.12.2/js/i18n/defaults-es_ES.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'