"
I'm the abstract superclass of the Bootstrap components suppliers. 
"
Class {
	#name : #BootstrapComponentSupplier,
	#superclass : #FrontendComponentSupplier,
	#category : #'Willow-Bootstrap-Frontend'
}

{ #category : #Supplying }
BootstrapComponentSupplier >> notificationBuilder [ 

	^BootstrapNotificationBuilder new
]

{ #category : #Supplying }
BootstrapComponentSupplier >> tableBuilder [

	^ TableWebViewBuilder new
		apply: [ :table | table addClass bootstrapCommon table ];
		yourself
]

{ #category : #Processing }
BootstrapComponentSupplier >> updateRoot: aRoot [

	aRoot beHtml5
]
