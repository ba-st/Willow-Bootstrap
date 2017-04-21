tests
testUpdateRoot

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | BootstrapDatepickerDeploymentLibrary default updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-datepicker-1.7.0-RC2/css/bootstrap-datepicker3.min.css"/><script type="text/javascript" src="/files/bootstrap-datepicker-1.7.0-RC2/js/bootstrap-datepicker.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'