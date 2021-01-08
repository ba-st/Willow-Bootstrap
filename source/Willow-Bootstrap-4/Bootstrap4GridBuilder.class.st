"
I'm a builder easing the creation of Bootstrap grids
"
Class {
	#name : #Bootstrap4GridBuilder,
	#superclass : #BootstrapGridBuilder,
	#instVars : [
		'columnSpec',
		'isEvenlyDistributed'
	],
	#category : #'Willow-Bootstrap-4-WebViews'
}

{ #category : #building }
Bootstrap4GridBuilder >> buildApplying: aRowCommand [

	^ ContainerWebView
		wrapping: [ :canvas | 
			( 1 to: self numberOfRows )
				do: [ :rowIndex | self renderColumnsAt: rowIndex on: canvas ]
				separatedBy: [ canvas div apply: [ :div | div addClass bootstrap4 width100Percent ] ]
			]
		intoElementBuiltUsing: [ :theCanvas | theCanvas div ]
		applying: rowCommand + aRowCommand
]

{ #category : #private }
Bootstrap4GridBuilder >> columnCountPerRow [

	^ columnSpec size
]

{ #category : #Configuring }
Bootstrap4GridBuilder >> columnsPerRow: anInteger [

	| spec |

	isEvenlyDistributed := true.
	spec := OrderedCollection new.
	anInteger timesRepeat: [ spec add: 12 // anInteger ].
	columnSpec := spec asArray
]

{ #category : #Configuring }
Bootstrap4GridBuilder >> columnsWidths: aCollection [

	AssertionChecker
		enforce: [ aCollection sum = 12 ]
		because: 'The specified column count must match the grid total count.'.
	columnSpec := aCollection.
	isEvenlyDistributed := columnSpec asSet size = 1
]

{ #category : #private }
Bootstrap4GridBuilder >> contentIndexAt: rowIndex and: columnIndex [

	^ (rowIndex - 1) * self columnCountPerRow + columnIndex
]

{ #category : #Configuring }
Bootstrap4GridBuilder >> forExtraSmallDevices [

	columnBreakpointBlock := [ :column :count | 
	( column when: [ isEvenlyDistributed ] apply: column addClass bootstrap4 column )
		+ ( column when: [ isEvenlyDistributed not ] apply: ( column addClass bootstrap4 column: count ) )
	]
]

{ #category : #Configuring }
Bootstrap4GridBuilder >> forLargeDevices [

	columnBreakpointBlock := [ :column :count | 
	( column when: [ isEvenlyDistributed ] apply: column addClass bootstrap4 columnLarge )
		+
			( column when: [ isEvenlyDistributed not ] apply: ( column addClass bootstrap4 columnLarge: count ) )
	]
]

{ #category : #Configuring }
Bootstrap4GridBuilder >> forMediumDevices [

	columnBreakpointBlock := [ :column :count | 
	( column when: [ isEvenlyDistributed ] apply: column addClass bootstrap4 columnMedium )
		+
			( column when: [ isEvenlyDistributed not ] apply: ( column addClass bootstrap4 columnMedium: count ) )
	]
]

{ #category : #Configuring }
Bootstrap4GridBuilder >> forSmallDevices [

	columnBreakpointBlock := [ :column :count | 
	( column when: [ isEvenlyDistributed ] apply: column addClass bootstrap4 columnSmall )
		+
			( column when: [ isEvenlyDistributed not ] apply: ( column addClass bootstrap4 columnSmall: count ) )
	]
]

{ #category : #initialization }
Bootstrap4GridBuilder >> initialize [

	super initialize.
	self
		columnsPerRow: 2;
		forExtraSmallDevices.
]

{ #category : #private }
Bootstrap4GridBuilder >> numberOfRows [

	^ (contents size / self columnCountPerRow) ceiling
]

{ #category : #private }
Bootstrap4GridBuilder >> renderColumnsAt: rowIndex on: aCanvas [

	1 to: self columnCountPerRow do:
		[ :columnIndex | self renderContentAt: (self contentIndexAt: rowIndex and: columnIndex) spanning: (columnSpec at: columnIndex) on: aCanvas ]
]

{ #category : #private }
Bootstrap4GridBuilder >> renderContentAt: aContentIndex spanning: aColumnCount on: aCanvas [

	[ aCanvas div
		with: ( contents at: aContentIndex )
		applying: [ :cell | ( columnBreakpointBlock value: cell value: aColumnCount ) + cellCommand ]
	] unless: aContentIndex > contents size
]
