"
I'm a builder easing the creation of Bootstrap grids
"
Class {
	#name : #Bootstrap3GridBuilder,
	#superclass : #BootstrapGridBuilder,
	#instVars : [
		'columnSpec'
	],
	#category : #'Willow-Bootstrap-3-WebViews'
}

{ #category : #building }
Bootstrap3GridBuilder >> buildApplying: aRowCommand [

	^ ( 1 to: self numberOfRows )
		collect: [ :rowIndex | 
			ContainerWebView
				wrapping: [ :canvas | self renderColumnsAt: rowIndex on: canvas ]
				intoElementBuiltUsing: [ :theCanvas | theCanvas div ]
				applying: rowCommand + aRowCommand
			]
]

{ #category : #private }
Bootstrap3GridBuilder >> columnCountPerRow [

	^ columnSpec size
]

{ #category : #Configuring }
Bootstrap3GridBuilder >> columnsPerRow: anInteger [

	| spec |

	spec := OrderedCollection new.
	anInteger timesRepeat: [ spec add: 12 // anInteger ].
	columnSpec := spec asArray
]

{ #category : #Configuring }
Bootstrap3GridBuilder >> columnsWidths: aCollection [

	AssertionChecker enforce: [ aCollection sum = 12 ] because: 'The specified column count must match the grid total count.'.
	columnSpec := aCollection
]

{ #category : #private }
Bootstrap3GridBuilder >> contentIndexAt: rowIndex and: columnIndex [

	^ (rowIndex - 1) * self columnCountPerRow + columnIndex
]

{ #category : #Configuring }
Bootstrap3GridBuilder >> forExtraSmallDevices [ 

	columnBreakpointBlock := [ :column :count | column addClass bootstrap3 columnExtraSmall: count ]
]

{ #category : #Configuring }
Bootstrap3GridBuilder >> forLargeDevices [

	columnBreakpointBlock := [ :column :count | column addClass bootstrap3 columnLarge: count ]
]

{ #category : #Configuring }
Bootstrap3GridBuilder >> forMediumDevices [

	columnBreakpointBlock := [ :column :count | column addClass bootstrap3 columnMedium: count ]
]

{ #category : #Configuring }
Bootstrap3GridBuilder >> forSmallDevices [

	columnBreakpointBlock := [ :column :count | column addClass bootstrap3 columnSmall: count ]
]

{ #category : #initialization }
Bootstrap3GridBuilder >> initialize [

	super initialize.
	columnSpec := #(6 6).
	cellCommand := [  ] asWebComponentCommand.
	self forMediumDevices
]

{ #category : #private }
Bootstrap3GridBuilder >> numberOfRows [

	^ (contents size / self columnCountPerRow) ceiling
]

{ #category : #private }
Bootstrap3GridBuilder >> renderColumnsAt: rowIndex on: aCanvas [

	1 to: self columnCountPerRow do:
		[ :columnIndex | self renderContentAt: (self contentIndexAt: rowIndex and: columnIndex) spanning: (columnSpec at: columnIndex) on: aCanvas ]
]

{ #category : #private }
Bootstrap3GridBuilder >> renderContentAt: aContentIndex spanning: aColumnCount on: aCanvas [

	[ aCanvas div
		with: ( contents at: aContentIndex )
		applying: [ :cell | ( columnBreakpointBlock value: cell value: aColumnCount ) + cellCommand ]
	] unless: aContentIndex > contents size
]
