initialization
initialize

	super initialize.
	self informational.
	dismissCommand := [ :container |  ] asWebComponentCommand.
	content := ''