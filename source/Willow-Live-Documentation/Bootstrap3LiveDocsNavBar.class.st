Class {
	#name : #Bootstrap3LiveDocsNavBar,
	#superclass : #LiveDocsNavBar,
	#category : #'Willow-Live-Documentation-WebViews'
}

{ #category : #'instance creation' }
Bootstrap3LiveDocsNavBar class >> canHandle: aComponentSupplier [

	^ aComponentSupplier isA: Bootstrap3ComponentSupplier
]

{ #category : #rendering }
Bootstrap3LiveDocsNavBar >> goToNonPortableComponentsCatalogAnchor [

	| anchor |

	anchor := self componentSupplier
		asynchronicLinkActingAsButtonLabeled: 'Non-Portable'
		applying: [  ].
	anchor onTrigger
		evaluate: [ self session goToNonPortableComponentsCatalog ];
		executeOnClient: [ JSStream on: 'Prism.highlightAll();' ];
		render: self session identifiedMainWebView.
	^ anchor
]

{ #category : #rendering }
Bootstrap3LiveDocsNavBar >> goToPortableComponentsCatalogAnchor [

	| anchor |

	anchor := self componentSupplier asynchronicLinkActingAsButtonLabeled: 'Portable' applying: [  ].
	anchor onTrigger
		evaluate: [ self session goToPortableComponentsCatalog ];
		render: self session identifiedMainWebView.
	^ anchor
]

{ #category : #rendering }
Bootstrap3LiveDocsNavBar >> renderContentOn: aCanvas [

	aCanvas navigation
		with: [ aCanvas div
				with: [ self renderLogoOn: aCanvas.
					aCanvas div
						with: [ self renderNavigationButtonsOn: aCanvas.
							self renderSupplierDetailsOn: aCanvas
							]
						applying: [ :div | div addClass bootstrap3 navbarCollapse ]
					]
				applying: [ :div | div addClass bootstrap3 container ]
			]
		applying: [ :div | 
			div addClass bootstrap3 navbar + div addClass bootstrap3 navbarDefault
				+ div addClass bootstrap3 navbarStaticTop
			]
]

{ #category : #rendering }
Bootstrap3LiveDocsNavBar >> renderLogoOn: aCanvas [

	aCanvas div
		with:
			( self componentSupplier
				asynchronicLinkLabeled: self willowBootstrapLogoView
				applying: [ :link | link addClass bootstrap3 navbarBrand ] )
		applying: [ :div | div addClass bootstrap3 navbarHeader ]
]

{ #category : #rendering }
Bootstrap3LiveDocsNavBar >> renderNavigationButtonsOn: aCanvas [

	aCanvas
		render:
			( UnorderedListWebView
				applying: [ :div | div addClass bootstrap3 nav + div addClass bootstrap3 navbarNavigation ]
				listing:
					( Array
						with: self goToPortableComponentsCatalogAnchor
						with: self goToNonPortableComponentsCatalogAnchor )
				applyingToEach: [ :listItem |  ] )
]

{ #category : #rendering }
Bootstrap3LiveDocsNavBar >> renderSupplierDetailsOn: aCanvas [

	aCanvas paragraph
		with: [ aCanvas render: 'Powered By '.
			aCanvas
				render:
					( self componentSupplier
						asynchronicLinkLabeled: ('Bootstrap <1s>' expandMacrosWith: Bootstrap3MetadataLibrary version)
						applying:
							[ :anchor | anchor setAttribute: 'href' to: 'https://getbootstrap.com/docs/3.4/components/' ] )
			]
		applying: [ :div | div addClass bootstrap3 navbarText + div addClass bootstrap3 navbarRight ]
]
