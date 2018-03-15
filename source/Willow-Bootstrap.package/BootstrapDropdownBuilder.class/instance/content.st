private
content

	^[:canvas |
		canvas render: buttonBinding content.
		canvas unorderedList
			classes: listCssStyles;
			with: [menuItems do: [:menuItem | canvas render: menuItem]]]