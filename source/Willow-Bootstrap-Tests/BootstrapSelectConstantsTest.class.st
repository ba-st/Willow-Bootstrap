"
A BootstrapSelectConstantsTest is a test class for testing the behavior of BootstrapSelectConstants
"
Class {
	#name : #BootstrapSelectConstantsTest,
	#superclass : #TestCase,
	#category : 'Willow-Bootstrap-Tests-Select'
}

{ #category : #tests }
BootstrapSelectConstantsTest >> testClasses [

	self
		assert: Willow classes >> #bootstrap >> #selectpicker equals: 'selectpicker';
		assert: Willow classes >> #bootstrap >> #bootstrapSelect equals: 'bootstrap-select'
]

{ #category : #tests }
BootstrapSelectConstantsTest >> testDataAPI [

	self
		assert: Willow constants >> #bootstrap >> #select >> #selectedTextFormat equals: 'selected-text-format';
		assert: Willow constants >> #bootstrap >> #select >> #noneSelectedText equals: 'none-selected-text';
		assert: Willow constants >> #bootstrap >> #select >> #width equals: 'width';
		assert: Willow constants >> #bootstrap >> #select >> #actionsBox equals: 'actions-box';
		assert: Willow constants >> #bootstrap >> #select >> #container equals: 'container';
		assert: Willow constants >> #bootstrap >> #select >> #countSelectedText equals: 'count-selected-text';
		assert: Willow constants >> #bootstrap >> #select >> #deselectAllText equals: 'deselect-all-text';
		assert: Willow constants >> #bootstrap >> #select >> #dropdownAlignRight equals: 'dropdown-align-right';
		assert: Willow constants >> #bootstrap >> #select >> #dropupAuto equals: 'dropup-auto';
		assert: Willow constants >> #bootstrap >> #select >> #header equals: 'header';
		assert: Willow constants >> #bootstrap >> #select >> #hideDisabled equals: 'hide-disabled';
		assert: Willow constants >> #bootstrap >> #select >> #iconBase equals: 'icon-base';
		assert: Willow constants >> #bootstrap >> #select >> #liveSearch equals: 'live-search';
		assert: Willow constants >> #bootstrap >> #select >> #liveSearchNormalize equals: 'live-search-normalize';
		assert: Willow constants >> #bootstrap >> #select >> #liveSearchPlaceholder equals: 'live-search-placeholder';
		assert: Willow constants >> #bootstrap >> #select >> #liveSearchStyle equals: 'live-search-style';
		assert: Willow constants >> #bootstrap >> #select >> #maxOptions equals: 'max-options';
		assert: Willow constants >> #bootstrap >> #select >> #maxOptionsText equals: 'max-options-text';
		assert: Willow constants >> #bootstrap >> #select >> #mobile equals: 'mobile';
		assert: Willow constants >> #bootstrap >> #select >> #multipleSeparator equals: 'multiple-separator';
		assert: Willow constants >> #bootstrap >> #select >> #selectAllText equals: 'select-all-text';
		assert: Willow constants >> #bootstrap >> #select >> #selectOnTab equals: 'select-on-tab';
		assert: Willow constants >> #bootstrap >> #select >> #showContent equals: 'show-content';
		assert: Willow constants >> #bootstrap >> #select >> #showIcon equals: 'show-icon';
		assert: Willow constants >> #bootstrap >> #select >> #showSubtext equals: 'show-subtext';
		assert: Willow constants >> #bootstrap >> #select >> #showTick equals: 'show-tick';
		assert: Willow constants >> #bootstrap >> #select >> #style equals: 'style';
		assert: Willow constants >> #bootstrap >> #select >> #tickIcon equals: 'tick-icon';
		assert: Willow constants >> #bootstrap >> #select >> #title equals: 'title';
		assert: Willow constants >> #bootstrap >> #select >> #windowPadding equals: 'window-padding'
]
