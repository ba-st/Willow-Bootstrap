tests-Building
testSuccess

	| notification html |

	notification := BootstrapNotificationBuilder new
		success;
		buildApplying: CompositeComponentCommand empty.

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-success" role="alert"></div>'