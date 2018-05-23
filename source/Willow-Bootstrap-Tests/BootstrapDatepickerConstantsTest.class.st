Class {
	#name : #BootstrapDatepickerConstantsTest,
	#superclass : #TestCase,
	#category : 'Willow-Bootstrap-Tests-Datepicker'
}

{ #category : #tests }
BootstrapDatepickerConstantsTest >> testDataAPI [

	self
		assert: Willow constants >> #bootstrap >> #datepicker >> #autoclose equals: 'date-autoclose';
		assert: Willow constants >> #bootstrap >> #datepicker >> #forceParse equals: 'date-force-parse';
		assert: Willow constants >> #bootstrap >> #datepicker >> #keyboardNavigation equals: 'date-keyboard-navigation';
		assert: Willow constants >> #bootstrap >> #datepicker >> #language equals: 'date-language';
		assert: Willow constants >> #bootstrap >> #datepicker >> #orientation equals: 'date-orientation';
		assert: Willow constants >> #bootstrap >> #datepicker >> #todayButton equals: 'date-today-btn';
		assert: Willow constants >> #bootstrap >> #datepicker >> #todayHighlight equals: 'date-today-highlight'
]

{ #category : #tests }
BootstrapDatepickerConstantsTest >> testStartWeekDays [

	self
		assert: Willow constants >> #bootstrap >> #datepicker >> #monday equals: 1;
		assert: Willow constants >> #bootstrap >> #datepicker >> #tuesday equals: 2;
		assert: Willow constants >> #bootstrap >> #datepicker >> #wednesday equals: 3;
		assert: Willow constants >> #bootstrap >> #datepicker >> #thursday equals: 4;
		assert: Willow constants >> #bootstrap >> #datepicker >> #friday equals: 5;
		assert: Willow constants >> #bootstrap >> #datepicker >> #saturday equals: 6;
		assert: Willow constants >> #bootstrap >> #datepicker >> #sunday equals: 0
]

{ #category : #tests }
BootstrapDatepickerConstantsTest >> testViewModes [

	self
		assert: Willow constants >> #bootstrap >> #datepicker >> #days equals: 'days';
		assert: Willow constants >> #bootstrap >> #datepicker >> #months equals: 'months';
		assert: Willow constants >> #bootstrap >> #datepicker >> #years equals: 'years';
		assert: Willow constants >> #bootstrap >> #datepicker >> #decades equals: 'decades';
		assert: Willow constants >> #bootstrap >> #datepicker >> #centuries equals: 'centuries'.

	self
		assert: Willow constants >> #bootstrap >> #datepicker >> #month equals: 'month';
		assert: Willow constants >> #bootstrap >> #datepicker >> #year equals: 'year';
		assert: Willow constants >> #bootstrap >> #datepicker >> #decade equals: 'decade';
		assert: Willow constants >> #bootstrap >> #datepicker >> #century equals: 'century';
		assert: Willow constants >> #bootstrap >> #datepicker >> #millennium equals: 'millennium'.

	self assert: Willow constants >> #bootstrap >> #datepicker >> #linked equals: 'linked'
]
