Class {
	#name : #BootstrapDatepickerConstantsTest,
	#superclass : #TestCase,
	#category : 'Willow-Bootstrap-Tests-Datepicker'
}

{ #category : #tests }
BootstrapDatepickerConstantsTest >> testDataAPI [

	self
		assert: BootstrapDatepickerConstants autoclose equals: 'date-autoclose';
		assert: BootstrapDatepickerConstants forceParse equals: 'date-force-parse';
		assert: BootstrapDatepickerConstants keyboardNavigation equals: 'date-keyboard-navigation';
		assert: BootstrapDatepickerConstants language equals: 'date-language';
		assert: BootstrapDatepickerConstants orientation equals: 'date-orientation';
		assert: BootstrapDatepickerConstants todayButton equals: 'date-today-btn';
		assert: BootstrapDatepickerConstants todayHighlight equals: 'date-today-highlight'
]

{ #category : #tests }
BootstrapDatepickerConstantsTest >> testStartWeekDays [

	self
		assert: BootstrapDatepickerConstants monday equals: 1;
		assert: BootstrapDatepickerConstants tuesday equals: 2;
		assert: BootstrapDatepickerConstants wednesday equals: 3;
		assert: BootstrapDatepickerConstants thursday equals: 4;
		assert: BootstrapDatepickerConstants friday equals: 5;
		assert: BootstrapDatepickerConstants saturday equals: 6;
		assert: BootstrapDatepickerConstants sunday equals: 0
]

{ #category : #tests }
BootstrapDatepickerConstantsTest >> testViewModes [

	self
		assert: BootstrapDatepickerConstants days equals: 'days';
		assert: BootstrapDatepickerConstants months equals: 'months';
		assert: BootstrapDatepickerConstants years equals: 'years';
		assert: BootstrapDatepickerConstants decades equals: 'decades';
		assert: BootstrapDatepickerConstants centuries equals: 'centuries'.

	self
		assert: BootstrapDatepickerConstants month equals: 'month';
		assert: BootstrapDatepickerConstants year equals: 'year';
		assert: BootstrapDatepickerConstants decade equals: 'decade';
		assert: BootstrapDatepickerConstants century equals: 'century';
		assert: BootstrapDatepickerConstants millennium equals: 'millennium'.

	self assert: BootstrapDatepickerConstants linked equals: 'linked'
]
