initialization
initializeSearchingWith: aSearchAction labeledBy: aLabelsBlock withSelectionDo: aSelectionCallback thenRefresh: anIdentifiedViewOptional configuredBy: aConfigurationBlock

	searchResults := #().
	scriptCommand := ComponentScriptCommand
		toExecute: [ :canvas | 
			| typeahead |

			anIdentifiedViewOptional withContentDo: [ :identifiedView | identifiedView identifyIn: canvas ].
			typeahead := canvas jQuery this bootstrapTypeahead.
			typeahead
				source: (self searchWith: aSearchAction labels: aLabelsBlock on: canvas);
				updater: self updaterFunction;
				afterSelect: (self afterSelectFunctionEvaluate: aSelectionCallback thenRefresh: anIdentifiedViewOptional on: canvas).
			aConfigurationBlock cull: typeahead cull: canvas.
			typeahead ]