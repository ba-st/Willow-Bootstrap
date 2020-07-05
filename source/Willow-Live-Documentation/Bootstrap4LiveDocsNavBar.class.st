Class {
	#name : #Bootstrap4LiveDocsNavBar,
	#superclass : #LiveDocsNavBar,
	#category : #'Willow-Live-Documentation-WebViews'
}

{ #category : #'instance creation' }
Bootstrap4LiveDocsNavBar class >> canHandle: aComponentSupplier [

	^ aComponentSupplier isA: Bootstrap4ComponentSupplier
]

{ #category : #rendering }
Bootstrap4LiveDocsNavBar >> goToNonPortableComponentsCatalogAnchor [

	| anchor |

	anchor := self componentSupplier
		asynchronicLinkActingAsButtonLabeled: 'Non-Portable'
		applying: [ :a | 
			a addClass bootstrap4 navLink
				+ ( a when: [ self session showingPortableComponents not ] apply: a addClass bootstrap4 active )
			].
	anchor onTrigger
		evaluate: [ self session goToNonPortableComponentsCatalog ];
		executeOnClient: [ JSStream on: 'Prism.highlightAll();' ];
		render: self session identifiedMainWebView.
	^ anchor
]

{ #category : #rendering }
Bootstrap4LiveDocsNavBar >> goToPortableComponentsCatalogAnchor [

	| anchor |

	anchor := self componentSupplier
		asynchronicLinkActingAsButtonLabeled: 'Portable'
		applying: [ :a | 
			a addClass bootstrap4 navLink
				+ ( a when: [ self session showingPortableComponents ] apply: a addClass bootstrap4 active )
			].
	anchor onTrigger
		evaluate: [ self session goToPortableComponentsCatalog ];
		render: self session identifiedMainWebView.
	^ anchor
]

{ #category : #rendering }
Bootstrap4LiveDocsNavBar >> renderContentOn: aCanvas [

	aCanvas navigation
		with: [ aCanvas div
				with: [ self renderLogoOn: aCanvas.
					aCanvas div
						with: [ self renderNavigationButtonsOn: aCanvas.
							self renderSupplierDetailsOn: aCanvas
							]
						applying: [ :div | div addClass bootstrap4 navbarCollapse ]
					]
				applying: [ :div | div addClass bootstrap4 container ]
			]
		applying: [ :nav | 
			nav addClass bootstrap4 navbar + nav addClass bootstrap4 navbarExpandLarge
				+ nav addClass bootstrap4 navbarDark + nav addClass bootstrap4 backgroundDark
				+ nav addClass bootstrap4 stickyTop
			]
]

{ #category : #rendering }
Bootstrap4LiveDocsNavBar >> renderLogoOn: aCanvas [

	aCanvas
		render:
			( self componentSupplier
				asynchronicLinkLabeled: self willowBootstrapLogoView
				applying: [ :link | link addClass bootstrap4 navbarBrand ] )
]

{ #category : #rendering }
Bootstrap4LiveDocsNavBar >> renderNavigationButtonsOn: aCanvas [

	aCanvas
		render:
			( UnorderedListWebView
				applying: [ :div | div addClass bootstrap4 navbarNavigation + div addClass bootstrap4 marginRightAuto ]
				listing:
					( Array
						with: self goToPortableComponentsCatalogAnchor
						with: self goToNonPortableComponentsCatalogAnchor )
				applyingToEach: [ :listItem | listItem addClass bootstrap4 navItem ] )
]

{ #category : #rendering }
Bootstrap4LiveDocsNavBar >> renderSupplierDetailsOn: aCanvas [

	aCanvas span
		with: [ aCanvas render: 'Based on '.
			aCanvas
				render:
					( self componentSupplier
						asynchronicLinkLabeled: ( 'Bootstrap <1s>' expandMacrosWith: Bootstrap4MetadataLibrary version )
						applying: [ :anchor | anchor setAttribute: 'href' to: 'https://getbootstrap.com/docs/4.4/components/' ] )
			]
		applying: [ :div | div addClass bootstrap4 navbarText ]
]
