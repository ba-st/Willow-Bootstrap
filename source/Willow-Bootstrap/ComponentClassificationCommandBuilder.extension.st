Extension { #name : #ComponentClassificationCommandBuilder }

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> active [

	^ self commandStyledWith: #active
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> alert [

	^ self commandStyledWith: #alert
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> alertDanger [

	^ self commandStyledWith: #alertDanger
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> alertDismissible [

	^ self commandStyledWith: #alertDismissible
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> alertInfo [

	^ self commandStyledWith: #alertInfo
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> alertLink [

	^ self commandStyledWith: #alertLink
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> alertSuccess [

	^ self commandStyledWith: #alertSuccess
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> alertWarning [

	^ self commandStyledWith: #alertWarning
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> arrow [

	^ self commandStyledWith: #arrow
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> backgroundDanger [

	^ self commandStyledWith: #backgroundDanger
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> backgroundInfo [

	^ self commandStyledWith: #backgroundInfo
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> backgroundPrimary [

	^ self commandStyledWith: #backgroundPrimary
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> backgroundSuccess [

	^ self commandStyledWith: #backgroundSuccess
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> backgroundWarning [

	^ self commandStyledWith: #backgroundWarning
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> badge [

	^ self commandStyledWith: #badge
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> blockquoteReverse [

	^ self commandStyledWith: #blockquoteReverse
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> bootstrap [

	classificationNamespace := classificationNamespace >> #bootstrap
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> bootstrapSelect [

	^ self commandStyledWith: #bootstrapSelect
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> breadcrumb [

	^ self commandStyledWith: #breadcrumb
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> button [

	^ self commandStyledWith: #button
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonBlock [

	^ self commandStyledWith: #buttonBlock
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonDanger [

	^ self commandStyledWith: #buttonDanger
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonDefault [

	^ self commandStyledWith: #buttonDefault
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonExtraSmall [

	^ self commandStyledWith: #buttonExtraSmall
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonGroup [

	^ self commandStyledWith: #buttonGroup
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonGroupExtraSmall [

	^ self commandStyledWith: #buttonGroupExtraSmall
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonGroupJustified [

	^ self commandStyledWith: #buttonGroupJustified
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonGroupLarge [

	^ self commandStyledWith: #buttonGroupLarge
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonGroupSmall [

	^ self commandStyledWith: #buttonGroupSmall
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonGroupVertical [

	^ self commandStyledWith: #buttonGroupVertical
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonInfo [

	^ self commandStyledWith: #buttonInfo
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonLarge [

	^ self commandStyledWith: #buttonLarge
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonLink [

	^ self commandStyledWith: #buttonLink
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonPrimary [

	^ self commandStyledWith: #buttonPrimary
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonSmall [

	^ self commandStyledWith: #buttonSmall
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonSuccess [

	^ self commandStyledWith: #buttonSuccess
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonToolbar [

	^ self commandStyledWith: #buttonToolbar
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> buttonWarning [

	^ self commandStyledWith: #buttonWarning
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> caret [

	^ self commandStyledWith: #caret
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> centerBlock [

	^ self commandStyledWith: #centerBlock
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> checkbox [

	^ self commandStyledWith: #checkbox
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> checkboxInline [

	^ self commandStyledWith: #checkboxInline
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> clearfix [

	^ self commandStyledWith: #clearfix
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> close [

	^ self commandStyledWith: #close
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> collapse [

	^ self commandStyledWith: #collapse
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> collapsed [

	^ self commandStyledWith: #collapsed
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> collapsing [

	^ self commandStyledWith: #collapsing
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> columnExtraSmall: count [

	^ self commandStyledWith: (#'columnExtraSmall<1p>' expandMacrosWith: count)
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> columnExtraSmallOffset: count [

	^ self commandStyledWith: (#'columnExtraSmallOffset<1p>' expandMacrosWith: count)
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> columnExtraSmallPull: count [

	^ self commandStyledWith: (#'columnExtraSmallPull<1p>' expandMacrosWith: count)
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> columnExtraSmallPush: count [

	^ self commandStyledWith: (#'columnExtraSmallPush<1p>' expandMacrosWith: count)
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> columnLarge: count [

	^ self commandStyledWith: (#'columnLarge<1p>' expandMacrosWith: count)
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> columnLargeOffset: count [

	^ self commandStyledWith: (#'columnLargeOffset<1p>' expandMacrosWith: count)
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> columnLargePull: count [

	^ self commandStyledWith: (#'columnLargePull<1p>' expandMacrosWith: count)
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> columnLargePush: count [

	^ self commandStyledWith: (#'columnLargePush<1p>' expandMacrosWith: count)
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> columnMedium: count [

	^ self commandStyledWith: (#'columnMedium<1p>' expandMacrosWith: count)
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> columnMediumOffset: count [

	^ self commandStyledWith: (#'columnMediumOffset<1p>' expandMacrosWith: count)
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> columnMediumPull: count [

	^ self commandStyledWith: (#'columnMediumPull<1p>' expandMacrosWith: count)
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> columnMediumPush: count [

	^ self commandStyledWith: (#'columnMediumPush<1p>' expandMacrosWith: count)
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> columnSmall: count [

	^ self commandStyledWith: (#'columnSmall<1p>' expandMacrosWith: count)
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> columnSmallOffset: count [

	^ self commandStyledWith: (#'columnSmallOffset<1p>' expandMacrosWith: count)
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> columnSmallPull: count [

	^ self commandStyledWith: (#'columnSmallPull<1p>' expandMacrosWith: count)
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> columnSmallPush: count [

	^ self commandStyledWith: (#'columnSmallPush<1p>' expandMacrosWith: count)
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> container [

	^ self commandStyledWith: #container
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> containerFluid [

	^ self commandStyledWith: #containerFluid
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> controlLabel [

	^ self commandStyledWith: #controlLabel
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> date [

	^ self commandStyledWith: #date
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> definitionListHorizontal [

	^ self commandStyledWith: #definitionListHorizontal
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> disabled [

	^ self commandStyledWith: #disabled
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> divider [

	^ self commandStyledWith: #divider
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> dropdown [

	^ self commandStyledWith: #dropdown
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> dropdownBackdrop [

	^ self commandStyledWith: #dropdownBackdrop
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> dropdownHeader [

	^ self commandStyledWith: #dropdownHeader
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> dropdownMenu [

	^ self commandStyledWith: #dropdownMenu
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> dropdownMenuLeft [

	^ self commandStyledWith: #dropdownMenuLeft
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> dropdownMenuRight [

	^ self commandStyledWith: #dropdownMenuRight
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> dropdownToggle [

	^ self commandStyledWith: #dropdownToggle
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> dropup [

	^ self commandStyledWith: #dropup
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> fade [

	^ self commandStyledWith: #fade
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> formControl [

	^ self commandStyledWith: #formControl
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> formControlStatic [

	^ self commandStyledWith: #formControlStatic
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> formGroup [

	^ self commandStyledWith: #formGroup
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> formGroupLarge [

	^ self commandStyledWith: #formGroupLarge
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> formGroupSmall [

	^ self commandStyledWith: #formGroupSmall
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> formHorizontal [

	^ self commandStyledWith: #formHorizontal
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> formInline [

	^ self commandStyledWith: #formInline
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> glyphicon [

	^ self commandStyledWith: #glyphicon
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> hasError [

	^ self commandStyledWith: #hasError
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> hasFeedback [

	^ self commandStyledWith: #hasFeedback
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> hasSuccess [

	^ self commandStyledWith: #hasSuccess
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> hasWarning [

	^ self commandStyledWith: #hasWarning
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> helpBlock [

	^ self commandStyledWith: #helpBlock
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> hidden [

	^ self commandStyledWith: #hidden
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> hiddenExtraSmall [

	^ self commandStyledWith: #hiddenExtraSmall
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> hiddenLarge [

	^ self commandStyledWith: #hiddenLarge
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> hiddenMedium [

	^ self commandStyledWith: #hiddenMedium
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> hiddenPrint [

	^ self commandStyledWith: #hiddenPrint
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> hiddenSmall [

	^ self commandStyledWith: #hiddenSmall
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> iconBar [

	^ self commandStyledWith: #iconBar
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> imageCircle [

	^ self commandStyledWith: #imageCircle
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> imageResponsive [

	^ self commandStyledWith: #imageResponsive
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> imageRounded [

	^ self commandStyledWith: #imageRounded
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> imageThumbnail [

	^ self commandStyledWith: #imageThumbnail
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> in [

	^ self commandStyledWith: #in
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> initialism [

	^ self commandStyledWith: #initialism
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> inputGroup [

	^ self commandStyledWith: #inputGroup
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> inputGroupAddon [

	^ self commandStyledWith: #inputGroupAddon
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> inputGroupButton [

	^ self commandStyledWith: #inputGroupButton
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> inputGroupLarge [

	^ self commandStyledWith: #inputGroupLarge
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> inputGroupSmall [

	^ self commandStyledWith: #inputGroupSmall
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> inputLarge [

	^ self commandStyledWith: #inputLarge
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> inputSmall [

	^ self commandStyledWith: #inputSmall
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> invisible [

	^ self commandStyledWith: #invisible
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> jumbotron [

	^ self commandStyledWith: #jumbotron
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> label [

	^ self commandStyledWith: #label
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> labelDanger [

	^ self commandStyledWith: #labelDanger
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> labelDefault [

	^ self commandStyledWith: #labelDefault
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> labelInfo [

	^ self commandStyledWith: #labelInfo
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> labelPrimary [

	^ self commandStyledWith: #labelPrimary
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> labelSuccess [

	^ self commandStyledWith: #labelSuccess
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> labelWarning [

	^ self commandStyledWith: #labelWarning
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> lead [

	^ self commandStyledWith: #lead
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> listGroup [

	^ self commandStyledWith: #listGroup
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> listGroupItem [

	^ self commandStyledWith: #listGroupItem
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> listGroupItemDanger [

	^ self commandStyledWith: #listGroupItemDanger
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> listGroupItemHeading [

	^ self commandStyledWith: #listGroupItemHeading
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> listGroupItemInfo [

	^ self commandStyledWith: #listGroupItemInfo
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> listGroupItemSuccess [

	^ self commandStyledWith: #listGroupItemSuccess
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> listGroupItemText [

	^ self commandStyledWith: #listGroupItemText
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> listGroupItemWarning [

	^ self commandStyledWith: #listGroupItemWarning
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> listInline [

	^ self commandStyledWith: #listInline
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> listUnstyled [

	^ self commandStyledWith: #listUnstyled
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> media [

	^ self commandStyledWith: #media
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> mediaBody [

	^ self commandStyledWith: #mediaBody
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> mediaHeading [

	^ self commandStyledWith: #mediaHeading
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> mediaLeft [

	^ self commandStyledWith: #mediaLeft
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> mediaList [

	^ self commandStyledWith: #mediaList
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> mediaMiddle [

	^ self commandStyledWith: #mediaMiddle
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> mediaObject [

	^ self commandStyledWith: #mediaObject
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> mediaRight [

	^ self commandStyledWith: #mediaRight
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> modal [

	^ self commandStyledWith: #modal
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> modalBackdrop [

	^ self commandStyledWith: #modalBackdrop
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> modalBody [

	^ self commandStyledWith: #modalBody
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> modalContent [

	^ self commandStyledWith: #modalContent
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> modalDialog [

	^ self commandStyledWith: #modalDialog
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> modalFooter [

	^ self commandStyledWith: #modalFooter
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> modalHeader [

	^ self commandStyledWith: #modalHeader
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> modalLarge [

	^ self commandStyledWith: #modalLarge
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> modalOpen [

	^ self commandStyledWith: #modalOpen
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> modalSmall [

	^ self commandStyledWith: #modalSmall
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> modalTitle [

	^ self commandStyledWith: #modalTitle
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> nav [

	^ self commandStyledWith: #nav
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navJustified [

	^ self commandStyledWith: #navJustified
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navPills [

	^ self commandStyledWith: #navPills
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navStacked [

	^ self commandStyledWith: #navStacked
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navTabs [

	^ self commandStyledWith: #navTabs
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbar [

	^ self commandStyledWith: #navbar
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbarBrand [

	^ self commandStyledWith: #navbarBrand
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbarButton [

	^ self commandStyledWith: #navbarButton
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbarCollapse [

	^ self commandStyledWith: #navbarCollapse
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbarDefault [

	^ self commandStyledWith: #navbarDefault
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbarFixedBottom [

	^ self commandStyledWith: #navbarFixedBottom
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbarFixedTop [

	^ self commandStyledWith: #navbarFixedTop
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbarForm [

	^ self commandStyledWith: #navbarForm
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbarHeader [

	^ self commandStyledWith: #navbarHeader
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbarInverse [

	^ self commandStyledWith: #navbarInverse
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbarLeft [

	^ self commandStyledWith: #navbarLeft
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbarLink [

	^ self commandStyledWith: #navbarLink
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbarNavigation [

	^ self commandStyledWith: #navbarNavigation
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbarRight [

	^ self commandStyledWith: #navbarRight
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbarStaticTop [

	^ self commandStyledWith: #navbarStaticTop
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbarText [

	^ self commandStyledWith: #navbarText
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> navbarToggle [

	^ self commandStyledWith: #navbarToggle
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> next [

	^ self commandStyledWith: #next
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> open [

	^ self commandStyledWith: #open
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> pageHeader [

	^ self commandStyledWith: #pageHeader
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> pager [

	^ self commandStyledWith: #pager
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> pagination [

	^ self commandStyledWith: #pagination
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> paginationLarge [

	^ self commandStyledWith: #paginationLarge
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> paginationSmall [

	^ self commandStyledWith: #paginationSmall
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> panel [

	^ self commandStyledWith: #panel
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> panelBody [

	^ self commandStyledWith: #panelBody
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> panelCollapse [

	^ self commandStyledWith: #panelCollapse
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> panelDanger [

	^ self commandStyledWith: #panelDanger
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> panelDefault [

	^ self commandStyledWith: #panelDefault
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> panelFooter [

	^ self commandStyledWith: #panelFooter
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> panelGroup [

	^ self commandStyledWith: #panelGroup
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> panelHeading [

	^ self commandStyledWith: #panelHeading
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> panelInfo [

	^ self commandStyledWith: #panelInfo
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> panelPrimary [

	^ self commandStyledWith: #panelPrimary
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> panelSuccess [

	^ self commandStyledWith: #panelSuccess
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> panelTitle [

	^ self commandStyledWith: #panelTitle
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> panelWarning [

	^ self commandStyledWith: #panelWarning
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> popover [

	^ self commandStyledWith: #popover
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> popoverContent [

	^ self commandStyledWith: #popoverContent
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> popoverTitle [

	^ self commandStyledWith: #popoverTitle
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> preScrollable [

	^ self commandStyledWith: #preScrollable
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> previous [

	^ self commandStyledWith: #previous
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> progress [

	^ self commandStyledWith: #progress
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> progressBar [

	^ self commandStyledWith: #progressBar
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> progressBarDanger [

	^ self commandStyledWith: #progressBarDanger
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> progressBarInfo [

	^ self commandStyledWith: #progressBarInfo
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> progressBarStriped [

	^ self commandStyledWith: #progressBarStriped
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> progressBarSuccess [

	^ self commandStyledWith: #progressBarSuccess
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> progressBarWarning [

	^ self commandStyledWith: #progressBarWarning
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> pullLeft [

	^ self commandStyledWith: #pullLeft
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> pullRight [

	^ self commandStyledWith: #pullRight
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> radio [

	^ self commandStyledWith: #radio
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> radioInline [

	^ self commandStyledWith: #radioInline
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> row [

	^ self commandStyledWith: #row
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> screenReaderOnly [

	^ self commandStyledWith: #screenReaderOnly
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> screenReaderOnlyFocusable [

	^ self commandStyledWith: #screenReaderOnlyFocusable
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> selectpicker [

	^ self commandStyledWith: #selectpicker
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> show [

	^ self commandStyledWith: #show
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> small [

	^ self commandStyledWith: #small
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> tabContent [

	^ self commandStyledWith: #tabContent
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> tabPane [

	^ self commandStyledWith: #tabPane
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> table [

	^ self commandStyledWith: #table
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> tableBordered [

	^ self commandStyledWith: #tableBordered
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> tableCondensed [

	^ self commandStyledWith: #tableCondensed
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> tableDanger [

	^ self commandStyledWith: #tableDanger
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> tableHover [

	^ self commandStyledWith: #tableHover
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> tableInfo [

	^ self commandStyledWith: #tableInfo
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> tableResponsive [

	^ self commandStyledWith: #tableResponsive
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> tableStriped [

	^ self commandStyledWith: #tableStriped
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> tableSuccess [

	^ self commandStyledWith: #tableSuccess
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> tableWarning [

	^ self commandStyledWith: #tableWarning
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> textCapitalize [

	^ self commandStyledWith: #textCapitalize
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> textCenter [

	^ self commandStyledWith: #textCenter
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> textDanger [

	^ self commandStyledWith: #textDanger
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> textHide [

	^ self commandStyledWith: #textHide
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> textInfo [

	^ self commandStyledWith: #textInfo
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> textJustify [

	^ self commandStyledWith: #textJustify
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> textLeft [

	^ self commandStyledWith: #textLeft
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> textLowercase [

	^ self commandStyledWith: #textLowercase
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> textMuted [

	^ self commandStyledWith: #textMuted
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> textNowrap [

	^ self commandStyledWith: #textNowrap
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> textPrimary [

	^ self commandStyledWith: #textPrimary
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> textRight [

	^ self commandStyledWith: #textRight
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> textSuccess [

	^ self commandStyledWith: #textSuccess
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> textUppercase [

	^ self commandStyledWith: #textUppercase
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> textWarning [

	^ self commandStyledWith: #textWarning
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> thumbnail [

	^ self commandStyledWith: #thumbnail
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> tooltip [

	^ self commandStyledWith: #tooltip
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> tooltipArrow [

	^ self commandStyledWith: #tooltipArrow
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> tooltipInner [

	^ self commandStyledWith: #tooltipInner
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> visibleExtraSmallBlock [

	^ self commandStyledWith: #visibleExtraSmallBlock
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> visibleExtraSmallInline [

	^ self commandStyledWith: #visibleExtraSmallInline
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> visibleExtraSmallInlineBlock [

	^ self commandStyledWith: #visibleExtraSmallInlineBlock
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> visibleLargeBlock [

	^ self commandStyledWith: #visibleLargeBlock
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> visibleLargeInline [

	^ self commandStyledWith: #visibleLargeInline
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> visibleLargeInlineBlock [

	^ self commandStyledWith: #visibleLargeInlineBlock
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> visibleMediumBlock [

	^ self commandStyledWith: #visibleMediumBlock
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> visibleMediumInline [

	^ self commandStyledWith: #visibleMediumInline
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> visibleMediumInlineBlock [

	^ self commandStyledWith: #visibleMediumInlineBlock
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> visiblePrintBlock [

	^ self commandStyledWith: #visiblePrintBlock
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> visiblePrintInline [

	^ self commandStyledWith: #visiblePrintInline
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> visiblePrintInlineBlock [

	^ self commandStyledWith: #visiblePrintInlineBlock
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> visibleSmallBlock [

	^ self commandStyledWith: #visibleSmallBlock
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> visibleSmallInline [

	^ self commandStyledWith: #visibleSmallInline
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> visibleSmallInlineBlock [

	^ self commandStyledWith: #visibleSmallInlineBlock
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> well [

	^ self commandStyledWith: #well
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> wellLarge [

	^ self commandStyledWith: #wellLarge
]

{ #category : #'*Willow-Bootstrap' }
ComponentClassificationCommandBuilder >> wellSmall [

	^ self commandStyledWith: #wellSmall
]
