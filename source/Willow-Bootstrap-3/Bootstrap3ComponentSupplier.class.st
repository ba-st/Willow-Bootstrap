"
I have the responsibility to provide Bootstrap components. 
"
Class {
	#name : #Bootstrap3ComponentSupplier,
	#superclass : #BootstrapComponentSupplier,
	#instVars : [
		'bootstrapLibraries'
	],
	#category : #'Willow-Bootstrap-3-Frontend'
}

{ #category : #'Instance Creation' }
Bootstrap3ComponentSupplier class >> online [

	^ self
		usingLibraries:
			{Bootstrap3OnlineLibrary default.
			BootstrapSelectOnlineLibrary default.
			BootstrapDatepickerOnlineLibrary default.
			BootstrapTypeaheadOnlineLibrary default}
]

{ #category : #'private - Instance Creation' }
Bootstrap3ComponentSupplier class >> usingLibraries: aLibraryCollection [

	^ self new initializeUsing: aLibraryCollection
]

{ #category : #'Instance Creation' }
Bootstrap3ComponentSupplier class >> withBootstrapLibrary: aBootstrapLibrary selectLibrary: aBootstrapSelectLibrary datepickerLibrary: aDatePickerLibrary typeaheadLibrary: aTypeaheadLibrary [

	^ self
		usingLibraries:
			{aBootstrapLibrary.
			aBootstrapSelectLibrary.
			aDatePickerLibrary.
			aTypeaheadLibrary}
]

{ #category : #Supplying }
Bootstrap3ComponentSupplier >> checkboxLabeled: aRenderable onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent [

	^ Bootstrap3CheckboxWebView
		labeled: aRenderable
		onModel: anObjectToUseWhenOn
		offModel: anObjectToUseWhenOff
		applying: aCommandToComponent
]

{ #category : #Supplying }
Bootstrap3ComponentSupplier >> checkboxUnlabeledOnModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent [

	^ Bootstrap3CheckboxWebView
		onModel: anObjectToUseWhenOn
		offModel: anObjectToUseWhenOff
		applying: aCommandToComponent
]

{ #category : #Supplying }
Bootstrap3ComponentSupplier >> dateFieldApplying: aComponentCommand [

	"The datepicker plugin doesn't play nice with the HTML5 date input, so we use a text input instead."

	^ DateFieldWebView
		applying: [ :field | 
			field addClass bootstrapCommon formControl + ( field setMaximumLengthTo: 10 ) + aComponentCommand
				+ BootstrapDatepickerCommand new + field beTextInput
			]
]

{ #category : #Supplying }
Bootstrap3ComponentSupplier >> dropdownListApplying: aComponentCommand [

	^ DropDownListWebView
		applying: [ :field | field addClass bootstrapCommon formControl + aComponentCommand + BootstrapSelectCommand new ]
]

{ #category : #'Supplying - Non Portable' }
Bootstrap3ComponentSupplier >> fieldAddonBuilder [

	^ Bootstrap3FieldAddonBuilder new 
]

{ #category : #'Supplying - Non Portable' }
Bootstrap3ComponentSupplier >> gridBuilder [

	^ BootstrapGridBuilder new
]

{ #category : #'Supplying - Non Portable' }
Bootstrap3ComponentSupplier >> helpTextBoundTo: aFieldWebView describedBy: aHelpText [

	^ Bootstrap3HelpTextWebView boundTo: aFieldWebView describedBy: aHelpText
]

{ #category : #initialization }
Bootstrap3ComponentSupplier >> initializeUsing: aLibraryCollection [

	bootstrapLibraries := aLibraryCollection
]

{ #category : #'Supplying - Non Portable' }
Bootstrap3ComponentSupplier >> labeledFieldApplying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField [

	^ BootstrapLabeledFieldWebView
		applying: aCommandToContainer
		displaying: thePhrasingContent
		applying: [ :label | label addClass bootstrap3 controlLabel + aCommandToLabel ] asWebComponentCommand
		boundTo: aFieldWebView
		applying: aCommandToField
]

{ #category : #'Supplying - Non Portable' }
Bootstrap3ComponentSupplier >> navigationDropdownMenuBuilder [

	^ Bootstrap3NavigationDropdownMenuBuilder using: self
]

{ #category : #'Supplying - Non Portable' }
Bootstrap3ComponentSupplier >> panelBuilder [

	^ BootstrapPanelBuilder new
]

{ #category : #'Supplying - Non Portable' }
Bootstrap3ComponentSupplier >> pillsBuilder [
	
	^BootstrapToggablePillsBuilder new
]

{ #category : #Supplying }
Bootstrap3ComponentSupplier >> radioRenderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand [

	^Bootstrap3RadioWebView 
		renderingWith: aRenderingBlock 
		applyingToLabel: aLabelCommand
		applyingToInput: anInputCommand

]

{ #category : #'Supplying - Non Portable' }
Bootstrap3ComponentSupplier >> singleButtonDropdownBuilder [

	^ Bootstrap3SingleButtonDropdownBuilder using: self
]

{ #category : #'Supplying - Non Portable' }
Bootstrap3ComponentSupplier >> splitButtonDropdownBuilder [

	^ Bootstrap3SplitButtonDropdownBuilder using: self
]

{ #category : #Supplying }
Bootstrap3ComponentSupplier >> synchronicButtonLabeled: aRenderable applying: aComponentCommand evaluating: anActionBlock [

	^ SynchronicSubmitButtonWebView
		labeled: aRenderable
		applying: [ :field | field addClass bootstrap3 button + aComponentCommand ]
		evaluating: anActionBlock
]

{ #category : #'Supplying - Non Portable' }
Bootstrap3ComponentSupplier >> tabsBuilder [

	^ BootstrapToggableTabsBuilder new
]

{ #category : #Processing }
Bootstrap3ComponentSupplier >> updateRoot: aRoot [

	super updateRoot: aRoot.
	aRoot meta
		responseHeaderName: 'X-UA-Compatible';
		content: 'IE=edge'.
	aRoot meta
		name: 'viewport';
		content: 'width=device-width, initial-scale=1.0'.
	bootstrapLibraries do: [ :library | library updateRoot: aRoot ].
	WillowBootstrap3FileMetadataLibrary default updateRoot: aRoot
]
