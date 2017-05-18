tests-Building
testWrapping

	| notification html |

	notification := BootstrapNotificationBuilder new
		wrapping: [ :canvas | 
			canvas
				strong: 'Ouch!';
				space;
				render: 'Something happened' ];
		buildApplying: CompositeComponentCommand empty.

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-info" role="alert"><strong>Ouch!</strong>&nbsp;Something happened</div>'