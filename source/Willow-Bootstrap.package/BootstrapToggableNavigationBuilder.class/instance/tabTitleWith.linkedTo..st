private
tabTitleWith: aRenderable linkedTo: identifiedContent

	^ [ :canvas | 
	| link |

	link := canvas anchor.
	identifiedContent identifyIn: canvas.
	link url: ('#<1s>' expandMacrosWith: identifiedContent identifier).
	self applyMetadataTo: link controling: identifiedContent on: canvas.
	link with: aRenderable ]