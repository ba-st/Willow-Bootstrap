processing
applyTo: aComponent on: aCanvas

	self
		declare: 'live-search'
			with: true greaseString
			applyingTo: aComponent
			on: aCanvas;
		declare: 'live-search-normalize'
			with: normalize
			applyingTo: aComponent
			on: aCanvas.
	placeholderOptional
		withContentDo: [ :placeholder | 
			self
				declare: 'live-search-placeholder'
				with: placeholder
				applyingTo: aComponent
				on: aCanvas ].
	self
		declare: 'live-search-style'
		with: searchStyle
		applyingTo: aComponent
		on: aCanvas