tests-Building
testBuildApplying

	| notification html |

	notification := BootstrapNotificationBuilder new buildApplying: [ :container |  ].

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-info" role="alert"></div>'