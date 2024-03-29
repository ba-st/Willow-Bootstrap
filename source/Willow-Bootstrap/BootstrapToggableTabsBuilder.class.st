"
Add quick, dynamic tab functionality to transition through panes of local content, even via dropdown menus. Nested tabs are not supported.
"
Class {
	#name : #BootstrapToggableTabsBuilder,
	#superclass : #BootstrapToggableNavigationBuilder,
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #Configuring }
BootstrapToggableTabsBuilder >> addTabHeadedBy: aRenderable containing: aTabContent [

	self addNavigationHeadedBy: aRenderable containing: aTabContent
]

{ #category : #private }
BootstrapToggableTabsBuilder >> dataToggleValue [

	^ Constants >> #aria >> #tab
]

{ #category : #private }
BootstrapToggableTabsBuilder >> navigationTypeCommand [

	^ [ :list | list addClass bootstrapCommon navTabs ] asWebComponentCommand
]
