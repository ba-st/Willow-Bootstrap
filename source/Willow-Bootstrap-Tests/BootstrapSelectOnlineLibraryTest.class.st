"
A BootstrapSelectOnlineLibraryTest is a test class for testing the behavior of BootstrapSelectOnlineLibrary
"
Class {
	#name : #BootstrapSelectOnlineLibraryTest,
	#superclass : #TestCase,
	#category : 'Willow-Bootstrap-Tests-Select'
}

{ #category : #'tests-updating' }
BootstrapSelectOnlineLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | BootstrapSelectOnlineLibrary inUSEnglish updateRoot: root ];
		render: [ :canvas |  ].
	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css" integrity="sha256-/us3egi2cVp0mEkVR8cnqLsuDY6BmrDuvTPUuEr1HJQ=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js" integrity="sha256-19J3rT3tQdidgtqqdQ3xNu++Gd7EoP/ag/0x1lHi0xY=" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/i18n/defaults-en_US.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]

{ #category : #'tests-updating' }
BootstrapSelectOnlineLibraryTest >> testUpdateRootInSpanish [

	| html |

	html := WAHtmlCanvas builder
		fullDocument: true;
		rootBlock: [ :root | BootstrapSelectOnlineLibrary inSpanish updateRoot: root ];
		render: [ :canvas |  ].

	self
		assert: html
		equals:
			'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css" integrity="sha256-/us3egi2cVp0mEkVR8cnqLsuDY6BmrDuvTPUuEr1HJQ=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js" integrity="sha256-19J3rT3tQdidgtqqdQ3xNu++Gd7EoP/ag/0x1lHi0xY=" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/i18n/defaults-es_ES.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
