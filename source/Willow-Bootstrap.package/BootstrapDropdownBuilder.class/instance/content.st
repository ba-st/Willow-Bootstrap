private
content

	^ [ :canvas | 
	canvas render: buttonBinding content.
	canvas unorderedList
		class: BootstrapCssStyles dropdownMenu;
		with: [ menuItems do: [ :menuItem | canvas render: menuItem ] ] ]