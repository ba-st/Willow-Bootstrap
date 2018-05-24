"
Add quick, dynamic pills functionality to transition through panes of local content, even via dropdown menus. 
"
Class {
	#name : #BootstrapToggablePillsBuilder,
	#superclass : #BootstrapToggableNavigationBuilder,
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #adding }
BootstrapToggablePillsBuilder >> addPillHeadedBy: aRenderable containing: aTabContent [

	self addNavigationHeadedBy: aRenderable containing: aTabContent
]

{ #category : #private }
BootstrapToggablePillsBuilder >> dataToggleValue [

	^ Willow constants >> #bootstrap >> #pill
]

{ #category : #private }
BootstrapToggablePillsBuilder >> navigationTypeCommand [

	^ [ :list | list addClass bootstrap navPills ] asWebComponentCommand
]
