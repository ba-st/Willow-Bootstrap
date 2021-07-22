Class {
	#name : #Bootstrap4NavigationBar,
	#superclass : #WAPainter,
	#instVars : [
		'componentCommand',
		'brandView',
		'navbarContent',
		'containerCommand'
	],
	#category : #'Willow-Bootstrap-4-WebViews'
}

{ #category : #'Instance Creation' }
Bootstrap4NavigationBar class >> brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	^ self
		styledAs: [ :container | container addClass bootstrap4 container ]
		brandedWith: aBrandWebView
		containing: aWebView
		applying: aCommandToComponent
]

{ #category : #'Instance Creation' }
Bootstrap4NavigationBar class >> fluidBrandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

		"this is the most commonly used option.
		for BS4 containerFluid below is the default and the whole line is not required, but is left here when moving the code from BS3 navBar."

	^ self
		styledAs: [ :container | container addClass bootstrap4 containerFluid ]
		brandedWith: aBrandWebView
		containing: aWebView
		applying: aCommandToComponent
]

{ #category : #'private-instance creation' }
Bootstrap4NavigationBar class >> styledAs: aContainerStylingCommand brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	^ self new
		initializeStyledAs: aContainerStylingCommand
		brandedWith: aBrandWebView
		containing: aWebView
		applying: aCommandToComponent asWebComponentCommand 
]

{ #category : #initialization }
Bootstrap4NavigationBar >> initializeStyledAs: aContainerCommand brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	containerCommand := aContainerCommand.
	componentCommand := aCommandToComponent.
	navbarContent := self componentSupplier
		divisionContainerWrapping: aWebView
		applying: [ :div | div addClass bootstrap4 collapse + div addClass bootstrap4 navbarCollapse ].
		"navbarContent beIdentifiable."" this line is not required and can be removed, seems to be the default behavior anyway" 
	brandView := aBrandWebView
]

{ #category : #rendering }
Bootstrap4NavigationBar >> renderContentOn: aCanvas [

	aCanvas navigation
		with: [ self renderNavigationBarHeaderOn: aCanvas.
					aCanvas render: navbarContent
			]
		applying: [ :nav | nav addClass bootstrap4 navbar + componentCommand ]
]

{ #category : #private }
Bootstrap4NavigationBar >> renderNavigationBarHeaderOn: aCanvas [

	aCanvas
		render:
			( self componentSupplier
				asynchronicLinkLabeled: brandView
				applying: [ :anchor | anchor addClass bootstrap4 navbarBrand ] );
		render: 
			( self componentSupplier 
				asynchronicButtonLabeled: ( self componentSupplier 
														inlineContainerWrapping: [  ]  
														applying: [ :span | span addClass bootstrap4 navbarTogglerIcon ] ) 
				applying: [ :button :constants | 
									button addClass bootstrap4 navbarToggler 
									+ (button setData: 'toggle' to: 'collapse')
									+ (button setData: 'target' to: ( '#', (navbarContent identifierOn: aCanvas) greaseString ) )
									+ (button setARIAAttribute: 'controls' to: 'navbarSupportedContent')
									+ (button setARIAAttribute: 'expanded' to: #false)
									+ (button setARIAAttribute: 'label' to: 'Toggle navigation' )
									] ) 	
]
