"
I'm a builder of bootstrap alerts
"
Class {
	#name : #BootstrapNotificationBuilder,
	#superclass : #WillowComponentBuilder,
	#instVars : [
		'alertCommand',
		'content',
		'dismissCommand'
	],
	#category : #'Willow-Bootstrap-WebViews'
}

{ #category : #Building }
BootstrapNotificationBuilder >> buildApplying: aComponentCommand [

	^ GenericContainerWebView wrapping: content applying: alertCommand + dismissCommand + aComponentCommand
]

{ #category : #Configuring }
BootstrapNotificationBuilder >> danger [
	
	alertCommand := BootstrapAlertCommand danger
]

{ #category : #Configuring }
BootstrapNotificationBuilder >> dismissibleWrapping: aRenderable [

	| button |

	button := BootstrapDismissButton dismissing: Constants >> #aria >> #alert.
	content := [ :html | 
	html
		render: button;
		render: aRenderable ].
	dismissCommand := [ :container | container addClass bootstrap alertDismissible ]
]

{ #category : #Configuring }
BootstrapNotificationBuilder >> informational [

	alertCommand := BootstrapAlertCommand informational
]

{ #category : #initialization }
BootstrapNotificationBuilder >> initialize [

	super initialize.
	self informational.
	dismissCommand := [ :container |  ] asWebComponentCommand.
	content := ''
]

{ #category : #Configuring }
BootstrapNotificationBuilder >> success [
	
	alertCommand := BootstrapAlertCommand success 
]

{ #category : #Configuring }
BootstrapNotificationBuilder >> warning [
	
	alertCommand := BootstrapAlertCommand warning 
]

{ #category : #Configuring }
BootstrapNotificationBuilder >> wrapping: aRenderable [

	content := aRenderable
]
