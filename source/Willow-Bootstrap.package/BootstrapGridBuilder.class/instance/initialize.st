initialization
initialize

	super initialize.
	columnSpec := #(6 6).
	rowCommand := [ :row | row addClass bootstrap row ] asWebComponentCommand.
	cellCommand := [  ] asWebComponentCommand.
	self forMediumDevices.
	contents := OrderedCollection new