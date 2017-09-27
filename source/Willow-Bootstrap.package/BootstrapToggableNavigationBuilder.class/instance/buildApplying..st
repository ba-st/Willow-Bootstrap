Building
buildApplying: aCommandToComponent

	AssertionChecker
		enforce: [ headers size > 1 ]
		because: 'It makes no sense to build a toggable navigation component with less than two panes'.

	^ [ :canvas | 
	self renderTabListOn: canvas applying: aCommandToComponent asWebComponentCommand.
	self renderTabContentOn: canvas ]