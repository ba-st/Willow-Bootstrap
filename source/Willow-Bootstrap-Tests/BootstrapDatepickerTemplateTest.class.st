"
A BootstrapDatepickerTemplateTest is a test class for testing the behavior of BootstrapDatepickerTemplate
"
Class {
	#name : #BootstrapDatepickerTemplateTest,
	#superclass : #JSObjectTest,
	#category : 'Willow-Bootstrap-Tests-Datepicker'
}

{ #category : #tests }
BootstrapDatepickerTemplateTest >> testAsJavascript [

	self
		assert: ((BootstrapDatepickerTemplate context: self renderContext) leftArrow: [ :canvas | canvas span: '<' ] rightArrow: '>')
		equals: '{"leftArrow":"<span>&lt;</span>","rightArrow":"&gt;"}'
]
