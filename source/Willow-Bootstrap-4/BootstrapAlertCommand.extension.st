Extension { #name : #BootstrapAlertCommand }

{ #category : #'*Willow-Bootstrap-4' }
BootstrapAlertCommand class >> dark [

	^ self applying: [ :container | container addClass bootstrap4 alertDark ]
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapAlertCommand class >> light [

	^ self applying: [ :container | container addClass bootstrap4 alertLight ]
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapAlertCommand class >> primary [

	^ self applying: [ :container | container addClass bootstrap4 alertPrimary ]
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapAlertCommand class >> secondary [

	^ self applying: [ :container | container addClass bootstrap4 alertSecondary ]
]
