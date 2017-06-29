initialization
initializeUsing: aSupplier

	super initializeUsing: aSupplier.
	containerBuildingCommand := [ :containerCommand | super buildApplying: containerCommand ] 