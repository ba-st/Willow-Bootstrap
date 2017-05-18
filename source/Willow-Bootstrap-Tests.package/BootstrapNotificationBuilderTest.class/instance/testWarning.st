tests-Building
testWarning

	| notification html |

	notification := BootstrapNotificationBuilder new
		warning;
		buildApplying: CompositeComponentCommand empty.

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-warning" role="alert"></div>'