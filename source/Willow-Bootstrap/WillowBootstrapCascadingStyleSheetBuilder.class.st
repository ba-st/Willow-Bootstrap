"
I provides some CSS required for the integration to work correctly.
"
Class {
	#name : #WillowBootstrapCascadingStyleSheetBuilder,
	#superclass : #ReflectiveCascadingStyleSheetBuilder,
	#category : 'Willow-Bootstrap-Libraries'
}

{ #category : #Styling }
WillowBootstrapCascadingStyleSheetBuilder >> declareNumberInputStyleIn: builder [

	"The Bootstrap style for input fields doesn't work correctly with the spinners the browsers add to this kind of elements. 
	So here we're hiding it."

	builder
		declareRuleSetFor:
				[ :selector | (CssPseudoElementSelector named: '-webkit-outer-spin-button' of: (self numberInputFor: selector)) , (CssPseudoElementSelector named: '-webkit-inner-spin-button' of: (self numberInputFor: selector)) ]
			with: [ :style | style propertyAt: '-webkit-appearance' put: CssConstants none ];
		declareRuleSetFor: [ :selector | self numberInputFor: selector ] with: [ :style | style propertyAt: '-moz-appearance' put: 'textfield' ]
]

{ #category : #private }
WillowBootstrapCascadingStyleSheetBuilder >> numberInputFor: aCssSelector [

	^aCssSelector input withAttribute: 'type' equalTo: 'number'
]
