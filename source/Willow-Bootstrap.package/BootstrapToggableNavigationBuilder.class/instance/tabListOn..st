private - Rendering
tabListOn: canvas

	| list |

	list := canvas unorderedList.
	list
		class: BootstrapCssStyles nav;
		class: self navigationTypeClass.
	self setRoleWith: BootstrapConstants tablist to: list on: canvas.
	^ list