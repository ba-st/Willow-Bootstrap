private
evaluate: aSearchAction with: searchTerm using: aLabelsBlock

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