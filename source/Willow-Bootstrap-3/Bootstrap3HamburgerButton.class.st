"
The hamburger button  is a button typically placed in the top left or top right of a graphical user interface. It carries an icon consisting of three parallel horizontal lines.
Selecting (tapping or clicking) this button results in a menu being revealed (sliding out or popping up).
"
Class {
	#name : #Bootstrap3HamburgerButton,
	#superclass : #WAPainter,
	#instVars : [
		'targetIdentifier'
	],
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #'Instance Creation' }
Bootstrap3HamburgerButton class >> targeting: aStringOrSymbol [

	^self new initializeTargeting: aStringOrSymbol 
]

{ #category : #'private-rendering' }
Bootstrap3HamburgerButton >> buttonCommand [

	^ [ :button :constants | 
	button addClass bootstrap3 navbarToggle + button addClass bootstrap3 collapsed
		+ ( button setData: constants >> #bootstrap >> #toggle to: constants >> #css >> #collapse )
		+ ( button setData: constants >> #bootstrap >> #target to: targetIdentifier )
		+ ( button setARIAAttribute: 'expanded' to: false greaseString )
	]
]

{ #category : #initialize }
Bootstrap3HamburgerButton >> initializeTargeting: aStringOrSymbol [

	targetIdentifier := '#', aStringOrSymbol greaseString
]

{ #category : #rendering }
Bootstrap3HamburgerButton >> renderContentOn: aCanvas [

	aCanvas button
		bePush;
		with: [ self renderIconOn: aCanvas ] applying: self buttonCommand
]

{ #category : #'private-rendering' }
Bootstrap3HamburgerButton >> renderIconOn: aCanvas [

	3 timesRepeat: [ aCanvas span apply: [ :span | span addClass bootstrap3 iconBar ] ]
]
