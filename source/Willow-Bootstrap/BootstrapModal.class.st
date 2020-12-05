"
The modal plugin toggles your hidden content on demand, via data attributes or JavaScript
"
Class {
	#name : #BootstrapModal,
	#superclass : #BootstrapPlugin,
	#category : #'Willow-Bootstrap-Plugins'
}

{ #category : #Options }
BootstrapModal >> backdrop: aBooleanOrStatic [

	"Includes a modal-backdrop element. Alternatively, specify static for a backdrop which doesn't close the modal on click."

	self optionAt: #backdrop put: aBooleanOrStatic
]

{ #category : #Methods }
BootstrapModal >> handleUpdate [

	"Manually readjust the modal’s position if the height of a modal changes while it is open (i.e. in case a scrollbar appears)."

	functionName := 'handleUpdate'
]

{ #category : #Methods }
BootstrapModal >> hide [

	"Manually hides a modal. Returns to the caller before the modal has actually been hidden"

	functionName := self lookupValue: #hide
]

{ #category : #Options }
BootstrapModal >> keyboard: aBoolean [

	"Closes the modal when escape key is pressed"

	self optionAt: #keyboard put: aBoolean
]

{ #category : #private }
BootstrapModal >> method [

	^ self lookupValue: #modal
]

{ #category : #Events }
BootstrapModal >> onHidden: aFunction [

	"This event is fired when the modal has finished being hidden from the user (will wait for CSS transitions to complete)."

	self call: 'on' with: (self lookupValue: #hiddenModal) with: aFunction
]

{ #category : #Events }
BootstrapModal >> onHide: aFunction [

	"This event is fired immediately when the hide instance method has been called."

	self call: 'on' with: (self lookupValue: #hideModal) with: aFunction
]

{ #category : #Events }
BootstrapModal >> onShow: aFunction [

	"This event fires immediately when the show instance method is called. 
	If caused by a click, the clicked element is available as the relatedTarget property of the event."

	self call: 'on' with: (self lookupValue: #showModal) with: aFunction
]

{ #category : #Events }
BootstrapModal >> onShown: aFunction [

	"This event is fired when the modal has been made visible to the user (will wait for CSS transitions to complete). 
	If caused by a click, the clicked element is available as the relatedTarget property of the event."

	self call: 'on' with: (self lookupValue: #shownModal) with: aFunction
]

{ #category : #Methods }
BootstrapModal >> show [

	"Manually opens a modal. Returns to the caller before the modal has actually been shown"

	functionName := self lookupValue: #show
]

{ #category : #Options }
BootstrapModal >> show: aBoolean [

	"Shows the modal when initialized."

	self optionAt: #show put: aBoolean
]

{ #category : #Methods }
BootstrapModal >> toggle [

	"Manually toggles a modal. Returns to the caller before the modal has actually been shown or hidden"

	functionName := self lookupValue: #toggle
]
