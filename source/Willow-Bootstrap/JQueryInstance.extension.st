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

	self call: 'on' with: self constants >> #bootstrap >> #hiddenCollapse with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onHiddenDropdown: aFunction [

	self call: 'on' with: self constants >> #bootstrap >> #hiddenDropdown with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onHiddenPopover: aFunction [

	self call: 'on' with: self constants >> #bootstrap >> #hiddenPopover with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onHiddenTooltip: aFunction [

	self call: 'on' with: self constants >> #bootstrap >> #hiddenTooltip with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onHideCollapse: aFunction [

	self call: 'on' with: self constants >> #bootstrap >> #hideCollapse with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onHideDropdown: aFunction [

	self call: 'on' with: self constants >> #bootstrap >> #hideDropdown with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onHidePopover: aFunction [

	self call: 'on' with: self constants >> #bootstrap >> #hidePopover with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onHideTooltip: aFunction [

	self call: 'on' with: self constants >> #bootstrap >> #hideTooltip with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onInsertedPopover: aFunction [
 
	self call: 'on' with: self constants >> #bootstrap >> #insertedPopover with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onInsertedTooltip: aFunction [

	self call: 'on' with: self constants >> #bootstrap >> #insertedTooltip with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onShowCollapse: aFunction [

	self call: 'on' with: self constants >> #bootstrap >> #showCollapse with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onShowDropdown: aFunction [

	self call: 'on' with: self constants >> #bootstrap >> #showDropdown with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onShowPopover: aFunction [

	self call: 'on' with: self constants >> #bootstrap >> #showPopover with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onShowTooltip: aFunction [

	self call: 'on' with: self constants >> #bootstrap >> #showTooltip with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onShownCollapse: aFunction [

	self call: 'on' with: self constants >> #bootstrap >> #shownCollapse with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onShownDropdown: aFunction [

	self call: 'on' with: self constants >> #bootstrap >> #shownDropdown with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onShownPopover: aFunction [

	self call: 'on' with: self constants >> #bootstrap >> #shownPopover with: aFunction
]

{ #category : #'*Willow-Bootstrap' }
JQueryInstance >> onShownTooltip: aFunction [

	self call: 'on' with: self constants >> #bootstrap >> #shownTooltip with: aFunction
]
