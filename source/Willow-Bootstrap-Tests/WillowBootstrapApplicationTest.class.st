Class {
	#name : #WillowBootstrapApplicationTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-Applications'
}

{ #category : #accessing }
WillowBootstrapApplicationTest >> componentSupplier [

	^ BootstrapComponentSupplier online
]

{ #category : #accessing }
WillowBootstrapApplicationTest >> createHandlers [

	^ Array with: self
]

{ #category : #accessing }
WillowBootstrapApplicationTest >> isSession [ 

^true
]

{ #category : #accessing }
WillowBootstrapApplicationTest >> preferenceAt: aSymbol ifAbsent: aBlock [

	^ aBlock value
]

{ #category : #accessing }
WillowBootstrapApplicationTest >> session [

	"I will simulate to be the session, because it's only used to ask it the componentSupplier"

	^ self
]

{ #category : #tests }
WillowBootstrapApplicationTest >> testRenderContentOnWithBootstrap [

	| html application |

	application := WillowTestingApplication using: self componentSupplier.
	html := self fullDocumentRendering: application.

	self
		assert: html
		equals:
			'<!DOCTYPE html><html lang="en"><head><title>The official testing app</title><script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script><script type="text/javascript" src="/files/willow-8.0.0/js/willow.js"></script><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="viewport" content="width=device-width, initial-scale=1.0"/><link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/><link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/><script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css" integrity="sha256-/us3egi2cVp0mEkVR8cnqLsuDY6BmrDuvTPUuEr1HJQ=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js" integrity="sha256-19J3rT3tQdidgtqqdQ3xNu++Gd7EoP/ag/0x1lHi0xY=" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/i18n/defaults-en_US.min.js"></script><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.0/css/bootstrap-datepicker3.min.css" integrity="sha256-BGGnKs7D5nLQOdxT3FlL/zrrzQySV6F99F0hvZTBYgw=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.0/js/bootstrap-datepicker.min.js" integrity="sha256-FOV0q1Ks/eXoUwtkcN6OxWV4u9OSq7LDomNYnfF/0Ys=" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script><link rel="stylesheet" type="text/css" href="/files/willow-bootstrap-7.0.0/css/willow-bootstrap.css"/><script type="text/javascript" src="/files/willow-bootstrap-7.0.0/js/willow-bootstrap.js"></script></head><body onload="onLoad()"><span><select name="1" class="form-control selectpicker" id="id2"></select></span><div id="willow-dialog-section" class="willow-dialog-container"></div><div id="willow-notification-section"></div><script type="text/javascript">function onLoad(){$("#id2").selectpicker("render");};</script></body></html>'

]