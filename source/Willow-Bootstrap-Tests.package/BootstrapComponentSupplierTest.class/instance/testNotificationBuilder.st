tests-Supplying
testNotificationBuilder

	| supplier notification html |

	supplier := BootstrapComponentSupplier online.

	notification := supplier notificationBuilder
		wrapping: 'Ouch!';
		danger;
		buildApplying: CompositeComponentCommand empty.

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-danger" role="alert">Ouch!</div>'