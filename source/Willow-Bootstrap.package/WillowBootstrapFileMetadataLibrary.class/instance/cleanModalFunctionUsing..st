private
cleanModalFunctionUsing: script

	| function |

	function := JSFunction new arguments: #(modal).
	function << ((script jQuery new alias: 'modal') next: WAScriptTag new tag) remove.
	function << (script jQuery new alias: 'modal') remove.
	function << ((script jQuery id: WillowConstants dialogSectionName) children length equalTo: 0)
		nonInlinedThen: (script jQuery class: BootstrapCssStyles modalBackdrop) remove.
	^ function