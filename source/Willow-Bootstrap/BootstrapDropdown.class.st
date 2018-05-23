"
Add dropdown menus to nearly anything with this simple plugin, including the navbar, tabs, and pills.
"
Class {
	#name : #BootstrapDropdown,
	#superclass : #BootstrapPlugin,
	#category : #'Willow-Bootstrap-Plugins'
}

{ #category : #private }
BootstrapDropdown >> method [

	^ self constants >> #bootstrap >> #dropdown
]

{ #category : #Methods }
BootstrapDropdown >> toggle [

	functionName := self constants >> #bootstrap >> #toggle
]
