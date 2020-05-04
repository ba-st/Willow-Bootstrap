"
I'm a library providing some CSS required for the integration to work correctly.
"
Class {
	#name : #WillowBootstrapFileMetadataLibrary,
	#superclass : #WADeploymentAwareFileMetadataLibrary,
	#category : #'Willow-Bootstrap-Libraries'
}

{ #category : #Accessing }
WillowBootstrapFileMetadataLibrary class >> forDeployment [

	^ self 
]

{ #category : #Accessing }
WillowBootstrapFileMetadataLibrary class >> forDevelopment [

	^ self 
]

{ #category : #Accessing }
WillowBootstrapFileMetadataLibrary class >> libraryName [

	^ 'willow-bootstrap'
]

{ #category : #Accessing }
WillowBootstrapFileMetadataLibrary class >> version [

	^ '8.0.0'

]

{ #category : #private }
WillowBootstrapFileMetadataLibrary >> classification [

	^ Willow classification
]

{ #category : #private }
WillowBootstrapFileMetadataLibrary >> cleanModalFunctionUsing: script [

	| function |

	function := JSFunction new arguments: #(modal).
	function << ((script jQuery new alias: 'modal') next: WAScriptTag new tag) remove.
	function << (script jQuery new alias: 'modal') remove.
	function <<	(script javascript
				if: ((script jQuery id: self constants >> #willow >> #dialogSectionName) children length equalTo: 0)
				then: (script jQuery class: self classification >> #bootstrapCommon >> #modalBackdrop) remove).
	^ function
]

{ #category : #private }
WillowBootstrapFileMetadataLibrary >> constants [

	^ Willow constants
]

{ #category : #Accessing }
WillowBootstrapFileMetadataLibrary >> csswillowbootstrapCss [

	^WAFileLibraryResource
		filepath: 'css/willow-bootstrap.css'
		mimeType: WAMimeType textCss
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: self csswillowbootstrapCssContent
]

{ #category : #Accessing }
WillowBootstrapFileMetadataLibrary >> csswillowbootstrapCssContent [

	^'/*<n>* willow-bootstrap.css v<1s><n>* Copyright 2018 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n><2p>'
		expandMacrosWith: self version
		with: WillowBootstrapCascadingStyleSheetBuilder new build
]

{ #category : #Accessing }
WillowBootstrapFileMetadataLibrary >> jswillowbootstrapJs [

	^ WAFileLibraryResource
		filepath: 'js/willow-bootstrap.js'
		mimeType: (WAMimeType main: 'application' sub: 'javascript')
		cacheDuration: self class defaultCacheDuration
		contents: self jswillowbootstrapJsContent
]

{ #category : #Accessing }
WillowBootstrapFileMetadataLibrary >> jswillowbootstrapJsContent [

	^ '/*<n>* willow-bootstrap.js v<1s><n>* Copyright 2018 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n><2s>'
		expandMacrosWith: self version
		with:
			( self
				javascriptContentFrom: [ :script | 
					| bootstrap |

					self putVersionSpecificHacksOn: script.
					bootstrap := script willow bootstrap.
					bootstrap
						assign:
							( GRSmallDictionary new
								at: self constants >> #bootstrap >> #cleanModalFunctionName
									put: ( self cleanModalFunctionUsing: script );
								yourself ).
					script << bootstrap asImmediatelyInvokedFunctionExpression
					] )
]

{ #category : #Accessing }
WillowBootstrapFileMetadataLibrary >> putVersionSpecificHacksOn: script [

	
]

{ #category : #Accessing }
WillowBootstrapFileMetadataLibrary >> selectorsToInclude [

	^ #(csswillowbootstrapCss jswillowbootstrapJs)
]

{ #category : #Accessing }
WillowBootstrapFileMetadataLibrary >> version [

	^self class version
]
