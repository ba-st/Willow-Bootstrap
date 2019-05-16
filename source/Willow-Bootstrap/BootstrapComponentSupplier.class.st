"
I'm the abstract superclass of the Bootstrap components suppliers. 
"
Class {
	#name : #BootstrapComponentSupplier,
	#superclass : #FrontendComponentSupplier,
	#category : #'Willow-Bootstrap-Frontend'
}

{ #category : #Supplying }
BootstrapComponentSupplier >> asynchronicButtonLabeled: aRenderable applying: aComponentCommand [

	^ AsynchronicButtonWebView
		labeled: aRenderable
		applying: [ :button | button addClass bootstrapCommon button + aComponentCommand ]
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> asynchronicLinkActingAsButtonLabeled: aRenderable applying: aComponentCommand [

	^ self
		asynchronicLinkLabeled: aRenderable
		applying: [ :anchor :constants | 
			( anchor setARIARoleTo: #button ) + anchor addClass bootstrapCommon button + aComponentCommand
				+ ( anchor setAttribute: 'href' to: '#' )
			]
]

{ #category : #Supplying }
BootstrapComponentSupplier >> asynchronicLinkLabeled: aRenderable applying: aComponentCommand [

	^ LinkWebView asynchronicLabeled: aRenderable applying: aComponentCommand
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> navigationDropdownMenuBuilder [

	^ self subclassResponsibility
]

{ #category : #Supplying }
BootstrapComponentSupplier >> notificationBuilder [ 

	^BootstrapNotificationBuilder new
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> singleButtonDropdownBuilder [

	^ self subclassResponsibility
]

{ #category : #'Supplying - Non Portable' }
BootstrapComponentSupplier >> splitButtonDropdownBuilder [

	^ self subclassResponsibility
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
