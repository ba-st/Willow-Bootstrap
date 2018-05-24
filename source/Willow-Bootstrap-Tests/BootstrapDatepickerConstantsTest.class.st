Class {
	#name : #BootstrapDatepickerConstantsTest,
	#superclass : #TestCase,
	#category : 'Willow-Bootstrap-Tests-Datepicker'
}

{ #category : #tests }
BootstrapDatepickerConstantsTest >> testDataAPI [

	self
		assert: Willow constants >> #bootstrap >> #autoclose equals: 'date-autoclose';
		assert: Willow constants >> #bootstrap >> #forceParse equals: 'date-force-parse';
		assert: Willow constants >> #bootstrap >> #keyboardNavigation equals: 'date-keyboard-navigation';
		assert: Willow constants >> #bootstrap >> #language equals: 'date-language';
		assert: Willow constants >> #bootstrap >> #orientation equals: 'date-orientation';
		assert: Willow constants >> #bootstrap >> #todayButton equals: 'date-today-btn';
		assert: Willow constants >> #bootstrap >> #todayHighlight equals: 'date-today-highlight'
]

{ #category : #tests }
BootstrapDatepickerConstantsTest >> testStartWeekDays [

	self
		assert: Willow constants >> #bootstrap >> #monday equals: 1;
		assert: Willow constants >> #bootstrap >> #tuesday equals: 2;
		assert: Willow constants >> #bootstrap >> #wednesday equals: 3;
		assert: Willow constants >> #bootstrap >> #thursday equals: 4;
		assert: Willow constants >> #bootstrap >> #friday equals: 5;
		assert: Willow constants >> #bootstrap >> #saturday equals: 6;
		assert: Willow constants >> #bootstrap >> #sunday equals: 0
]

{ #category : #tests }
BootstrapDatepickerConstantsTest >> testViewModes [

	self
		assert: Willow constants >> #bootstrap >> #days equals: 'days';
		assert: Willow constants >> #bootstrap >> #months equals: 'months';
		assert: Willow constants >> #bootstrap >> #years equals: 'years';
		assert: Willow constants >> #bootstrap >> #decades equals: 'decades';
		assert: Willow constants >> #bootstrap >> #centuries equals: 'centuries'.

	self
		assert: Willow constants >> #bootstrap >> #month equals: 'month';
		assert: Willow constants >> #bootstrap >> #year equals: 'year';
		assert: Willow constants >> #bootstrap >> #decade equals: 'decade';
		assert: Willow constants >> #bootstrap >> #century equals: 'century';
		assert: Willow constants >> #bootstrap >> #millennium equals: 'millennium'.

	self assert: Willow constants >> #bootstrap >> #linked equals: 'linked'
]
