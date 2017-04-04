Instance Creation
representing: aGlyphiconName applying: aCommandToComponent

	^ self applying: (self classificationCommandFor: aGlyphiconName) + aCommandToComponent