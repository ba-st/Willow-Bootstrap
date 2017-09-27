initialization
initializeDismissing: aContainerType

	dismissButton := AsynchronicButtonWebView
		labeled: (PhrasingContainerWebView wrapping: '×' applying: [ :span | span setARIAAttribute: 'hidden' to: 'true' ])
		applying: [ :button :constants | button addClass bootstrap close + (button setData: constants bootstrap dismiss to: aContainerType) + (button setARIAAttribute: 'label' to: 'Close') ]