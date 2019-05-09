"
A BootstrapNotificationBuilderTest is a test class for testing the behavior of BootstrapNotificationBuilder
"
Class {
	#name : #BootstrapNotificationBuilderTest,
	#superclass : #BWRenderingTest,
	#category : 'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #'tests-Building' }
BootstrapNotificationBuilderTest >> testBuildApplying [

	| notification html |

	notification := BootstrapNotificationBuilder new buildApplying: [ :container |  ].

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-info" role="alert"></div>'
]

{ #category : #'tests-Building' }
BootstrapNotificationBuilderTest >> testDanger [

	| notification html |

	notification := BootstrapNotificationBuilder new
		danger;
		buildApplying: [ :container |  ].

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-danger" role="alert"></div>'
]

{ #category : #'tests-Building' }
BootstrapNotificationBuilderTest >> testDismissible [

	| notification html |

	notification := BootstrapNotificationBuilder new
		dismissibleWrapping: '';
		buildApplying:  [ :container |  ].

	html := self render: notification.

	self
		assert: html
		equals:
			'<div class="alert alert-info alert-dismissible" role="alert"><button class="close" data-dismiss="alert" aria-label="Close" type="button"><span aria-hidden="true">×</span></button></div>'
]

{ #category : #'tests-Building' }
BootstrapNotificationBuilderTest >> testInformational [

	| notification html |

	notification := BootstrapNotificationBuilder new
		informational;
		buildApplying: [ :container |  ].

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-info" role="alert"></div>'
]

{ #category : #'tests-Building' }
BootstrapNotificationBuilderTest >> testSuccess [

	| notification html |

	notification := BootstrapNotificationBuilder new
		success;
		buildApplying: [ :container |  ].

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-success" role="alert"></div>'
]

{ #category : #'tests-Building' }
BootstrapNotificationBuilderTest >> testWarning [

	| notification html |

	notification := BootstrapNotificationBuilder new
		warning;
		buildApplying: [ :container |  ].

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-warning" role="alert"></div>'
]

{ #category : #'tests-Building' }
BootstrapNotificationBuilderTest >> testWrapping [

	| notification html |

	notification := BootstrapNotificationBuilder new
		wrapping: [ :canvas | 
			canvas
				strong: 'Ouch!';
				space;
				render: 'Something happened' ];
		buildApplying: [ :container |  ].

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-info" role="alert"><strong>Ouch!</strong>&nbsp;Something happened</div>'
]
