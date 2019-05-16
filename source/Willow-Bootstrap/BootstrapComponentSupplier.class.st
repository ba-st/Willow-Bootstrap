"
I'm the abstract superclass of the Bootstrap components suppliers. 
"
Class {
	#name : #BootstrapComponentSupplier,
	#superclass : #FrontendComponentSupplier,
	#category : #'Willow-Bootstrap-Frontend'
}

{ #category : #Supplying }
BootstrapComponentSupplier >> asynchronicButtonLabeled: aRenderable applying: aComponentCommand [

	^ AsynchronicButtonWebView
		labeled: aRenderable
		applying: [ :button | button addClass bootstrapCommon button + aComponentCommand ]
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> asynchronicLinkActingAsButtonLabeled: aRenderable applying: aComponentCommand [

	^ self
		asynchronicLinkLabeled: aRenderable
		applying: [ :anchor :constants | 
			( anchor setARIARoleTo: #button ) + anchor addClass bootstrapCommon button + aComponentCommand
				+ ( anchor setAttribute: 'href' to: '#' )
			]
]

{ #category : #Supplying }
BootstrapComponentSupplier >> asynchronicLinkLabeled: aRenderable applying: aComponentCommand [

	^ LinkWebView asynchronicLabeled: aRenderable applying: aComponentCommand
]

{ #category : #Supplying }
BootstrapComponentSupplier >> decimalNumberFieldApplying: aComponentCommand [

	^ NumberFieldWebView
		applying: [ :field | 
			field addClass bootstrapCommon formControl + field addClass bootstrapCommon textRight
				+ aComponentCommand
			]
		transformingWith: FloatCodec new
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> helpTextBoundTo: aFieldWebView describedBy: aHelpText [

	^ self subclassResponsibility
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> labeledFieldApplying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField [

	^ self subclassResponsibility
]

{ #category : #Supplying }
BootstrapComponentSupplier >> multiLineTextFieldApplying: aComponentCommand [

	^ TextFieldWebView
		multiLineTriggeringOnChangeApplying: [ :field | field addClass bootstrapCommon formControl + aComponentCommand ]
]

{ #category : #Supplying }
BootstrapComponentSupplier >> multipleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand [

	^ MultipleSelectionListBoxWebView
		displayingAtOnce: aNumberOfElements
		applying: [ :field | field addClass bootstrapCommon formControl + aComponentCommand ]
]

{ #category : #Supplying }
BootstrapComponentSupplier >> naturalNumberFieldApplying: aComponentCommand [

	^ NumberFieldWebView
		applying: [ :field | 
			field addClass bootstrapCommon formControl + field addClass bootstrapCommon textRight + aComponentCommand
				+ field boundNotNegative
			]
		transformingWith: NaturalNumberCodec new
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> navigationDropdownMenuBuilder [

	^ self subclassResponsibility
]

{ #category : #Supplying }
BootstrapComponentSupplier >> notificationBuilder [ 

	^BootstrapNotificationBuilder new
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> singleButtonDropdownBuilder [

	^ self subclassResponsibility
]

{ #category : #Supplying }
BootstrapComponentSupplier >> singleLineTextFieldApplying: aComponentCommand [

	^ TextFieldWebView
		singleLineTriggeringOnChangeApplying: [ :field | field addClass bootstrapCommon formControl + aComponentCommand ]
]

{ #category : #Supplying }
BootstrapComponentSupplier >> singleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand [

	^ SingleSelectionListBoxWebView
		displayingAtOnce: aNumberOfElements
		applying: [ :listBox | listBox addClass bootstrapCommon formControl + aComponentCommand ]
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> splitButtonDropdownBuilder [

	^ self subclassResponsibility
]

{ #category : #Supplying }
BootstrapComponentSupplier >> tableBuilder [

	^ TableWebViewBuilder new
		apply: [ :table | table addClass bootstrapCommon table ];
		yourself
]

{ #category : #Processing }
BootstrapComponentSupplier >> updateRoot: aRoot [

	aRoot beHtml5
]
