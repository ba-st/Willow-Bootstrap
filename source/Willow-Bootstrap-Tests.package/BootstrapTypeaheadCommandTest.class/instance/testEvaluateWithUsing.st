tests-private
testEvaluateWithUsing

	| searchResult firstResult lastResult |

	searchResult := (BootstrapTypeaheadCommand searchingWith: [ :searchTerm | self fail ] withSelectionDo: [ :selectedNumber | self fail ])
		evaluate: [ :searchTerm | #('A' 'B' 'AB') select: [ :string | string beginsWith: searchTerm ] ]
		with: 'A'
		using: [ :string | string asLowercase ].

	self assert: searchResult size equals: 2.
	firstResult := searchResult first.
	self
		assert: (firstResult at: 'name') equals: 'a';
		assert: (firstResult at: 'index') equals: 1.

	lastResult := searchResult last.
	self
		assert: (lastResult at: 'name') equals: 'ab';
		assert: (lastResult at: 'index') equals: 2