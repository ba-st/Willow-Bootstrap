initialization
initializeUsing: aSupplier

	supplier := aSupplier.
	buttonBinding := Binding undefinedExplainedBy: 'Missing Dropdown Button Configuration'.
	menuItems := OrderedCollection new.
	listCssStyles := OrderedCollection with: BootstrapCssStyles dropdownMenu