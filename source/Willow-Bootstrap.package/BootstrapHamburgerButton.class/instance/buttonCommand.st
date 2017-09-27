private-rendering
buttonCommand

	^ [ :button :constants | 
	button addClass bootstrap navbarToggle + button addClass bootstrap collapsed
		+ (button setData: constants bootstrap toggle to: constants css collapse) + (button setData: constants bootstrap target to: targetIdentifier)
		+ (button setARIAAttribute: 'expanded' to: false greaseString) ] asWebComponentCommand