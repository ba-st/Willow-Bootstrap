private
afterSelectFunctionEvaluate: aSelectionCallback thenRefresh: anIdentifiedViewOptional on: aCanvas

	| selectedIndexHolder ajax |

	selectedIndexHolder := WAValueHolder new.
	ajax := aCanvas jQuery ajax.
	ajax
		callback: [ :activeItemIndex | selectedIndexHolder contents: activeItemIndex greaseInteger ] value: (aCanvas jQuery alias: 'activeItem');
		script: [ :script | aSelectionCallback value: (searchResults at: selectedIndexHolder contents) ].
	anIdentifiedViewOptional withContentDo: [ :identifiedView | ajax onComplete: ((aCanvas jQuery id: identifiedView identifier) load html: identifiedView view) ].
	^ ajax asFunction: #('activeItem')