initialization
initialize

	super initialize.
	options := GRSmallDictionary new.
	options
		at: 'leftArrow' put: '';
		at: 'rightArrow' put: ''