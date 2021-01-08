Extension { #name : #ComponentClassificationCommandBuilder }

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> blockquoteReverse [

	^ self commandStyledWith: #blockquoteReverse
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> bootstrap3 [

	classificationNamespace := classificationNamespace >> #bootstrap3
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> buttonDefault [

	^ self commandStyledWith: #buttonDefault
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> buttonExtraSmall [

	^ self commandStyledWith: #buttonExtraSmall
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> buttonGroupExtraSmall [

	^ self commandStyledWith: #buttonGroupExtraSmall
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> buttonGroupJustified [

	^ self commandStyledWith: #buttonGroupJustified
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> caret [

	^ self commandStyledWith: #caret
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> centerBlock [

	^ self commandStyledWith: #centerBlock
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> checkbox [

	^ self commandStyledWith: #checkbox
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> checkboxInline [

	^ self commandStyledWith: #checkboxInline
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> collapsed [

	^ self commandStyledWith: #collapsed
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> columnExtraSmallOffset: count [

	^ self commandStyledWith: ('columnExtraSmallOffset<1p>' expandMacrosWith: count) asSymbol
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> columnExtraSmallPull: count [

	^ self commandStyledWith: ('columnExtraSmallPull<1p>' expandMacrosWith: count) asSymbol
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> columnExtraSmallPush: count [

	^ self commandStyledWith: ('columnExtraSmallPush<1p>' expandMacrosWith: count) asSymbol
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> columnLargePull: count [

	^ self commandStyledWith: ('columnLargePull<1p>' expandMacrosWith: count) asSymbol
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> columnLargePush: count [

	^ self commandStyledWith: ('columnLargePush<1p>' expandMacrosWith: count) asSymbol
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> columnMediumPull: count [

	^ self commandStyledWith: ('columnMediumPull<1p>' expandMacrosWith: count) asSymbol
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> columnMediumPush: count [

	^ self commandStyledWith: ( 'columnMediumPush<1p>' expandMacrosWith: count ) asSymbol
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> columnSmallPull: count [

	^ self commandStyledWith: ( 'columnSmallPull<1p>' expandMacrosWith: count ) asSymbol
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> columnSmallPush: count [

	^ self commandStyledWith: ('columnSmallPush<1p>' expandMacrosWith: count) asSymbol
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> controlLabel [

	^ self commandStyledWith: #controlLabel
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> date [

	^ self commandStyledWith: #date
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> definitionListHorizontal [

	^ self commandStyledWith: #definitionListHorizontal
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> divider [

	^ self commandStyledWith: #divider
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> dropdownBackdrop [

	^ self commandStyledWith: #dropdownBackdrop
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> formControlStatic [

	^ self commandStyledWith: #formControlStatic
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> formGroupLarge [

	^ self commandStyledWith: #formGroupLarge
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> formGroupSmall [

	^ self commandStyledWith: #formGroupSmall
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> formHorizontal [

	^ self commandStyledWith: #formHorizontal
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> glyphicon [

	^ self commandStyledWith: #glyphicon
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> hasError [

	^ self commandStyledWith: #hasError
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> hasFeedback [

	^ self commandStyledWith: #hasFeedback
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> hasSuccess [

	^ self commandStyledWith: #hasSuccess
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> hasWarning [

	^ self commandStyledWith: #hasWarning
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> helpBlock [

	^ self commandStyledWith: #helpBlock
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> hidden [

	^ self commandStyledWith: #hidden
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> hiddenExtraSmall [

	^ self commandStyledWith: #hiddenExtraSmall
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> hiddenLarge [

	^ self commandStyledWith: #hiddenLarge
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> hiddenMedium [

	^ self commandStyledWith: #hiddenMedium
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> hiddenPrint [

	^ self commandStyledWith: #hiddenPrint
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> hiddenSmall [

	^ self commandStyledWith: #hiddenSmall
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> iconBar [

	^ self commandStyledWith: #iconBar
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> imageCircle [

	^ self commandStyledWith: #imageCircle
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> imageResponsive [

	^ self commandStyledWith: #imageResponsive
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> imageRounded [

	^ self commandStyledWith: #imageRounded
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> in [

	^ self commandStyledWith: #in
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> inputGroupAddon [

	^ self commandStyledWith: #inputGroupAddon
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> inputGroupButton [

	^ self commandStyledWith: #inputGroupButton
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> inputLarge [

	^ self commandStyledWith: #inputLarge
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> inputSmall [

	^ self commandStyledWith: #inputSmall
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> label [

	^ self commandStyledWith: #label
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> labelDanger [

	^ self commandStyledWith: #labelDanger
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> labelDefault [

	^ self commandStyledWith: #labelDefault
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> labelInfo [

	^ self commandStyledWith: #labelInfo
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> labelPrimary [

	^ self commandStyledWith: #labelPrimary
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> labelSuccess [

	^ self commandStyledWith: #labelSuccess
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> labelWarning [

	^ self commandStyledWith: #labelWarning
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> listGroupItemHeading [

	^ self commandStyledWith: #listGroupItemHeading
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> listGroupItemText [

	^ self commandStyledWith: #listGroupItemText
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> mediaHeading [

	^ self commandStyledWith: #mediaHeading
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> mediaLeft [

	^ self commandStyledWith: #mediaLeft
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> mediaList [

	^ self commandStyledWith: #mediaList
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> mediaMiddle [

	^ self commandStyledWith: #mediaMiddle
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> mediaObject [

	^ self commandStyledWith: #mediaObject
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> mediaRight [

	^ self commandStyledWith: #mediaRight
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> navStacked [

	^ self commandStyledWith: #navStacked
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> navbarButton [

	^ self commandStyledWith: #navbarButton
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> navbarDefault [

	^ self commandStyledWith: #navbarDefault
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> navbarFixedBottom [

	^ self commandStyledWith: #navbarFixedBottom
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> navbarFixedTop [

	^ self commandStyledWith: #navbarFixedTop
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> navbarForm [

	^ self commandStyledWith: #navbarForm
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> navbarHeader [

	^ self commandStyledWith: #navbarHeader
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> navbarInverse [

	^ self commandStyledWith: #navbarInverse
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> navbarLeft [

	^ self commandStyledWith: #navbarLeft
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> navbarLink [

	^ self commandStyledWith: #navbarLink
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> navbarRight [

	^ self commandStyledWith: #navbarRight
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> navbarStaticTop [

	^ self commandStyledWith: #navbarStaticTop
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> navbarToggle [

	^ self commandStyledWith: #navbarToggle
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> next [

	^ self commandStyledWith: #next
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> open [

	^ self commandStyledWith: #open
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> pageHeader [

	^ self commandStyledWith: #pageHeader
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> pager [

	^ self commandStyledWith: #pager
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> panel [

	^ self commandStyledWith: #panel
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> panelBody [

	^ self commandStyledWith: #panelBody
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> panelCollapse [

	^ self commandStyledWith: #panelCollapse
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> panelDanger [

	^ self commandStyledWith: #panelDanger
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> panelDefault [

	^ self commandStyledWith: #panelDefault
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> panelFooter [

	^ self commandStyledWith: #panelFooter
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> panelGroup [

	^ self commandStyledWith: #panelGroup
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> panelHeading [

	^ self commandStyledWith: #panelHeading
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> panelInfo [

	^ self commandStyledWith: #panelInfo
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> panelPrimary [

	^ self commandStyledWith: #panelPrimary
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> panelSuccess [

	^ self commandStyledWith: #panelSuccess
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> panelTitle [

	^ self commandStyledWith: #panelTitle
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> panelWarning [

	^ self commandStyledWith: #panelWarning
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> popoverContent [

	^ self commandStyledWith: #popoverContent
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> popoverTitle [

	^ self commandStyledWith: #popoverTitle
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> progressBarDanger [

	^ self commandStyledWith: #progressBarDanger
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> progressBarInfo [

	^ self commandStyledWith: #progressBarInfo
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> progressBarSuccess [

	^ self commandStyledWith: #progressBarSuccess
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> progressBarWarning [

	^ self commandStyledWith: #progressBarWarning
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> pullLeft [

	^ self commandStyledWith: #pullLeft
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> pullRight [

	^ self commandStyledWith: #pullRight
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> radio [

	^ self commandStyledWith: #radio
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> radioInline [

	^ self commandStyledWith: #radioInline
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> show [

	^ self commandStyledWith: #show
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> small [

	^ self commandStyledWith: #small
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> tableCondensed [

	^ self commandStyledWith: #tableCondensed
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> thumbnail [

	^ self commandStyledWith: #thumbnail
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> visibleExtraSmallBlock [

	^ self commandStyledWith: #visibleExtraSmallBlock
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> visibleExtraSmallInline [

	^ self commandStyledWith: #visibleExtraSmallInline
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> visibleExtraSmallInlineBlock [

	^ self commandStyledWith: #visibleExtraSmallInlineBlock
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> visibleLargeBlock [

	^ self commandStyledWith: #visibleLargeBlock
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> visibleLargeInline [

	^ self commandStyledWith: #visibleLargeInline
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> visibleLargeInlineBlock [

	^ self commandStyledWith: #visibleLargeInlineBlock
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> visibleMediumBlock [

	^ self commandStyledWith: #visibleMediumBlock
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> visibleMediumInline [

	^ self commandStyledWith: #visibleMediumInline
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> visibleMediumInlineBlock [

	^ self commandStyledWith: #visibleMediumInlineBlock
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> visiblePrintBlock [

	^ self commandStyledWith: #visiblePrintBlock
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> visiblePrintInline [

	^ self commandStyledWith: #visiblePrintInline
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> visiblePrintInlineBlock [

	^ self commandStyledWith: #visiblePrintInlineBlock
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> visibleSmallBlock [

	^ self commandStyledWith: #visibleSmallBlock
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> visibleSmallInline [

	^ self commandStyledWith: #visibleSmallInline
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> visibleSmallInlineBlock [

	^ self commandStyledWith: #visibleSmallInlineBlock
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> well [

	^ self commandStyledWith: #well
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> wellLarge [

	^ self commandStyledWith: #wellLarge
]

{ #category : #'*Willow-Bootstrap-3' }
ComponentClassificationCommandBuilder >> wellSmall [

	^ self commandStyledWith: #wellSmall
]
