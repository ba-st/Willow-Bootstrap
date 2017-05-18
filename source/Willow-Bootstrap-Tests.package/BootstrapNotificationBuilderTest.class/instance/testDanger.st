tests-Building
testDanger

	| notification html |

	notification := BootstrapNotificationBuilder new
		danger;
		buildApplying: CompositeComponentCommand empty.

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-danger" role="alert"></div>'