"
A BootstrapDatepickerOnlineLibraryTest is a test class for testing the behavior of BootstrapDatepickerOnlineLibrary
"
Class {
	#name : #BootstrapDatepickerOnlineLibraryTest,
	#superclass : #TestCase,
	#category : 'Willow-Bootstrap-Tests-Datepicker'
}

{ #category : #'tests-Updating' }
BootstrapDatepickerOnlineLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | BootstrapDatepickerOnlineLibrary default updateRoot: root ];
		render: [ :canvas |  ].
	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker3.min.css" integrity="sha256-mlKJFBS1jbZwwDrZD1ApO7YFS6MA1XDN37jZ9GDFC64=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js" integrity="sha256-tW5LzEC7QjhG0CiAvxlseMTs2qJS7u3DRPauDjFJ3zo=" crossorigin="anonymous"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #'tests-Updating' }
BootstrapDatepickerOnlineLibraryTest >> testUpdateRootWithLocale [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | (BootstrapDatepickerOnlineLibrary using: (WALocale fromString: 'en-NZ')) updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker3.min.css" integrity="sha256-mlKJFBS1jbZwwDrZD1ApO7YFS6MA1XDN37jZ9GDFC64=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js" integrity="sha256-tW5LzEC7QjhG0CiAvxlseMTs2qJS7u3DRPauDjFJ3zo=" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/locales/bootstrap-datepicker.en-NZ.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #'tests-Updating' }
BootstrapDatepickerOnlineLibraryTest >> testUpdateRootWithUnsupportedLocale [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | (BootstrapDatepickerOnlineLibrary using: (WALocale fromString: 'vi-XX')) updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker3.min.css" integrity="sha256-mlKJFBS1jbZwwDrZD1ApO7YFS6MA1XDN37jZ9GDFC64=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js" integrity="sha256-tW5LzEC7QjhG0CiAvxlseMTs2qJS7u3DRPauDjFJ3zo=" crossorigin="anonymous"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
