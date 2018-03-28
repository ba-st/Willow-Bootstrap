initialization
initialize

	super initialize.
	scriptCommand := ComponentScriptCommand
		toExecute: [ :canvas | 
			canvas jQuery this bootstrapModal
				backdrop: BootstrapConstants static;
				onHidden:
					(canvas javascript
						call: (canvas jQuery willow bootstrap access: BootstrapConstants cleanModalFunctionName) asJavascript 
						with: canvas jQuery this) asFunction ]