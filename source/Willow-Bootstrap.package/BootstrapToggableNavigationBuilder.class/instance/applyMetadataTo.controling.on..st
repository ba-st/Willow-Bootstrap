private
applyMetadataTo: aLink controling: identifiedContent on: canvas

	self setRoleWith: BootstrapConstants tab to: aLink on: canvas.
	[ :link :constants | (link setData: constants bootstrap toggle to: self dataToggleValue) + (link setARIAAttribute: 'control' to: identifiedContent identifier) ]
		asWebComponentCommand applyTo: aLink on: canvas