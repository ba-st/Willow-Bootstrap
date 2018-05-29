"
A BootstrapConstantsTest is a test class for testing the behavior of BootstrapConstants
"
Class {
	#name : #BootstrapConstantsTest,
	#superclass : #TestCase,
	#pools : [
		'Willow'
	],
	#category : #'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #private }
BootstrapConstantsTest >> assertConstantAt: aSymbol equals: anExpectedValue [

	self assert: Constants >> #bootstrap >> aSymbol equals: anExpectedValue
]

{ #category : #tests }
BootstrapConstantsTest >> testDataAPI [

	self
		assertConstantAt: #dismiss equals: 'dismiss';
		assertConstantAt: #parent equals: 'parent';
		assertConstantAt: #target equals: 'target';
		assertConstantAt: #toggle equals: 'toggle'.

	self
		assertConstantAt: #click equals: 'click';
		assertConstantAt: #focus equals: 'focus';
		assertConstantAt: #hover equals: 'hover';
		assertConstantAt: #manual equals: 'manual';
		assertConstantAt: #buttons equals: 'buttons'
]

{ #category : #tests }
BootstrapConstantsTest >> testDatepickerDataAPI [

	self
		assertConstantAt: #autoclose equals: 'date-autoclose';
		assertConstantAt: #forceParse equals: 'date-force-parse';
		assertConstantAt: #keyboardNavigation equals: 'date-keyboard-navigation';
		assertConstantAt: #language equals: 'date-language';
		assertConstantAt: #orientation equals: 'date-orientation';
		assertConstantAt: #todayButton equals: 'date-today-btn';
		assertConstantAt: #todayHighlight equals: 'date-today-highlight'
]

{ #category : #tests }
BootstrapConstantsTest >> testDatepickerStartWeekDays [

	self
		assertConstantAt: #monday equals: 1;
		assertConstantAt: #tuesday equals: 2;
		assertConstantAt: #wednesday equals: 3;
		assertConstantAt: #thursday equals: 4;
		assertConstantAt: #friday equals: 5;
		assertConstantAt: #saturday equals: 6;
		assertConstantAt: #sunday equals: 0
]

{ #category : #tests }
BootstrapConstantsTest >> testDatepickerViewModes [

	self
		assertConstantAt: #days equals: 'days';
		assertConstantAt: #months equals: 'months';
		assertConstantAt: #years equals: 'years';
		assertConstantAt: #decades equals: 'decades';
		assertConstantAt: #centuries equals: 'centuries'.

	self
		assertConstantAt: #month equals: 'month';
		assertConstantAt: #year equals: 'year';
		assertConstantAt: #decade equals: 'decade';
		assertConstantAt: #century equals: 'century';
		assertConstantAt: #millennium equals: 'millennium'.

	self assertConstantAt: #linked equals: 'linked'
]

{ #category : #tests }
BootstrapConstantsTest >> testRoles [

	self
		assertConstantAt: #alert equals: 'alert';
		assertConstantAt: #button equals: 'button';
		assertConstantAt: #dialog equals: 'dialog';
		assertConstantAt: #document equals: 'document';
		assertConstantAt: #group equals: 'group';
		assertConstantAt: #navigation equals: 'navigation';
		assertConstantAt: #presentation equals: 'presentation';
		assertConstantAt: #progressbar equals: 'progressbar';
		assertConstantAt: #separator equals: 'separator';
		assertConstantAt: #tablist equals: 'tablist';
		assertConstantAt: #toolbar equals: 'toolbar'
]

{ #category : #tests }
BootstrapConstantsTest >> testSelectDataAPI [

	self
		assertConstantAt: #selectedTextFormat equals: 'selected-text-format';
		assertConstantAt: #noneSelectedText equals: 'none-selected-text';
		assertConstantAt: #width equals: 'width';
		assertConstantAt: #actionsBox equals: 'actions-box';
		assertConstantAt: #container equals: 'container';
		assertConstantAt: #countSelectedText equals: 'count-selected-text';
		assertConstantAt: #deselectAllText equals: 'deselect-all-text';
		assertConstantAt: #dropdownAlignRight equals: 'dropdown-align-right';
		assertConstantAt: #dropupAuto equals: 'dropup-auto';
		assertConstantAt: #header equals: 'header';
		assertConstantAt: #hideDisabled equals: 'hide-disabled';
		assertConstantAt: #iconBase equals: 'icon-base';
		assertConstantAt: #liveSearch equals: 'live-search';
		assertConstantAt: #liveSearchNormalize equals: 'live-search-normalize';
		assertConstantAt: #liveSearchPlaceholder equals: 'live-search-placeholder';
		assertConstantAt: #liveSearchStyle equals: 'live-search-style';
		assertConstantAt: #maxOptions equals: 'max-options';
		assertConstantAt: #maxOptionsText equals: 'max-options-text';
		assertConstantAt: #mobile equals: 'mobile';
		assertConstantAt: #multipleSeparator equals: 'multiple-separator';
		assertConstantAt: #selectAllText equals: 'select-all-text';
		assertConstantAt: #selectOnTab equals: 'select-on-tab';
		assertConstantAt: #showContent equals: 'show-content';
		assertConstantAt: #showIcon equals: 'show-icon';
		assertConstantAt: #showSubtext equals: 'show-subtext';
		assertConstantAt: #showTick equals: 'show-tick';
		assertConstantAt: #style equals: 'style';
		assertConstantAt: #tickIcon equals: 'tick-icon';
		assertConstantAt: #title equals: 'title';
		assertConstantAt: #windowPadding equals: 'window-padding'
]
