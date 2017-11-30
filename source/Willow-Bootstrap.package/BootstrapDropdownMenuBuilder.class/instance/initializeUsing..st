initialization
initializeUsing: aSupplier

	super initializeUsing: aSupplier.
	containerBuildingCommand := [ :containerCommand | GenericContainerWebView wrapping: self content applying: [ :div | containerCommand asWebComponentCommand + div addClass bootstrap dropdown ] ]