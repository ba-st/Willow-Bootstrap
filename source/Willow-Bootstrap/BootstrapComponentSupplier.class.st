"
I have the responsibility to provide Bootstrap components. 
"
Class {
	#name : #BootstrapComponentSupplier,
	#superclass : #FrontendComponentSupplier,
	#instVars : [
		'bootstrapLibraries'
	],
	#category : #'Willow-Bootstrap-Frontend'
}

{ #category : #'Instance Creation' }
BootstrapComponentSupplier class >> online [

	^ self
		usingLibraries:
			{Bootstrap3OnlineLibrary default.
			BootstrapSelectOnlineLibrary default.
			BootstrapDatepickerOnlineLibrary default.
			BootstrapTypeaheadOnlineLibrary default}
]

{ #category : #'private - Instance Creation' }
BootstrapComponentSupplier class >> usingLibraries: aLibraryCollection [

	^ self new initializeUsing: aLibraryCollection
]

{ #category : #'Instance Creation' }
BootstrapComponentSupplier class >> withBootstrapLibrary: aBootstrapLibrary selectLibrary: aBootstrapSelectLibrary datepickerLibrary: aDatePickerLibrary typeaheadLibrary: aTypeaheadLibrary [

	^ self
		usingLibraries:
			{aBootstrapLibrary.
			aBootstrapSelectLibrary.
			aDatePickerLibrary.
			aTypeaheadLibrary}
]

{ #category : #Interaction }
BootstrapComponentSupplier >> addStatementsTo: aJSScript toCloseDialogsIn: jQueryMatchingDialogContainer matching: dialogSupplier on: aCanvas [

	aJSScript << (dialogSupplier value: (jQueryMatchingDialogContainer children: 'div')) bootstrapModal hide
]

{ #category : #Supplying }
BootstrapComponentSupplier >> asynchronicButtonLabeled: aRenderable applying: aComponentCommand [

	^ AsynchronicButtonWebView labeled: aRenderable applying: [ :button | button addClass bootstrap button + aComponentCommand ]
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> asynchronicLinkActingAsButtonLabeled: aRenderable applying: aComponentCommand [

	^ self asynchronicLinkLabeled: aRenderable applying: [ :anchor :constants | (anchor setARIARoleTo: #button) + anchor addClass bootstrap button + aComponentCommand ]
]

{ #category : #Supplying }
BootstrapComponentSupplier >> asynchronicLinkLabeled: aRenderable applying: aComponentCommand [

	^ LinkWebView asynchronicLabeled: aRenderable applying: aComponentCommand
]

{ #category : #Supplying }
BootstrapComponentSupplier >> checkboxLabeled: aRenderable onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent [

	^ BootstrapCheckboxWebView
		labeled: aRenderable
		onModel: anObjectToUseWhenOn
		offModel: anObjectToUseWhenOff
		applying: aCommandToComponent
]

{ #category : #Supplying }
BootstrapComponentSupplier >> checkboxUnlabeledOnModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent [

	^ BootstrapCheckboxWebView
		onModel: anObjectToUseWhenOn
		offModel: anObjectToUseWhenOff
		applying: aCommandToComponent
]

{ #category : #Supplying }
BootstrapComponentSupplier >> dateFieldApplying: aComponentCommand [
	
	"The datepicker plugin don't plays nice with the HTML5 date input, so we use text input"
	^ DateFieldWebView applying: [ :field | field addClass bootstrap formControl + (field setMaximumLengthTo: 10) + aComponentCommand + BootstrapDatepickerCommand new + field beTextInput ]
]

{ #category : #Supplying }
BootstrapComponentSupplier >> decimalNumberFieldApplying: aComponentCommand [

	^ NumberFieldWebView applying: [ :field | field addClass bootstrap formControl + field addClass bootstrap textRight + aComponentCommand ] transformingWith: FloatCodec new
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> dialogBuilder [

	^ BootstrapModalBuilder new
]

{ #category : #Supplying }
BootstrapComponentSupplier >> dropdownListApplying: aComponentCommand [

	^ DropDownListWebView applying: [ :field | field addClass bootstrap formControl + aComponentCommand + BootstrapSelectCommand new ]
]

{ #category : #Supplying }
BootstrapComponentSupplier >> dropdownMenuBuilder [

	^ BootstrapDropdownMenuBuilder using: self
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

	^ BootstrapGridBuilder new
]

{ #category : #initialization }
BootstrapComponentSupplier >> initializeUsing: aLibraryCollection [

	bootstrapLibraries := aLibraryCollection
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> inputGroupAddOnWrapping: aRenderable [

	^ PhrasingContainerWebView wrapping: aRenderable applying: [ :container | container addClass bootstrap inputGroupAddon ]
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> inputGroupButtonWrapping: aRenderable [

	^ PhrasingContainerWebView wrapping: aRenderable applying: [ :container | container addClass bootstrap inputGroupButton ]
]

{ #category : #Supplying }
BootstrapComponentSupplier >> multiLineTextFieldApplying: aComponentCommand [

	^ TextFieldWebView multiLineTriggeringOnChangeApplying: [ :field | field addClass bootstrap formControl + aComponentCommand ]
]

{ #category : #Supplying }
BootstrapComponentSupplier >> multipleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand [

	^ MultipleSelectionListBoxWebView displayingAtOnce: aNumberOfElements applying: [ :field | field addClass bootstrap formControl + aComponentCommand ]
]

{ #category : #Supplying }
BootstrapComponentSupplier >> naturalNumberFieldApplying: aComponentCommand [

	^ NumberFieldWebView applying: [ :field | field addClass bootstrap formControl + field addClass bootstrap textRight + aComponentCommand + field boundNotNegative ] transformingWith: NaturalNumberCodec new
]

{ #category : #Supplying }
BootstrapComponentSupplier >> notificationBuilder [ 

	^BootstrapNotificationBuilder new
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> panelBuilder [

	^ BootstrapPanelBuilder new
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> pillsBuilder [
	
	^BootstrapToggablePillsBuilder new
]

{ #category : #Supplying }
BootstrapComponentSupplier >> radioRenderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand [

	^BootstrapRadioWebView 
		renderingWith: aRenderingBlock 
		applyingToLabel: aLabelCommand
		applyingToInput: anInputCommand

]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> singleButtonDropdownBuilder [

	^ BootstrapSingleButtonDropdownBuilder using: self
]

{ #category : #Supplying }
BootstrapComponentSupplier >> singleLineTextFieldApplying: aComponentCommand [

	^ TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field | field addClass bootstrap formControl + aComponentCommand ]
]

{ #category : #Supplying }
BootstrapComponentSupplier >> singleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand [

	^ SingleSelectionListBoxWebView displayingAtOnce: aNumberOfElements applying: [ :listBox | listBox addClass bootstrap formControl + aComponentCommand ]
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> splitButtonDropdownBuilder [

	^ BootstrapSplitButtonDropdownBuilder using: self
]

{ #category : #Supplying }
BootstrapComponentSupplier >> synchronicButtonLabeled: aRenderable applying: aComponentCommand evaluating: anActionBlock [

	^ SynchronicSubmitButtonWebView
		labeled: aRenderable
		applying: [ :field | field addClass bootstrap button + aComponentCommand ]
		evaluating: anActionBlock
]

{ #category : #Supplying }
BootstrapComponentSupplier >> tableBuilder [

	^ TableWebViewBuilder new
		apply: [ :table | table addClass bootstrap table ];
		yourself
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> tabsBuilder [

	^ BootstrapToggableTabsBuilder new
]

{ #category : #Supplying }
BootstrapComponentSupplier >> unorderedListApplying: aCommandToList listing: aCollection applyingToEach: aCommandToItem [

	^ UnorderedListWebView
		applying: [ :list | list addClass bootstrap listGroup + aCommandToList ]
		listing: aCollection
		applyingToEach: [ :listItem | listItem addClass bootstrap listGroupItem + aCommandToItem ]
]

{ #category : #Processing }
BootstrapComponentSupplier >> updateRoot: aRoot [

	aRoot beHtml5.
	aRoot meta
		responseHeaderName: 'X-UA-Compatible';
		content: 'IE=edge'.
	aRoot meta
		name: 'viewport';
		content: 'width=device-width, initial-scale=1.0'.
	bootstrapLibraries do: [ :library | library updateRoot: aRoot ].
	WillowBootstrapFileMetadataLibrary default updateRoot: aRoot
]
