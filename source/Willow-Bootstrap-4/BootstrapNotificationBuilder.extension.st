Extension { #name : #BootstrapNotificationBuilder }

{ #category : #'*Willow-Bootstrap-4' }
BootstrapNotificationBuilder >> dark [
	
	alertCommand := BootstrapAlertCommand dark 
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapNotificationBuilder >> light [
	
	alertCommand := BootstrapAlertCommand light 
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapNotificationBuilder >> primary [
	
	alertCommand := BootstrapAlertCommand primary 
]

{ #category : #'*Willow-Bootstrap-4' }
BootstrapNotificationBuilder >> secondary [
	
	alertCommand := BootstrapAlertCommand secondary 
]
