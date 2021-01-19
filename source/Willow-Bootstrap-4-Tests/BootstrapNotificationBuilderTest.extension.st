Extension { #name : #BootstrapNotificationBuilderTest }

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapNotificationBuilderTest >> testDark [

	| notification html |

	notification := BootstrapNotificationBuilder new
		dark;
		buildApplying: [ :container |  ].

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-dark" role="alert"></div>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapNotificationBuilderTest >> testLight [

	| notification html |

	notification := BootstrapNotificationBuilder new
		light;
		buildApplying: [ :container |  ].

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-light" role="alert"></div>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapNotificationBuilderTest >> testPrimary [

	| notification html |

	notification := BootstrapNotificationBuilder new
		primary;
		buildApplying: [ :container |  ].

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-primary" role="alert"></div>'
]

{ #category : #'*Willow-Bootstrap-4-Tests' }
BootstrapNotificationBuilderTest >> testSecondary [

	| notification html |

	notification := BootstrapNotificationBuilder new
		secondary;
		buildApplying: [ :container |  ].

	html := self render: notification.

	self assert: html equals: '<div class="alert alert-secondary" role="alert"></div>'
]
