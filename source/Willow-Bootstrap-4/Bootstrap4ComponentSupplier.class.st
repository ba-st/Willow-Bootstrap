"
I have the responsibility to provide Bootstrap 4 components. 
"
Class {
	#name : #Bootstrap4ComponentSupplier,
	#superclass : #BootstrapComponentSupplier,
	#instVars : [
		'bootstrapLibraries'
	],
	#category : #'Willow-Bootstrap-4-Frontend'
}

{ #category : #'Instance Creation' }
Bootstrap4ComponentSupplier class >> online [

	^ self
		usingLibraries:
			{Bootstrap4OnlineLibrary default.
			BootstrapSelectOnlineLibrary default.
			BootstrapDatepickerOnlineLibrary default.
			BootstrapTypeaheadOnlineLibrary default}
]

{ #category : #'private - Instance Creation' }
Bootstrap4ComponentSupplier class >> usingLibraries: aLibraryCollection [

	^ self new initializeUsing: aLibraryCollection
]

{ #category : #Supplying }
Bootstrap4ComponentSupplier >> checkboxLabeled: aRenderable onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent [

	^ Bootstrap4CheckboxWebView
		labeled: aRenderable
		onModel: anObjectToUseWhenOn
		offModel: anObjectToUseWhenOff
		applying: aCommandToComponent
]

{ #category : #Supplying }
Bootstrap4ComponentSupplier >> checkboxUnlabeledOnModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent [

	^ Bootstrap4CheckboxWebView
		onModel: anObjectToUseWhenOn
		offModel: anObjectToUseWhenOff
		applying: aCommandToComponent
]

{ #category : #'Supplying - Non Portable' }
Bootstrap4ComponentSupplier >> fieldAddonBuilder [

	^ Bootstrap4FieldAddonBuilder new
]

{ #category : #'Supplying - Non Portable' }
Bootstrap4ComponentSupplier >> helpTextBoundTo: aFieldWebView describedBy: aHelpText [

	^ Bootstrap4HelpTextWebView boundTo: aFieldWebView describedBy: aHelpText
]

{ #category : #initialization }
Bootstrap4ComponentSupplier >> initializeUsing: aLibraryCollection [

	bootstrapLibraries := aLibraryCollection
]

{ #category : #'Supplying - Non Portable' }
Bootstrap4ComponentSupplier >> labeledFieldApplying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField [

	^ BootstrapLabeledFieldWebView
		applying: aCommandToContainer
		displaying: thePhrasingContent
		applying: aCommandToLabel
		boundTo: aFieldWebView
		applying: aCommandToField
]

{ #category : #'Supplying - Non Portable' }
Bootstrap4ComponentSupplier >> navigationDropdownMenuBuilder [

	^ Bootstrap4NavigationDropdownMenuBuilder using: self
]

{ #category : #'Supplying - Non Portable' }
Bootstrap4ComponentSupplier >> pillsBuilder [

	^ BootstrapToggablePillsBuilder new
		beBootstrap4Aware;
		yourself
]

{ #category : #Supplying }
Bootstrap4ComponentSupplier >> radioRenderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand [

	^Bootstrap4RadioWebView 
		renderingWith: aRenderingBlock 
		applyingToLabel: aLabelCommand
		applyingToInput: anInputCommand
]

{ #category : #'Supplying - Non Portable' }
Bootstrap4ComponentSupplier >> singleButtonDropdownBuilder [

	^ Bootstrap4SingleButtonDropdownBuilder using: self
]

{ #category : #'Supplying - Non Portable' }
Bootstrap4ComponentSupplier >> splitButtonDropdownBuilder [

	^ Bootstrap4SplitButtonDropdownBuilder using: self
]

{ #category : #Supplying }
Bootstrap4ComponentSupplier >> tableBuilder [

	^ TableWebViewBuilder new
		apply: [ :table | table addClass bootstrap4 table ];
		yourself
]

{ #category : #'Supplying - Non Portable' }
Bootstrap4ComponentSupplier >> tabsBuilder [

	^ BootstrapToggableTabsBuilder new
		beBootstrap4Aware;
		yourself
]

{ #category : #Processing }
Bootstrap4ComponentSupplier >> updateRoot: aRoot [

	super updateRoot: aRoot.
	aRoot meta charset: 'utf-8'.
	aRoot meta
		name: 'viewport';
		content: 'width=device-width, initial-scale=1.0, shrink-to-fit=no'.
	bootstrapLibraries do: [ :library | library updateRoot: aRoot ].
	WillowBootstrapFileMetadataLibrary default updateRoot: aRoot
]
