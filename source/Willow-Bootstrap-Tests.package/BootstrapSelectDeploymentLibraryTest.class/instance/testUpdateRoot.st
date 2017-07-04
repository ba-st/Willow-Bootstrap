tests
testUpdateRoot

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | BootstrapSelectDeploymentLibrary default updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-select-1.12.2/css/bootstrap-select.min.css"/><script type="text/javascript" src="/files/bootstrap-select-1.12.2/js/bootstrap-select.min.js"></script><script type="text/javascript" src="/files/bootstrap-select-1.12.2/js/i18n/defaults-en_US.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'