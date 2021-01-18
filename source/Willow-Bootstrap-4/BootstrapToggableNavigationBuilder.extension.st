Extension { #name : #BootstrapToggableNavigationBuilder }

{ #category : #'*Willow-Bootstrap-4' }
BootstrapToggableNavigationBuilder >> beBootstrap4Aware [

	firstTabHeaderCommand := [  ] asWebComponentCommand.
	firstTitleCommand := [ :link | link addClass bootstrapCommon active ] asWebComponentCommand.
	tabHeaderCommand := [ :listItem | listItem addClass bootstrap4 navItem ] asWebComponentCommand.
	tabTitleCommand := [ :link | link addClass bootstrap4 navLink ] asWebComponentCommand
]
