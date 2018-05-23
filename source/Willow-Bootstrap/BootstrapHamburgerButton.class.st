"
The hamburger button  is a button typically placed in the top left or top right of a graphical user interface. It carries an icon consisting of three parallel horizontal lines.
Selecting (tapping or clicking) this button results in a menu being revealed (sliding out or popping up).
"
Class {
	#name : #BootstrapHamburgerButton,
	#superclass : #WAPainter,
	#instVars : [
		'targetIdentifier'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #'Instance Creation' }
BootstrapHamburgerButton class >> targeting: aStringOrSymbol [

	^self new initializeTargeting: aStringOrSymbol 
]

{ #category : #'private-rendering' }
BootstrapHamburgerButton >> buttonCommand [

	^ [ :button :constants | 
	button addClass bootstrap navbarToggle + button addClass bootstrap collapsed
		+ (button setData: constants bootstrap toggle to: constants css >> #collapse) + (button setData: constants bootstrap target to: targetIdentifier)
		+ (button setARIAAttribute: 'expanded' to: false greaseString) ] asWebComponentCommand
]

{ #category : #initialize }
BootstrapHamburgerButton >> initializeTargeting: aStringOrSymbol [

	targetIdentifier := '#', aStringOrSymbol greaseString
]

{ #category : #rendering }
BootstrapHamburgerButton >> renderContentOn: aCanvas [

	| button |

	button := aCanvas button.
	button bePush.
	self buttonCommand applyTo: button on: aCanvas.
	button with: [ self renderIconOn: aCanvas ]
]

{ #category : #'private-rendering' }
BootstrapHamburgerButton >> renderIconOn: aCanvas [

	3 timesRepeat: [ aCanvas span class: Willow classes >> #bootstrap >>#iconBar ]
]
