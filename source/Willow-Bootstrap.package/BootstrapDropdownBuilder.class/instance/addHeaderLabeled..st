Configuring
addHeaderLabeled: aRenderable

	menuItems
		add: [ :canvas | 
			canvas listItem
				class: BootstrapCssStyles dropdownHeader;
				with: aRenderable ]