"
I'm a component command enabling Bootstrap Typeahead using the programmatic-API
"
Class {
	#name : #BootstrapTypeaheadCommand,
	#superclass : #WebComponentCommand,
	#instVars : [
		'scriptCommand',
		'searchResults'
	],
	#category : #'Willow-Bootstrap-Frontend'
}

{ #category : #private }
BootstrapTypeaheadCommand class >> defaultConfigurationBlock [

	^ [ :typeahead |  ]
]

{ #category : #private }
BootstrapTypeaheadCommand class >> defaultLabelBlock [

	^ [ :object | object greaseString ]
]

{ #category : #'Instance Creation' }
BootstrapTypeaheadCommand class >> searchingWith: aSearchAction labeledBy: aLabelsBlock withSelectionDo: aSelectionCallback [

	^ self
		searchingWith: aSearchAction
		labeledBy: aLabelsBlock
		withSelectionDo: aSelectionCallback
		configuredBy: self defaultConfigurationBlock
]

{ #category : #'Instance Creation' }
BootstrapTypeaheadCommand class >> searchingWith: aSearchAction labeledBy: aLabelsBlock withSelectionDo: aSelectionCallback configuredBy: aConfigurationBlock [

	^ self new
		initializeSearchingWith: aSearchAction
		labeledBy: aLabelsBlock
		withSelectionDo: aSelectionCallback
		configuredBy: aConfigurationBlock
]

{ #category : #'Instance Creation' }
BootstrapTypeaheadCommand class >> searchingWith: aSearchAction withSelectionDo: aSelectionCallback [

	^ self searchingWith: aSearchAction labeledBy: self defaultLabelBlock withSelectionDo: aSelectionCallback
]

{ #category : #'Instance Creation' }
BootstrapTypeaheadCommand class >> searchingWith: aSearchAction withSelectionDo: aSelectionCallback configuredBy: aConfigurationBlock [

	^ self
		searchingWith: aSearchAction
		labeledBy: self defaultLabelBlock
		withSelectionDo: aSelectionCallback
		configuredBy: aConfigurationBlock
]

{ #category : #private }
BootstrapTypeaheadCommand >> afterSelectFunctionEvaluate: aSelectionCallback on: aCanvas [

	| selectedIndexHolder ajax |

	selectedIndexHolder := WAValueHolder new.
	ajax := aCanvas jQuery ajax.
	ajax
		callback: [ :activeItemIndex | selectedIndexHolder contents: activeItemIndex greaseInteger ] value: ((aCanvas jQuery alias: 'activeItem') access: self indexProperty);
		script: [ :script | aSelectionCallback value: (searchResults at: selectedIndexHolder contents) ].
	^ ajax asFunction: #('activeItem')
]

{ #category : #processing }
BootstrapTypeaheadCommand >> applyTo: aComponent on: aCanvas [

	^ scriptCommand applyTo: aComponent on: aCanvas
]

{ #category : #private }
BootstrapTypeaheadCommand >> evaluate: aSearchAction with: searchTerm using: aLabelsBlock [

	| searchResultAsJSON |

	searchResults := aSearchAction value: searchTerm.
	searchResultAsJSON := OrderedCollection new.
	searchResults
		doWithIndex: [ :object :index | 
			searchResultAsJSON
				add:
					(GRSmallDictionary new
						at: 'name' put: (aLabelsBlock value: object);
						at: self indexProperty put: index;
						yourself) ].

	^ searchResultAsJSON asArray
]

{ #category : #private }
BootstrapTypeaheadCommand >> indexProperty [

	^ 'index'
]

{ #category : #initialization }
BootstrapTypeaheadCommand >> initializeSearchingWith: aSearchAction labeledBy: aLabelsBlock withSelectionDo: aSelectionCallback configuredBy: aConfigurationBlock [

	searchResults := #().
	scriptCommand := ComponentScriptCommand
		toExecute: [ :canvas | 
			| typeahead |

			typeahead := canvas jQuery this bootstrapTypeahead.
			typeahead
				source: (self searchWith: aSearchAction labels: aLabelsBlock on: canvas);
				updater: self updaterFunction;
				afterSelect: (self afterSelectFunctionEvaluate: aSelectionCallback on: canvas).
			aConfigurationBlock cull: typeahead cull: canvas.
			typeahead ]
]

{ #category : #private }
BootstrapTypeaheadCommand >> responseFunctionName [

	^ 'response'
]

{ #category : #private }
BootstrapTypeaheadCommand >> searchTermVariable [

	^ 'searchTerm'
]

{ #category : #private }
BootstrapTypeaheadCommand >> searchWith: aSearchAction labels: aLabelsBlock on: aCanvas [

	| searchTermHolder |

	searchTermHolder := WAValueHolder new.
	
	^ (aCanvas jQuery getJson
		text: [ :stream | stream json: (self evaluate: aSearchAction with: searchTermHolder contents using: aLabelsBlock) ];
		callback: [ :searchTerm | searchTermHolder contents: searchTerm ] value: (aCanvas jQuery alias: self searchTermVariable);
		onSuccess: ((aCanvas javascript call: self responseFunctionName with: (aCanvas jQuery alias: 'data')) asFunction: #('data' 'status'));
		dataType: 'jsonp')
		asFunction: {self searchTermVariable. self responseFunctionName}
]

{ #category : #private }
BootstrapTypeaheadCommand >> updaterFunction [

	^ JSFunction new
		arguments: #('item');
		add: (JSStream this alias: 'item');
		return: true;
		yourself
]
