"
A BootstrapSelectLanguageToFileNameTranslatorTest is a test class for testing the behavior of BootstrapSelectLanguageToFileNameTranslator
"
Class {
	#name : #BootstrapSelectLanguageToFileNameTranslatorTest,
	#superclass : #TestCase,
	#category : 'Willow-Bootstrap-Tests-Select'
}

{ #category : #private }
BootstrapSelectLanguageToFileNameTranslatorTest >> fileNameFrom: aLocaleString [

	^ BootstrapSelectLanguageToFileNameTranslator new fileNameFrom: (WALocale fromString: aLocaleString)
]

{ #category : #'tests-Accessing' }
BootstrapSelectLanguageToFileNameTranslatorTest >> testFileNameFrom [

	self
		assert: (self fileNameFrom: 'en') equals: 'defaults-en_US';
		assert: (self fileNameFrom: 'en-CA') equals: 'defaults-en_US';
		assert: (self fileNameFrom: 'en-AU') equals: 'defaults-en_US';
		assert: (self fileNameFrom: 'en-GB') equals: 'defaults-en_US';
		assert: (self fileNameFrom: 'en-IE') equals: 'defaults-en_US';
		assert: (self fileNameFrom: 'en-NZ') equals: 'defaults-en_US';
		assert: (self fileNameFrom: 'en-US') equals: 'defaults-en_US';
		assert: (self fileNameFrom: 'en-ZA') equals: 'defaults-en_US';
		assert: (self fileNameFrom: 'de') equals: 'defaults-de_DE';
		assert: (self fileNameFrom: 'de-DE') equals: 'defaults-de_DE';
		assert: (self fileNameFrom: 'fr') equals: 'defaults-fr_FR';
		assert: (self fileNameFrom: 'fr-FR') equals: 'defaults-fr_FR';
		assert: (self fileNameFrom: 'fr-CH') equals: 'defaults-fr_FR';
		assert: (self fileNameFrom: 'it') equals: 'defaults-it_IT';
		assert: (self fileNameFrom: 'it-IT') equals: 'defaults-it_IT';
		assert: (self fileNameFrom: 'it-CH') equals: 'defaults-it_IT';
		assert: (self fileNameFrom: 'ja-JP') equals: 'defaults-ja_JP';
		assert: (self fileNameFrom: 'kh-KM') equals: 'defaults-kh_KM';		
		assert: (self fileNameFrom: 'es') equals: 'defaults-es_ES';
		assert: (self fileNameFrom: 'es-ES') equals: 'defaults-es_ES';
		assert: (self fileNameFrom: 'es-AR') equals: 'defaults-es_ES';
		assert: (self fileNameFrom: 'es-CL') equals: 'defaults-es_CL';
		assert: (self fileNameFrom: 'et-EE') equals: 'defaults-et_EE';
		assert: (self fileNameFrom: 'pt') equals: 'defaults-pt_PT';
		assert: (self fileNameFrom: 'pt-PT') equals: 'defaults-pt_PT';
		assert: (self fileNameFrom: 'pt-BR') equals: 'defaults-pt_BR';
		assert: (self fileNameFrom: 'vi-VN') equals: 'defaults-vi_VN'		
]
