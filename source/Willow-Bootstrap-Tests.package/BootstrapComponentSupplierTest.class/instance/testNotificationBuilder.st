tests-Supplying
testNotificationBuilder

	self
		assertRenderingOf: [ :supplier | 
			supplier notificationBuilder
				wrapping: 'Ouch!';
				danger;
				buildApplying: [  ] ]
		equals: '<div class="alert alert-danger" role="alert">Ouch!</div>'