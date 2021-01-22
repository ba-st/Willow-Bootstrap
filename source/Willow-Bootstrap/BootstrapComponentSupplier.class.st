"
I'm the abstract superclass of the Bootstrap components suppliers. 
"
Class {
	#name : #BootstrapComponentSupplier,
	#superclass : #FrontendComponentSupplier,
	#category : #'Willow-Bootstrap-Frontend'
}

{ #category : #testing }
BootstrapComponentSupplier class >> isAbstract [

	^ self name = #BootstrapComponentSupplier
]

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
BootstrapComponentSupplier >> dateFieldApplying: aComponentCommand [

	^ DateFieldWebView
		applying: [ :field | 
			field addClass bootstrapCommon formControl + ( field setMaximumLengthTo: 10 ) + aComponentCommand
				+ BootstrapDatepickerCommand new + field beTextInput	"The datepicker plugin doesn't play nice with the HTML5 date input, so we use a text input instead."
			]
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
BootstrapComponentSupplier >> dialogBuilder [

	^ BootstrapModalBuilder new
]

{ #category : #Supplying }
BootstrapComponentSupplier >> dropdownListApplying: aComponentCommand applyingToOptions: anOptionCommand [

	^ SingleSelectionWebView
		dropDownListApplying: [ :field | 
			field addClass bootstrapCommon formControl + aComponentCommand
				+ BootstrapSelectCommand new ]
		applyingToOptions: anOptionCommand
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> fieldAddonBuilder [

	"A Field addon builder allows to extend fields by adding text, buttons or button groups on either side of the field"

	^ self subclassResponsibility
]

{ #category : #Supplying }
BootstrapComponentSupplier >> fieldSetContaining: aWebView applying: fieldSetCommand withLegend: aTitle applying: legendCommand [

	^ FieldSetWebView
		containing: aWebView
		applying: fieldSetCommand
		withLegend: aTitle
		applying: legendCommand
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> gridBuilder [

	self subclassResponsibility
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
		multiLineApplying: [ :field | field addClass bootstrapCommon formControl + aComponentCommand ]
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
BootstrapComponentSupplier >> panelBuilder [

	^ self subclassResponsibility
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> pillsBuilder [

	^ self subclassResponsibility
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> singleButtonDropdownBuilder [

	^ self subclassResponsibility
]

{ #category : #Supplying }
BootstrapComponentSupplier >> singleLineTextFieldApplying: aComponentCommand [

	^ TextFieldWebView
		singleLineApplying: [ :field | field addClass bootstrapCommon formControl + aComponentCommand ]
]

{ #category : #Supplying }
BootstrapComponentSupplier >> singleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand applyingToOptions: anOptionCommand [

	^ SingleSelectionWebView
		listBoxDisplayingAtOnce: aNumberOfElements
		applying:
			[ :listBox | listBox addClass bootstrapCommon formControl + aComponentCommand ]
		applyingToOptions: anOptionCommand
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> splitButtonDropdownBuilder [

	^ self subclassResponsibility
]

{ #category : #Interaction }
BootstrapComponentSupplier >> statementToCloseDialogsIn: jQueryMatchingDialogContainer matching: dialogSupplier on: aCanvas [

	^ ( dialogSupplier value: ( jQueryMatchingDialogContainer children: 'div' ) ) bootstrapModal hide
]

{ #category : #Supplying }
BootstrapComponentSupplier >> synchronicButtonLabeled: aRenderable applying: aComponentCommand evaluating: anActionBlock [

	^ SynchronicSubmitButtonWebView
		labeled: aRenderable
		applying: [ :field | field addClass bootstrapCommon button + aComponentCommand ]
		evaluating: anActionBlock
]

{ #category : #Supplying }
BootstrapComponentSupplier >> tableBuilder [

	^ TableWebViewBuilder new
		apply: [ :table | table addClass bootstrapCommon table ];
		yourself
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> tabsBuilder [

	^ self subclassResponsibility
]

{ #category : #Supplying }
BootstrapComponentSupplier >> timeFieldApplying: aComponentCommand [

	^ TimeFieldWebView
		applying: [ :field | 
			field addClass bootstrapCommon formControl + field addClass bootstrapCommon textCenter
				+ ( field setMaximumLengthTo: 8 ) + aComponentCommand + field beTextInput
			]
]

{ #category : #Supplying }
BootstrapComponentSupplier >> unorderedListApplying: aCommandToList listing: aCollection applyingToEach: aCommandToItem [

	^ UnorderedListWebView
		applying: [ :list | list addClass bootstrapCommon listGroup + aCommandToList ]
		listing: aCollection
		applyingToEach: [ :listItem | listItem addClass bootstrapCommon listGroupItem + aCommandToItem ]
]

{ #category : #Processing }
BootstrapComponentSupplier >> updateRoot: aRoot [

	aRoot beHtml5
]
