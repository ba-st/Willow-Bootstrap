tests-Building
testSuccess

	| notification html |

	notification := BootstrapNotificationBuilder new
		success;
		buildApplying: [ :container |  ].

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-success" role="alert"></div>'