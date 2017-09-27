tests-Building
testDismissible

	| notification html |

	notification := BootstrapNotificationBuilder new
		dismissibleWrapping: '';
		buildApplying:  [ :container |  ].

	html := self render: notification.

	self
		assert: html
		equals:
			'<div class="alert alert-info alert-dismissible" role="alert"><button class="close" data-dismiss="alert" aria-label="Close" type="button"><span aria-hidden="true">×</span></button></div>'