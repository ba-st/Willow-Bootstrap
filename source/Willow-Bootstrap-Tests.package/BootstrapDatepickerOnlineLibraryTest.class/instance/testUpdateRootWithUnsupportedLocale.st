tests-Updating
testUpdateRootWithUnsupportedLocale

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | (BootstrapDatepickerOnlineLibrary using: (WALocale fromString: 'vi-XX')) updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.0/css/bootstrap-datepicker3.min.css" integrity="sha256-BGGnKs7D5nLQOdxT3FlL/zrrzQySV6F99F0hvZTBYgw=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.0/js/bootstrap-datepicker.min.js" integrity="sha256-FOV0q1Ks/eXoUwtkcN6OxWV4u9OSq7LDomNYnfF/0Ys=" crossorigin="anonymous"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'