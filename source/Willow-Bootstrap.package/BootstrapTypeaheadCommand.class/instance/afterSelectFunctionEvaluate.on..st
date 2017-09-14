private
afterSelectFunctionEvaluate: aSelectionCallback on: aCanvas

	| selectedIndexHolder ajax |

	selectedIndexHolder := WAValueHolder new.
	ajax := aCanvas jQuery ajax.
	ajax
		callback: [ :activeItemIndex | selectedIndexHolder contents: activeItemIndex greaseInteger ] value: ((aCanvas jQuery alias: 'activeItem') access: self indexProperty);
		script: [ :script | aSelectionCallback value: (searchResults at: selectedIndexHolder contents) ].
	^ ajax asFunction: #('activeItem')