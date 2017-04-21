tests-Updating
testUpdateRoot

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | BootstrapDatepickerOnlineLibrary default updateRoot: root ];
		render: [ :canvas |  ].
	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.0-RC2/css/bootstrap-datepicker3.min.css" integrity="sha256-1iqXk6r3x/0/ipzsJOLDhuaMkmluaS1yhkM5MmQr5WU=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.0-RC2/js/bootstrap-datepicker.min.js" integrity="sha256-WjqKRLVPOKXTLplqPZyHgfV+KmQu8JulAuQVHdXUcJU=" crossorigin="anonymous"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'