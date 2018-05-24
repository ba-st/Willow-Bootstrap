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
		assert: Willow classification >> #bootstrap >> #selectpicker equals: 'selectpicker';
		assert: Willow classification >> #bootstrap >> #bootstrapSelect equals: 'bootstrap-select'
]

{ #category : #tests }
BootstrapSelectConstantsTest >> testDataAPI [

	self
		assert: Willow constants >> #bootstrap >> #selectedTextFormat equals: 'selected-text-format';
		assert: Willow constants >> #bootstrap >> #noneSelectedText equals: 'none-selected-text';
		assert: Willow constants >> #bootstrap >> #width equals: 'width';
		assert: Willow constants >> #bootstrap >> #actionsBox equals: 'actions-box';
		assert: Willow constants >> #bootstrap >> #container equals: 'container';
		assert: Willow constants >> #bootstrap >> #countSelectedText equals: 'count-selected-text';
		assert: Willow constants >> #bootstrap >> #deselectAllText equals: 'deselect-all-text';
		assert: Willow constants >> #bootstrap >> #dropdownAlignRight equals: 'dropdown-align-right';
		assert: Willow constants >> #bootstrap >> #dropupAuto equals: 'dropup-auto';
		assert: Willow constants >> #bootstrap >> #header equals: 'header';
		assert: Willow constants >> #bootstrap >> #hideDisabled equals: 'hide-disabled';
		assert: Willow constants >> #bootstrap >> #iconBase equals: 'icon-base';
		assert: Willow constants >> #bootstrap >> #liveSearch equals: 'live-search';
		assert: Willow constants >> #bootstrap >> #liveSearchNormalize equals: 'live-search-normalize';
		assert: Willow constants >> #bootstrap >> #liveSearchPlaceholder equals: 'live-search-placeholder';
		assert: Willow constants >> #bootstrap >> #liveSearchStyle equals: 'live-search-style';
		assert: Willow constants >> #bootstrap >> #maxOptions equals: 'max-options';
		assert: Willow constants >> #bootstrap >> #maxOptionsText equals: 'max-options-text';
		assert: Willow constants >> #bootstrap >> #mobile equals: 'mobile';
		assert: Willow constants >> #bootstrap >> #multipleSeparator equals: 'multiple-separator';
		assert: Willow constants >> #bootstrap >> #selectAllText equals: 'select-all-text';
		assert: Willow constants >> #bootstrap >> #selectOnTab equals: 'select-on-tab';
		assert: Willow constants >> #bootstrap >> #showContent equals: 'show-content';
		assert: Willow constants >> #bootstrap >> #showIcon equals: 'show-icon';
		assert: Willow constants >> #bootstrap >> #showSubtext equals: 'show-subtext';
		assert: Willow constants >> #bootstrap >> #showTick equals: 'show-tick';
		assert: Willow constants >> #bootstrap >> #style equals: 'style';
		assert: Willow constants >> #bootstrap >> #tickIcon equals: 'tick-icon';
		assert: Willow constants >> #bootstrap >> #title equals: 'title';
		assert: Willow constants >> #bootstrap >> #windowPadding equals: 'window-padding'
]
