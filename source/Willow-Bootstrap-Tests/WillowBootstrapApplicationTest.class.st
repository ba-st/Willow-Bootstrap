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

{ #category : #tests }
WillowBootstrapApplicationTest >> testRenderContentOnWithBootstrap [

	| html application |

	application := WillowTestingApplication using: self componentSupplier.
	html := self fullDocumentRendering: application.

	self
		assert: html
		equals:
			'<!DOCTYPE html><html lang="en"><head><title>The official testing app</title><script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script><script type="text/javascript" src="/files/willow-8.0.1/js/willow.js"></script><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="viewport" content="width=device-width, initial-scale=1.0"/><link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" integrity="sha384-PmY9l28YgO4JwMKbTvgaS7XNZJ30MK9FAZjjzXtlqyZCqBY6X6bXIkM++IkyinN+" crossorigin="anonymous"/><link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap-theme.min.css" integrity="sha384-jzngWsPS6op3fgRCDTESqrEJwRKck+CILhJVO5VvaAZCq8JYf8HsR/HPpBOOPZfR" crossorigin="anonymous"/><script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js" integrity="sha384-vhJnz1OVIdLktyixHY4Uk3OHEwdQqPppqYR8+5mjsauETgLOcEynD9oPHhhz18Nw" crossorigin="anonymous"></script><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css" integrity="sha256-/us3egi2cVp0mEkVR8cnqLsuDY6BmrDuvTPUuEr1HJQ=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js" integrity="sha256-19J3rT3tQdidgtqqdQ3xNu++Gd7EoP/ag/0x1lHi0xY=" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/i18n/defaults-en_US.min.js"></script><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker3.min.css" integrity="sha256-mlKJFBS1jbZwwDrZD1ApO7YFS6MA1XDN37jZ9GDFC64=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js" integrity="sha256-tW5LzEC7QjhG0CiAvxlseMTs2qJS7u3DRPauDjFJ3zo=" crossorigin="anonymous"></script><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script><link rel="stylesheet" type="text/css" href="/files/willow-bootstrap-8.0.0/css/willow-bootstrap.css"/><script type="text/javascript" src="/files/willow-bootstrap-8.0.0/js/willow-bootstrap.js"></script></head><body onload="onLoad()"><span><select name="1" class="form-control selectpicker" id="id2"></select></span><div id="willow-dialog-section" class="willow-dialog-container"></div><div id="willow-notification-section"></div><script type="text/javascript">function onLoad(){$("#id2").selectpicker("render");};</script></body></html>'
]
