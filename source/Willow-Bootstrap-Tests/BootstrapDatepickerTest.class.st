"
A BootstrapDatepickerTest is a test class for testing the behavior of BootstrapDatepicker
"
Class {
	#name : #BootstrapDatepickerTest,
	#superclass : #WARenderingTest,
	#category : 'Willow-Bootstrap-Tests-Datepicker'
}

{ #category : #rendering }
BootstrapDatepickerTest >> januaryFirst2017 [

	^ Date newDay: 1 month: 1 year: 2017
]

{ #category : #rendering }
BootstrapDatepickerTest >> renderTextFieldApplying: aBlock [

	^ self
		renderUsing: [ :canvas | 
			| select datepicker |

			select := canvas textInput.
			datepicker := canvas jQuery new bootstrapDatepicker.
			aBlock value: datepicker.
			select script: datepicker ]
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testAssumeNearbyYear [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker assumeNearbyYear: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"assumeNearbyYear":true});</script>'.

	html := self renderTextFieldApplying: [ :datepicker | datepicker assumeNearbyYear: 20 ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"assumeNearbyYear":20});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testAutoclose [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker autoclose: true ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"autoclose":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testBeforeShowCentury [

	| html |

	html := self
		renderTextFieldApplying: [ :datepicker | datepicker beforeShowCentury: (JSFunction new arguments: #(date)) ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"beforeShowCentury":function(date){}});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testBeforeShowDay [

	| html |

	html := self
		renderTextFieldApplying: [ :datepicker | datepicker beforeShowDay: (JSFunction new arguments: #(date)) ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"beforeShowDay":function(date){}});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testBeforeShowDecade [

	| html |

	html := self
		renderTextFieldApplying: [ :datepicker | datepicker beforeShowDecade: (JSFunction new arguments: #(date)) ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"beforeShowDecade":function(date){}});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testBeforeShowMonth [

	| html |

	html := self
		renderTextFieldApplying: [ :datepicker | datepicker beforeShowMonth: (JSFunction new arguments: #(date)) ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"beforeShowMonth":function(date){}});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testBeforeShowYear [

	| html |

	html := self
		renderTextFieldApplying: [ :datepicker | datepicker beforeShowYear: (JSFunction new arguments: #(date)) ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"beforeShowYear":function(date){}});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testCalendarWeeks [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker calendarWeeks: true ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"calendarWeeks":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testClearButton [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker clearButton:  true ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"clearBtn":true});</script>'
]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testClearDates [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker clearDates ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("clearDates");</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testContainer [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker container: '#picker-id' ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"container":"#picker-id"});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testCustomFormatting [

	| html format |

	format := BootstrapDatepickerFormat
		formattingWith: ('return new Date(date).toISOString();' asFunction: #(date format language))
		parsingWith: ('return new Date(d)' asFunction: #(date format language)).

	html := self renderTextFieldApplying: [ :datepicker | datepicker format: format ].

	self
		assert: html
		equals:
			'<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"format":{"toDisplay":function(date,format,language){return new Date(date).toISOString();},"toValue":function(date,format,language){return new Date(d)}}});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testDatesDisabled [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker datesDisabled: '2017-12-11' ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"datesDisabled":"2017-12-11"});</script>'.

	html := self renderTextFieldApplying: [ :datepicker | datepicker datesDisabled: #('2017-12-11' '2017-12-10') ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"datesDisabled":["2017-12-11","2017-12-10"]});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testDaysOfWeekDisabled [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker daysOfWeekDisabled: datepicker constants >> #bootstrap >> #datepicker >> #sunday ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"daysOfWeekDisabled":0});</script>'.

	html := self
		renderTextFieldApplying: [ :datepicker | 
			datepicker
				daysOfWeekDisabled:
					{(datepicker constants >> #bootstrap >> #datepicker >> #saturday).
					(datepicker constants >> #bootstrap >> #datepicker >> #sunday)} ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"daysOfWeekDisabled":[6,0]});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testDaysOfWeekHighlighted [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker daysOfWeekHighlighted: datepicker constants >> #bootstrap >> #datepicker >> #sunday ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"daysOfWeekHighlighted":0});</script>'.

	html := self
		renderTextFieldApplying: [ :datepicker | 
			datepicker
				daysOfWeekHighlighted:
					{(datepicker constants >> #bootstrap >> #datepicker >> #saturday).
					(datepicker constants >> #bootstrap >> #datepicker >> #sunday)} ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"daysOfWeekHighlighted":[6,0]});</script>'
]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testDestroy [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker destroy ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("destroy");</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testDisableTouchKeyboard [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker disableTouchKeyboard: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"disableTouchKeyboard":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testEnableOnReadonly [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker enableOnReadonly: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"enableOnReadonly":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testEndDate [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker endDate: self januaryFirst2017 ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"endDate":new Date(2017,0,1)});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testForceParse [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker forceParse: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"forceParse":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testFormat [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker format: 'd/m/yy' ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"format":"d/m/yy"});</script>'
]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testGetDate [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker getDate ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getDate");</script>'
]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testGetDates [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker getDates ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getDates");</script>'
]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testGetEndDate [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker getEndDate ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getEndDate");</script>'
]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testGetStartDate [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker getStartDate ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getStartDate");</script>'
]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testGetUTCDate [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker getUTCDate ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getUTCDate");</script>'
]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testGetUTCDates [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker getUTCDates ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("getUTCDates");</script>'
]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testHide [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker hide ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("hide");</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testImmediateUpdates [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker immediateUpdates: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"immediateUpdates":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testInputs [

	| html |

	html := self
		renderUsing: [ :canvas | 
			| select datepicker |

			select := canvas textInput.
			datepicker := canvas jQuery new bootstrapDatepicker.
			datepicker inputs: (canvas jQuery class: 'actual_range').
			select script: datepicker ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"inputs":$(".actual_range")});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testKeepEmptyValues [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker keepEmptyValues: true ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"keepEmptyValues":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testKeyboardNavigation [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker keyboardNavigation: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"keyboardNavigation":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testLanguage [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker language: 'de-DE' ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"language":"de-DE"});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testMaxViewMode [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker maxViewMode: datepicker constants >> #bootstrap >> #datepicker >> #years ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"maxViewMode":"years"});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testMinViewMode [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker minViewMode: datepicker constants >> #bootstrap >> #datepicker >> #months ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"minViewMode":"months"});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testMultidate [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker multidate: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"multidate":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testMultidateSeparator [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker multidateSeparator: ';' ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"multidateSeparator":";"});</script>'
]

{ #category : #'tests-Events' }
BootstrapDatepickerTest >> testOnCenturyChanged [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onCenturyChanged: JSFunction new ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeCentury",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapDatepickerTest >> testOnDateChanged [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onDateChanged: JSFunction new ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeDate",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapDatepickerTest >> testOnDateCleared [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onDateCleared:  JSFunction new ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("clearDate",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapDatepickerTest >> testOnDecadeChanged [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onDecadeChanged: JSFunction new ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeDecade",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapDatepickerTest >> testOnHide [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onHide: JSFunction new ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("hide",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapDatepickerTest >> testOnMonthChanged [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onMonthChanged: JSFunction new ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeMonth",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapDatepickerTest >> testOnShow [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onShow: JSFunction new ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("show",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapDatepickerTest >> testOnViewModeChanged [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onViewModeChanged: JSFunction new ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeViewMode",function(){});</script>'
]

{ #category : #'tests-Events' }
BootstrapDatepickerTest >> testOnYearChanged [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker onYearChanged: JSFunction new ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker().on("changeYear",function(){});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testOrientation [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker orientation: RenoirSt constants >> #bottom ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"orientation":"bottom"});</script>'
]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testSetDate [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker setDate: self januaryFirst2017 ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setDate",new Date(2017,0,1));</script>'.

]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testSetDates [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker setDates: {self januaryFirst2017} ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setDates",[new Date(2017,0,1)]);</script>'
]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testSetDatesDisabled [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker setDatesDisabled: #() ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setDatesDisabled",[]);</script>'.

]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testSetDaysOfWeekDisabled [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker setDaysOfWeekDisabled: #() ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setDaysOfWeekDisabled",[]);</script>'.

]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testSetDaysOfWeekHighlighted [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker setDaysOfWeekHighlighted: #() ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setDaysOfWeekHighlighted",[]);</script>'
]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testSetEndDate [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker setEndDate: self januaryFirst2017 ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setEndDate",new Date(2017,0,1));</script>'.

]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testSetStartDate [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker setStartDate: self januaryFirst2017 ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setStartDate",new Date(2017,0,1));</script>'.

]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testSetUTCDate [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker setUTCDate: self januaryFirst2017 ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setUTCDate",new Date(2017,0,1));</script>'
]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testSetUTCDates [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker setUTCDates: {self januaryFirst2017} ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("setUTCDates",[new Date(2017,0,1)]);</script>'
]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testShow [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker show ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("show");</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testShowOnFocus [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker showOnFocus: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"showOnFocus":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testShowWeekDays [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker showWeekDays: true ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"showWeekDays":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testStartDate [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker startDate: self januaryFirst2017 ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"startDate":new Date(2017,0,1)});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testStartView [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker startView: datepicker constants >> #bootstrap >> #datepicker >> #millennium ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"startView":"millennium"});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testTemplates [

	| html |

	html := self
		renderUsing: [ :canvas | 
			| select datepicker |

			select := canvas textInput.
			datepicker := canvas jQuery new bootstrapDatepicker.
			datepicker
				templates:
					(canvas jQuery new bootstrapDatepickerTemplate
						leftArrow: (BootstrapIconWebView representing: Glyphicons menuUp)
						rightArrow: (BootstrapIconWebView representing: Glyphicons menuUp)).
			select script: datepicker ].

	self
		assert: html
		equals:
			'<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"templates":{"leftArrow":"<span class=\"glyphicon glyphicon-menu-up\"></span>","rightArrow":"<span class=\"glyphicon glyphicon-menu-up\"></span>"}});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testTitle [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker title: 'Pick a date!' ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"title":"Pick a date!"});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testTodayButton [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker todayButton: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"todayBtn":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testTodayHighlight [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker todayHighlight: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"todayHighlight":true});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testToggleActive [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker toggleActive: true ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"toggleActive":true});</script>'
]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testUpdate [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker update ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("update");</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testUpdateViewDate [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker updateViewDate: true ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"updateViewDate":true});</script>'
]

{ #category : #'tests-Methods' }
BootstrapDatepickerTest >> testUpdateWithArguments [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker update: '2001-03-05' ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("update","2001-03-05");</script>'.

	html := self renderTextFieldApplying: [ :datepicker | datepicker update: self januaryFirst2017 ].

	self
		assert: html
		equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("update",new Date(2017,0,1));</script>'.

	html := self renderTextFieldApplying: [ :datepicker | datepicker update: '' ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker("update","");</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testWeekStart [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker weekStart: datepicker constants >> #bootstrap >> #datepicker >> #wednesday ].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"weekStart":3});</script>'
]

{ #category : #'tests-Options' }
BootstrapDatepickerTest >> testZIndexOffset [

	| html |

	html := self renderTextFieldApplying: [ :datepicker | datepicker zIndexOffset:15].

	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").datepicker({"zIndexOffset":15});</script>'
]
