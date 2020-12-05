"
I'm a JQueryPlugin implementing  the bootstrap-typeahead programmatic API
"
Class {
	#name : #BootstrapTypeahead,
	#superclass : #BootstrapPlugin,
	#category : #'Willow-Bootstrap-Typeahead'
}

{ #category : #Options }
BootstrapTypeahead >> addItem: aJSONObject [

	"Adds an item to the end of the list, for example New Entry. This could be used, for example, to pop a dialog when an item is not found in the list of data."

	self optionAt: 'addItem' put: aJSONObject 
]

{ #category : #Options }
BootstrapTypeahead >> afterSelect: aJSFunction [

	"Call back function to execute after selected an item. It gets the current active item in parameter if any."

	self optionAt: 'afterSelect' put: aJSFunction
]

{ #category : #Options }
BootstrapTypeahead >> appendTo: jQueryElement [

	"By defaut, the menu is added right after the input element. Use this option to add the menu to another div. It should not be used if you want to use bootstrap dropup or dropdown-menu-right classes."

	self optionAt: 'appendTo' put: jQueryElement
]

{ #category : #Options }
BootstrapTypeahead >> autoSelect: aBoolean [

	"Allows you to dictate whether or not the first suggestion is selected automatically. Turning autoselect off also means that the input won't clear if nothing is selected and enter or tab is hit."

	self optionAt: 'autoSelect' put: aBoolean 
]

{ #category : #Options }
BootstrapTypeahead >> delay: integer [

	"Adds a delay between lookups."

	self optionAt: 'delay' put: integer
]

{ #category : #Methods }
BootstrapTypeahead >> destroy [

	functionName := 'destroy'
]

{ #category : #Options }
BootstrapTypeahead >> displayText: aJSFunction [

	"Method used to get textual representation of an item of the sources. Accepts a single argument item and has the scope of the typeahead instance. Should return a String."

	self optionAt: 'displayText' put: aJSFunction
]

{ #category : #Options }
BootstrapTypeahead >> fitToElement: aBoolean [

	"Set to true if you want the menu to be the same size than the input it is attached to."

	self optionAt: 'fitToElement' put: aBoolean 
]

{ #category : #Methods }
BootstrapTypeahead >> getActive [

	"To get the currently active item, you will get a String or a JSON object depending on how you initialized typeahead. Works only for the first match."

	functionName := 'getActive'
]

{ #category : #Options }
BootstrapTypeahead >> highlighter: aJSFunction [

	"Method used to highlight autocomplete results. Accepts a single argument item and has the scope of the typeahead instance. Should return html."

	self optionAt: 'highlighter' put: aJSFunction
]

{ #category : #Options }
BootstrapTypeahead >> items: aNumberOrAll [

	"The max number of items to display in the dropdown. Can also be set to 'all'"

	self optionAt: 'items' put: aNumberOrAll 
]

{ #category : #Methods }
BootstrapTypeahead >> lookup [

	"To trigger the lookup function externally"

	functionName := 'lookup'
]

{ #category : #Options }
BootstrapTypeahead >> matcher: aJSFunction [

	"The method used to determine if a query matches an item. Accepts a single argument, the item against which to test the query. Access the current query with this.query. Return a boolean true if query is a match."

	self optionAt: 'matcher' put: aJSFunction
]

{ #category : #private }
BootstrapTypeahead >> method [

	^ 'typeahead'
]

{ #category : #Options }
BootstrapTypeahead >> minLength: aNumber [

	"The minimum character length needed before triggering autocomplete suggestions. You can set it to 0 so suggestion are shown even when there is no text when lookup function is called."

	self optionAt: 'minLength' put: aNumber
]

{ #category : #Options }
BootstrapTypeahead >> scrollHeight: numberOrFunction [

	"Number of pixels the scrollable parent container scrolled down (scrolled out the viewport)."

	self optionAt: 'scrollHeight' put: numberOrFunction
]

{ #category : #Options }
BootstrapTypeahead >> showHintOnFocus: aBooleanOrAll [

	"If hints should be shown as soon as the input gets focus. If set to true, all match will be shown. If set to all, it will display all hints, not filtering them by the current text. 
	This can be used when you want an input that behaves a bit like a combo box plus auto completion as you type to filter the choices."

	self optionAt: 'showHintOnFocus' put: aBooleanOrAll
]

{ #category : #Options }
BootstrapTypeahead >> sorter: aJSFunction [

	"Method used to sort autocomplete results. Accepts a single argument items and has the scope of the typeahead instance. Reference the current query with this.query."

	self optionAt: 'sorter' put: aJSFunction
]

{ #category : #Options }
BootstrapTypeahead >> source: arrayOrFunction [

	"The data source to query against. May be an array of strings, an array of JSON object with a name property or a function. 
	The function accepts two arguments, the query value in the input field and the process callback. 
	The function may be used synchronously by returning the data source directly or asynchronously via the process callback's single argument."

	self optionAt: 'source' put: arrayOrFunction 
]

{ #category : #Options }
BootstrapTypeahead >> updater: aJSFunction [

	"The method used to return selected item. Accepts a single argument, the item and has the scope of the typeahead instance."

	self optionAt: 'updater' put: aJSFunction
]
