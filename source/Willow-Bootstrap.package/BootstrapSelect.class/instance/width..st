Options
width: autoOrFitOrCssLengthOrFalse

	"When set to auto, the width of the selectpicker is automatically adjusted to accommodate the widest option.
	 When set to a css-length, the width of the selectpicker is forced inline to the given value.
	 When set to false, all width information is removed."

	| optionValue |

	optionValue := autoOrFitOrCssLengthOrFalse == false
		ifTrue: [ false ]
		ifFalse: [ autoOrFitOrCssLengthOrFalse greaseString ].
	self optionAt: BootstrapSelectConstants width put: optionValue