"
I'm a builder easing the creation of Bootstrap grids
"
Class {
	#name : #BootstrapGridBuilder,
	#superclass : #WillowComponentBuilder,
	#instVars : [
		'columnSpec',
		'rowCommand',
		'cellCommand',
		'columnBreakpointBlock',
		'contents'
	],
	#category : 'Willow-Bootstrap-WebViews'
}

{ #category : #Configuring }
BootstrapGridBuilder >> addContent: aRenderable [

	contents add: aRenderable
]

{ #category : #Configuring }
BootstrapGridBuilder >> applyingToCells: aCellCommand [

	cellCommand := cellCommand + aCellCommand
]

{ #category : #building }
BootstrapGridBuilder >> buildApplying: aRowCommand [

	| rows |

	rows := OrderedCollection new.
	1 to: self numberOfRows do: [ :rowIndex | rows add: (GenericContainerWebView wrapping: [ :canvas | self renderColumnsAt: rowIndex on: canvas ] applying: rowCommand + aRowCommand) ].
	^ rows
]

{ #category : #private }
BootstrapGridBuilder >> columnCountPerRow [

	^ columnSpec size
]

{ #category : #Configuring }
BootstrapGridBuilder >> columnsPerRow: anInteger [

	| spec |

	spec := OrderedCollection new.
	anInteger timesRepeat: [ spec add: 12 // anInteger ].
	columnSpec := spec asArray
]

{ #category : #Configuring }
BootstrapGridBuilder >> columnsWidths: aCollection [

	AssertionChecker enforce: [ aCollection sum = 12 ] because: 'The specified column count must match the grid total count.'.
	columnSpec := aCollection
]

{ #category : #private }
BootstrapGridBuilder >> contentIndexAt: rowIndex and: columnIndex [

	^ (rowIndex - 1) * self columnCountPerRow + columnIndex
]

{ #category : #Configuring }
BootstrapGridBuilder >> forExtraSmallDevices [

	columnBreakpointBlock := [ :column :count | column addClass bootstrap columnExtraSmall: count ]
]

{ #category : #Configuring }
BootstrapGridBuilder >> forLargeDevices [

	columnBreakpointBlock := [ :column :count | column addClass bootstrap columnLarge: count ]
]

{ #category : #Configuring }
BootstrapGridBuilder >> forMediumDevices [

	columnBreakpointBlock := [ :column :count | column addClass bootstrap columnMedium: count ]
]

{ #category : #Configuring }
BootstrapGridBuilder >> forSmallDevices [

	columnBreakpointBlock := [ :column :count | column addClass bootstrap columnSmall: count ]
]

{ #category : #initialization }
BootstrapGridBuilder >> initialize [

	super initialize.
	columnSpec := #(6 6).
	rowCommand := [ :row | row addClass bootstrap row ] asWebComponentCommand.
	cellCommand := [  ] asWebComponentCommand.
	self forMediumDevices.
	contents := OrderedCollection new
]

{ #category : #private }
BootstrapGridBuilder >> numberOfRows [

	^ (contents size / self columnCountPerRow) ceiling
]

{ #category : #private }
BootstrapGridBuilder >> renderColumnsAt: rowIndex on: aCanvas [

	1 to: self columnCountPerRow do:
		[ :columnIndex | self renderContentAt: (self contentIndexAt: rowIndex and: columnIndex) spanning: (columnSpec at: columnIndex) on: aCanvas ]
]

{ #category : #private }
BootstrapGridBuilder >> renderContentAt: aContentIndex spanning: aColumnCount on: aCanvas [

	aContentIndex > contents size
		ifFalse: [ aCanvas
				render:
					(GenericContainerWebView
						wrapping: (contents at: aContentIndex)
						applying: [ :cell | (columnBreakpointBlock value: cell value: aColumnCount) + cellCommand ]) ]
]
