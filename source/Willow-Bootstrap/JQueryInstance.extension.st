Extension { #name : #JQueryInstance }

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> bootstrapCollapse [

	^ self create: BootstrapCollapse
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> bootstrapDatepicker [

	^ self create: BootstrapDatepicker
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> bootstrapDatepickerTemplate [

	^ self create: BootstrapDatepickerTemplate 
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> bootstrapDropdown [

	^ self create: BootstrapDropdown
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> bootstrapModal [

	^ self create: BootstrapModal
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> bootstrapPopover [

	^ self create: BootstrapPopover
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> bootstrapSelect [

	^self create: BootstrapSelect
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> bootstrapTooltip [

	^ self create: BootstrapTooltip 
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> bootstrapTypeahead [

	^ self create: BootstrapTypeahead
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onHiddenCollapse: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #hiddenCollapse with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onHiddenDropdown: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #hiddenDropdown with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onHiddenPopover: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #hiddenPopover with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onHiddenTooltip: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #hiddenTooltip with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onHideCollapse: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #hideCollapse with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onHideDropdown: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #hideDropdown with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onHidePopover: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #hidePopover with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onHideTooltip: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #hideTooltip with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onInsertedPopover: aFunction [
 
	self call: 'on' with: self constants >> #bootstrap3 >> #insertedPopover with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onInsertedTooltip: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #insertedTooltip with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onShowCollapse: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #showCollapse with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onShowDropdown: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #showDropdown with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onShowPopover: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #showPopover with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onShowTooltip: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #showTooltip with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onShownCollapse: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #shownCollapse with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onShownDropdown: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #shownDropdown with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onShownPopover: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #shownPopover with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onShownTooltip: aFunction [

	self call: 'on' with: self constants >> #bootstrap3 >> #shownTooltip with: aFunction
]
