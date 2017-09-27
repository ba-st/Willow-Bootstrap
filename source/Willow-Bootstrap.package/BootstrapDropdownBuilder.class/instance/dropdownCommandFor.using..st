private
dropdownCommandFor: button using: constants

	^ button addClass bootstrap dropdownToggle + (button setData: constants bootstrap toggle to: constants bootstrap dropdown) + (button setARIAAttribute: 'haspopup' to: 'true')
		+ (button setARIAAttribute: 'expanded' to: 'false')