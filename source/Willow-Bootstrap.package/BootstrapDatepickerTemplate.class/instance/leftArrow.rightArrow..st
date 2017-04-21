Configuring
leftArrow: aLeftArrowRenderable rightArrow: aRightArrowRenderable

	options
		at: 'leftArrow' put: (self render: aLeftArrowRenderable);
		at: 'rightArrow' put: (self render: aRightArrowRenderable)