initialization
initializeSearchingWith: aSearchAction labeledBy: aLabelsBlock withSelectionDo: aSelectionCallback configuredBy: aConfigurationBlock

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