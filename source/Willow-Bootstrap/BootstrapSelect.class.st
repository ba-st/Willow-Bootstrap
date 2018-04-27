"
I'm a JQueryPlugin implementing  the bootstrap-select programmatic API
"
Class {
	#name : #BootstrapSelect,
	#superclass : #BootstrapPlugin,
	#category : #'Willow-Bootstrap-Select'
}

{ #category : #Options }
BootstrapSelect >> actionsBox: aBoolean [

	"When set to true, adds two buttons to the top of the dropdown menu (Select All & Deselect All)"

	self optionAt: 'actionsBox' put: aBoolean
]

{ #category : #Options }
BootstrapSelect >> container: aStringOrFalse [

	"When set to a string, appends the select to a specific element or selector, e.g., container: 'body' | '.main-body'"

	self optionAt: BootstrapSelectConstants container put: aStringOrFalse
]

{ #category : #Options }
BootstrapSelect >> countSelectedText: aStringOrFunction [

	"Sets the format for the text displayed when selectedTextFormat is count or count > #. 
	{0} is the selected amount. {1} is total available for selection.
	When set to a function, the first parameter is the number of selected options, and the second is the total number of options. The function must return a string."

	self optionAt: 'countSelectedText' put: aStringOrFunction 
]

{ #category : #Methods }
BootstrapSelect >> deselectAll [

	functionName := 'deselectAll'
]

{ #category : #Options }
BootstrapSelect >> deselectAllText: aString [

	"The text on the button that deselects all options when actionsBox is enabled."

	self optionAt: 'deselectAllText' put: aString 
]

{ #category : #Methods }
BootstrapSelect >> destroy [

	functionName := 'destroy'
]

{ #category : #Options }
BootstrapSelect >> dropdownAlignRight: aBooleanOrAutoString [

	"Align the menu to the right instead of the left. If set to 'auto', the menu will automatically align right if there isn't room for the menu's full width when aligned to the left."

	self optionAt: 'dropdownAlignRight' put: aBooleanOrAutoString 
]

{ #category : #Options }
BootstrapSelect >> dropupAuto: aBoolean [ 

	"Checks to see which has more room, above or below. If the dropup has enough room to fully open normally, but there is more room above, 
	the dropup still opens normally. Otherwise, it becomes a dropup. If dropupAuto is set to false, dropups must be called manually."

	self optionAt: 'dropupAuto' put: aBoolean 
]

{ #category : #Options }
BootstrapSelect >> header: aString [

	"Adds a header to the top of the menu; includes a close button by default"

	self optionAt: BootstrapSelectConstants header put: aString
]

{ #category : #Methods }
BootstrapSelect >> hide [

	functionName := 'hide'
]

{ #category : #Options }
BootstrapSelect >> hideDisabled: aBoolean [

	"Removes disabled options and optgroups from the menu data-hide-disabled: true"

	self optionAt: 'hideDisabled' put: aBoolean 
]

{ #category : #Options }
BootstrapSelect >> iconBase: aString [

	"Set the base to use a different icon font instead of Glyphicons. If changing iconBase, you might also want to change tickIcon, in case the new icon font uses a different naming scheme.
	Default: 'glyphicon' "

	self optionAt: 'iconBase' put: aString 
]

{ #category : #Options }
BootstrapSelect >> liveSearch: boolean [

	"When set to true, adds a search box to the top of the selectpicker dropdown."

	self optionAt: 'liveSearch' put: boolean 
]

{ #category : #Options }
BootstrapSelect >> liveSearchNormalize: boolean [

	"Setting liveSearchNormalize to true allows for accent-insensitive searching."

	self optionAt: 'liveSearchNormalize' put: boolean 
]

{ #category : #Options }
BootstrapSelect >> liveSearchPlaceholder: string [

	"When set to a string, a placeholder attribute equal to the string will be added to the liveSearch input."

	self optionAt: 'liveSearchPlaceholder' put: string 
]

{ #category : #Options }
BootstrapSelect >> liveSearchStyle: string [

	"When set to 'contains', searching will reveal options that contain the searched text. For example, searching for pl with return both Apple, Plum, and Plantain. 
	When set to 'startsWith', searching for pl will return only Plum and Plantain."

	self optionAt: 'liveSearchStyle' put: string 
]

{ #category : #Options }
BootstrapSelect >> maxOptions: integerOrFalse [

	"When set to an integer and in a multi-select, the number of selected options cannot exceed the given value.
	This option can also exist as a data-attribute for an <optgroup>, in which case it only applies to that <optgroup>."

	self optionAt: 'maxOptions' put: integerOrFalse 
]

{ #category : #Options }
BootstrapSelect >> maxOptionsText: stringOrArrayOrFunction [

	"The text that is displayed when maxOptions is enabled and the maximum number of options for the given scenario have been selected.

	If a function is used, it must return an array. 
		array[0] is the text used when maxOptions is applied to the entire select element. 
		array[1] is the text used when maxOptions is used on an optgroup. 
	
	If a string is used, the same text is used for both the element and the optgroup."

	self optionAt: 'maxOptionsText' put: stringOrArrayOrFunction 
]

{ #category : #private }
BootstrapSelect >> method [

	^ 'selectpicker'
]

{ #category : #Methods }
BootstrapSelect >> mobile [

	functionName := 'mobile'
]

{ #category : #Options }
BootstrapSelect >> mobile: boolean [

	"When set to true, enables the device's native menu for select menus."

	self optionAt: BootstrapSelectConstants mobile put: boolean 
]

{ #category : #Options }
BootstrapSelect >> multipleSeparator: string [

	"Set the character displayed in the button that separates selected options.
	Default: ', ' "

	self optionAt: 'multipleSeparator' put: string 
]

{ #category : #Options }
BootstrapSelect >> noneSelectedText: string [

	"The text that is displayed when a multiple select has no selected options."

	self optionAt: 'noneSelectedText' put: string 
]

{ #category : #Events }
BootstrapSelect >> onChanged: aFunction [

	self call: 'on' with: BootstrapSelectConstants changedSelect with: aFunction
]

{ #category : #Events }
BootstrapSelect >> onHidden: aFunction [

	self call: 'on' with: BootstrapSelectConstants hiddenSelect with: aFunction
]

{ #category : #Events }
BootstrapSelect >> onHide: aFunction [

	self call: 'on' with: BootstrapSelectConstants hideSelect with: aFunction
]

{ #category : #Events }
BootstrapSelect >> onLoaded: aFunction [

	self call: 'on' with: BootstrapSelectConstants loadedSelect with: aFunction
]

{ #category : #Events }
BootstrapSelect >> onRefreshed: aFunction [

	self call: 'on' with: BootstrapSelectConstants refreshedSelect with: aFunction
]

{ #category : #Events }
BootstrapSelect >> onRendered: aFunction [

	self call: 'on' with: BootstrapSelectConstants renderedSelect with: aFunction
]

{ #category : #Events }
BootstrapSelect >> onShow: aFunction [

	self call: 'on' with: BootstrapSelectConstants showSelect with: aFunction
]

{ #category : #Events }
BootstrapSelect >> onShown: aFunction [

	self call: 'on' with: BootstrapSelectConstants shownSelect with: aFunction
]

{ #category : #Methods }
BootstrapSelect >> refresh [

	functionName := 'refresh'
]

{ #category : #Methods }
BootstrapSelect >> render [

	functionName := 'render'
]

{ #category : #Methods }
BootstrapSelect >> selectAll [

	functionName := 'selectAll'
]

{ #category : #Options }
BootstrapSelect >> selectAllText: string [

	"The text on the button that selects all options when actionsBox is enabled."

	self optionAt: 'selectAllText' put: string 
]

{ #category : #Options }
BootstrapSelect >> selectOnTab: boolean [

	"When set to true, treats the tab character like the enter or space characters within the selectpicker dropdown."

	self optionAt: 'selectOnTab' put: boolean 
]

{ #category : #Options }
BootstrapSelect >> selectedTextFormat: string [

	"Specifies how the selection is displayed with a multiple select.

		'values' displays a list of the selected options (separated by multipleSeparator. 
		'static' simply displays the select element's title. 
		'count' displays the total number of selected options. 
		'count > x' behaves like 'values' until the number of selected options is greater than x; after that, it behaves like 'count'. "

	self optionAt: 'selectedTextFormat' put: string 
]

{ #category : #Methods }
BootstrapSelect >> setStyle [

	functionName := 'setStyle'
]

{ #category : #Methods }
BootstrapSelect >> show [

	functionName := 'show'
]

{ #category : #Options }
BootstrapSelect >> showContent: boolean [

	"When set to true, display custom HTML associated with selected option(s) in the button. When set to false, the option value will be displayed instead."

	self optionAt: 'showContent' put: boolean 
]

{ #category : #Options }
BootstrapSelect >> showIcon: boolean [

	"When set to true, display icon(s) associated with selected option(s) in the button."

	self optionAt: 'showIcon' put: boolean 
]

{ #category : #Options }
BootstrapSelect >> showSubtext: boolean [

	"When set to true, display subtext associated with a selected option in the button."

	self optionAt: 'showSubtext' put: boolean 
]

{ #category : #Options }
BootstrapSelect >> showTick: boolean [

	"Show checkmark on selected option (for items without multiple attribute)."

	self optionAt: 'showTick' put: boolean 
]

{ #category : #Options }
BootstrapSelect >> size: autoOrIntegerOrFalse [

	"When set to 'auto', the menu always opens up to show as many items as the window will allow without being cut off.
	 When set to an integer, the menu will show the given number of items, even if the dropdown is cut off.
	 When set to false, the menu will always show all items."

	self optionAt: 'size' put: autoOrIntegerOrFalse 
]

{ #category : #Options }
BootstrapSelect >> style: string [

	"When set to a string, add the value to the button's style."

	self optionAt: BootstrapSelectConstants style put: string 
]

{ #category : #Options }
BootstrapSelect >> tickIcon: string [

	"Set which icon to use to display as the tick next to selected options.
	Default: 'glyphicon-ok' "

	self optionAt: 'tickIcon' put: string 
]

{ #category : #Options }
BootstrapSelect >> title: string [

	"The default title for the selectpicker."

	self optionAt: BootstrapSelectConstants title put: string 
]

{ #category : #Methods }
BootstrapSelect >> toggle [

	functionName := 'toggle'
]

{ #category : #Options }
BootstrapSelect >> width: autoOrFitOrCssLengthOrFalse [

	"When set to auto, the width of the selectpicker is automatically adjusted to accommodate the widest option.
	 When set to a css-length, the width of the selectpicker is forced inline to the given value.
	 When set to false, all width information is removed."

	| optionValue |

	optionValue := autoOrFitOrCssLengthOrFalse == false
		ifTrue: [ false ]
		ifFalse: [ autoOrFitOrCssLengthOrFalse greaseString ].
	self optionAt: BootstrapSelectConstants width put: optionValue
]

{ #category : #Options }
BootstrapSelect >> windowPadding: integerOrArray [

	"This is useful in cases where the window has areas that the dropdown menu should not cover - for instance a fixed header. 
	When set to an integer, the same padding will be added to all sides. 
	Alternatively, an array of integers can be used in the format [top, right, bottom, left]."

	self optionAt: 'windowPadding' put: integerOrArray 
]
