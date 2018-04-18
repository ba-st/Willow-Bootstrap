"
I'm a library providing some CSS required for the integration to work correctly.
"
Class {
	#name : #WillowBootstrapFileMetadataLibrary,
	#superclass : #WADeploymentAwareFileMetadataLibrary,
	#category : 'Willow-Bootstrap-Libraries'
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

	^ '7.0.0'

]

{ #category : #private }
WillowBootstrapFileMetadataLibrary >> cleanModalFunctionUsing: script [

	| function |

	function := JSFunction new arguments: #(modal).
	function << ((script jQuery new alias: 'modal') next: WAScriptTag new tag) remove.
	function << (script jQuery new alias: 'modal') remove.
	function << ((script jQuery id: WillowConstants dialogSectionName) children length equalTo: 0)
		nonInlinedThen: (script jQuery class: BootstrapCssStyles modalBackdrop) remove.
	^ function
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
		mimeType: WAMimeType textJavascript
		cacheDuration: self class defaultCacheDuration
		contents: self jswillowbootstrapJsContent
]

{ #category : #Accessing }
WillowBootstrapFileMetadataLibrary >> jswillowbootstrapJsContent [

	^ '/*<n>* willow-bootstrap.js v<1s><n>* Copyright 2018 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n><2s>'
		expandMacrosWith: self version
		with:
			(self
				javascriptContentFrom: [ :script | 
					| bootstrap |
					self replaceTooltipDestroyFunctionIn: script.
					bootstrap := script willow bootstrap.
					bootstrap
						assign:
							(GRSmallDictionary new
								at: BootstrapConstants cleanModalFunctionName put: (self cleanModalFunctionUsing: script);
								yourself).
					script << bootstrap asImmediatelyInvokedFunctionExpression ])
]

{ #category : #private }
WillowBootstrapFileMetadataLibrary >> replaceTooltipDestroyFunctionIn: script [

	"This fixes a problem in Bootstrap v3.3.7 when calling destroy in a tooltip twice. Checkout https://github.com/twbs/bootstrap/issues/21830 "

	script << (JSStream this alias: '$.prototype.tooltip.Constructor.prototype.destroy')
		assign:
			(JSFunction new
				add:
					(JSStream
						on:
							'var that = this
	clearTimeout(this.timeout)
	this.hide(function () {
	  null!=that.$element && that.$element.off("." + that.type).removeData("bs." + that.type)
	  if (that.$tip) {
		that.$tip.detach()
	  }
	  that.$tip = null
	  that.$arrow = null
	  that.$viewport = null
	  that.$element = null
	})');
				yourself)
]

{ #category : #Accessing }
WillowBootstrapFileMetadataLibrary >> selectorsToInclude [

	^ #(csswillowbootstrapCss jswillowbootstrapJs)
]

{ #category : #Accessing }
WillowBootstrapFileMetadataLibrary >> version [

	^self class version
]
