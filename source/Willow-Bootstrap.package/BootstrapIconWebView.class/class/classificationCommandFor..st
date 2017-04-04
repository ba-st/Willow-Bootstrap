private
classificationCommandFor: aGlyphiconName

	^ ComponentClassificationCommand
		toStyleWithAll: (Array with: BootstrapCssStyles glyphicon with: aGlyphiconName)