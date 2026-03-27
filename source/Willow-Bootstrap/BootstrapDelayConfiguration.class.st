"
I'm a Delay configuration
"
Class {
	#name : 'BootstrapDelayConfiguration',
	#superclass : 'JSObject',
	#instVars : [
		'millisecondCountToShow',
		'millisecondCountToHide'
	],
	#category : 'Willow-Bootstrap-Plugins',
	#package : 'Willow-Bootstrap',
	#tag : 'Plugins'
}

{ #category : 'initialization' }
BootstrapDelayConfiguration >> initialize [

	super initialize.
	millisecondCountToHide := 0.
	millisecondCountToShow := 0
]

{ #category : 'printing' }
BootstrapDelayConfiguration >> javascriptContentOn: jsCanvas [

  jsCanvas object: [
      jsCanvas
        key: 'show' value: millisecondCountToShow;
        key: 'hide' value: millisecondCountToHide
    ]
]

{ #category : 'Configuring' }
BootstrapDelayConfiguration >> show: theMillisecondCountToShow hide: theMillisecondCountToHide [

	millisecondCountToShow := theMillisecondCountToShow.
	millisecondCountToHide := theMillisecondCountToHide
]
