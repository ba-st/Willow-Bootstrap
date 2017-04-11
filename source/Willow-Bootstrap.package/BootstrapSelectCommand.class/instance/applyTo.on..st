processing
applyTo: aComponent on: aCanvas

	(ComponentClassificationCommand toStyleWith: BootstrapSelectConstants selectpicker) applyTo: aComponent on: aCanvas.
	"We need to call the render method after the command application to get the right rendering"
	(ComponentScriptCommand toExecute: [ :canvas | canvas jQuery this bootstrapSelect render ]) applyTo: aComponent on: aCanvas