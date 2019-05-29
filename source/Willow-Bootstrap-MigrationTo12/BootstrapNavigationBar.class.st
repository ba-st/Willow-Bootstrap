Class {
	#name : #BootstrapNavigationBar,
	#superclass : #Object,
	#category : #'Willow-Bootstrap-MigrationTo12'
}

{ #category : #'Instance Creation' }
BootstrapNavigationBar class >> brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	self
		deprecated: 'Use Bootstrap3NavigationBar'
		transformWith:
			'BootstrapNavigationBar
		brandedWith: `@aBrandWebView
		containing: `@aWebView
		applying: `@aCommandToComponent'
				->
					'Bootstrap3NavigationBar
		brandedWith: `@aBrandWebView
		containing: `@aWebView
		applying: `@aCommandToComponent'.

	^ Bootstrap3NavigationBar
		brandedWith: aBrandWebView
		containing: aWebView
		applying: aCommandToComponent
]

{ #category : #'Instance Creation' }
BootstrapNavigationBar class >> fluidBrandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent [

	self
		deprecated: 'Use Bootstrap3NavigationBar'
		transformWith:
			'BootstrapNavigationBar
		fluidBrandedWith: `@aBrandWebView
		containing: `@aWebView
		applying: `@aCommandToComponent'
				->
					'Bootstrap3NavigationBar
		fluidBrandedWith: `@aBrandWebView
		containing: `@aWebView
		applying: `@aCommandToComponent'.

	^ Bootstrap3NavigationBar
		fluidBrandedWith: aBrandWebView
		containing: aWebView
		applying: aCommandToComponent
]

{ #category : #deprecation }
BootstrapNavigationBar class >> isDeprecated [

	^ true
]
