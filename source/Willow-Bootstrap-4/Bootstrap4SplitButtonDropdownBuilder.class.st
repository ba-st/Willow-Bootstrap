Class {
	#name : #Bootstrap4SplitButtonDropdownBuilder,
	#superclass : #Bootstrap4DropdownBuilder,
	#instVars : [
		'mainButtonBinding'
	],
	#category : #'Willow-Bootstrap-4-WebViews'
}

{ #category : #building }
Bootstrap4SplitButtonDropdownBuilder >> buildApplying: aComponentCommand [

	^ BootstrapSplitButtonWebView
		with:
			( ContainerWebView
				wrapping: self content
				intoElementBuiltUsing: [ :theCanvas | theCanvas div ]
				applying: [ :div | aComponentCommand asWebComponentCommand + div addClass bootstrap4 buttonGroup ] )
		and: mainButtonBinding content
]

{ #category : #Configuring }
Bootstrap4SplitButtonDropdownBuilder >> initialize [

	super initialize.
	mainButtonBinding := Binding undefinedExplainedBy: 'Missing main button definition'
]

{ #category : #Configuring }
Bootstrap4SplitButtonDropdownBuilder >> labeled: aRenderable applying: aComponentCommand [

	self labeled: aRenderable applyingToMainButton: [  ] andToBoth: aComponentCommand
]

{ #category : #Configuring }
Bootstrap4SplitButtonDropdownBuilder >> labeled: aRenderable applyingToMainButton: theMainButtonCommand andToBoth: theSplitButtonCommand [

	| mainButton |

	mainButton := supplier
		asynchronicButtonLabeled: aRenderable
		applying: theMainButtonCommand asWebComponentCommand + theSplitButtonCommand asWebComponentCommand.
	mainButtonBinding := Binding to: mainButton.
	buttonBinding := Binding to: [ :canvas | 
		canvas
			render: mainButton;
			render:
				( supplier
					asynchronicButtonLabeled: [ :innerCanvas | 
						innerCanvas span
							with: 'Toggle dropdown'
							applying: [ :span | span addClass bootstrapCommon screenReaderOnly ]
						]
					applying: [ :button :constants | 
						( self dropdownCommandFor: button using: constants )
							+ button addClass bootstrap4 dropdownToggleSplit
							+ theSplitButtonCommand asWebComponentCommand
						] )
		]
]
