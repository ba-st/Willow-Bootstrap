"
I'm here to startup some basic stuff
"
Class {
	#name : #WillowBootstrap,
	#superclass : #Object,
	#pools : [
		'Willow'
	],
	#category : #'Willow-Bootstrap-Frontend'
}

{ #category : #private }
WillowBootstrap class >> forBootstrap3And4Do: aBlock [

	self
		forBootstrap3Do: aBlock;
		forBootstrap4Do: aBlock
]

{ #category : #private }
WillowBootstrap class >> forBootstrap3Do: aBlock [

	aBlock value: Classification >> #bootstrap3
]

{ #category : #private }
WillowBootstrap class >> forBootstrap4Do: aBlock [

	aBlock value: Classification >> #bootstrap4
]

{ #category : #'class initialization' }
WillowBootstrap class >> initialize [

	<ignoreForCoverage>
	Classification bind: #bootstrap3 to: Namespace new.
	Classification bind: #bootstrap4 to: Namespace new.
	Constants bind: #boostrap3 to: Namespace new.
	Constants bind: #bootstrap4 to: Namespace new.
	self
		initializeBaseConstantsAndClasses;
		initializeDatepickerConstantsAndClasses;
		initializeSelectConstantsAndClasses
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeAccessingClasses [

	<ignoreForCoverage>
	(Classification >> #bootstrap3)
		bind: #date to: 'date';
		bind: #fade to: 'fade'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeAlertsClasses [

	<ignoreForCoverage>
	self
		forBootstrap3And4Do: [ :namespace | 
			namespace
				bind: #alert to: 'alert';
				bind: #alertDanger to: 'alert-danger';
				bind: #alertDismissible to: 'alert-dismissible';
				bind: #alertInfo to: 'alert-info';
				bind: #alertLink to: 'alert-link';
				bind: #alertSuccess to: 'alert-success';
				bind: #alertWarning to: 'alert-warning'
			];
		forBootstrap4Do: [ :namespace | 
			namespace
				bind: #alertDark to: 'alert-dark';
				bind: #alertHeading to: 'alert-heading';
				bind: #alertLight to: 'alert-light';
				bind: #alertPrimary to: 'alert-primary';
				bind: #alertSecondary to: 'alert-secondary'
			]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeBaseConstantsAndClasses [

	<ignoreForCoverage>
	self
		initializeImagesClasses;
		initializeInputGroupsClasses;
		initializeTypographyClasses;
		initializeFigureClasses;
		initializeAccessingClasses;
		initializeCollapseClasses;
		initializeCardClasses;
		initializeHelperClassesClasses;
		initializeFormsClasses;
		initializePanelsClasses;
		initializeProgressBarsClasses;
		initializeAlertsClasses;
		initializeWellsClasses;
		initializeLabelsClasses;
		initializeMediaObjectClasses;
		initializeModalClasses;
		initializePopoverClasses;
		initializePaginationClasses;
		initializeContainersClasses;
		initializeListGroupsClasses;
		initializeTooltipsClasses;
		initializeResponsiveUtilitiesClasses;
		initializeGridSystemClasses;
		initializeDropdownsClasses;
		initializeCodeClasses;
		initializeTablesClasses;
		initializeNavigationClasses;
		initializeButtonsClasses.
	self
		initializeDataAPIConstants;
		initializeEventsConstants;
		initializeWillowFunctionsConstants
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeButtonsClasses [

	<ignoreForCoverage>
	self
		forBootstrap3And4Do: [ :namespace | 
			namespace
				bind: #active to: 'active';
				bind: #button to: 'btn';
				bind: #buttonBlock to: 'btn-block';
				bind: #buttonDanger to: 'btn-danger';
				bind: #buttonGroup to: 'btn-group';
				bind: #buttonGroupLarge to: 'btn-group-lg';
				bind: #buttonGroupSmall to: 'btn-group-sm';
				bind: #buttonGroupVertical to: 'btn-group-vertical';
				bind: #buttonInfo to: 'btn-info';
				bind: #buttonLarge to: 'btn-lg';
				bind: #buttonLink to: 'btn-link';
				bind: #buttonPrimary to: 'btn-primary';
				bind: #buttonSuccess to: 'btn-success';
				bind: #buttonSmall to: 'btn-sm';
				bind: #buttonToolbar to: 'btn-toolbar';
				bind: #buttonWarning to: 'btn-warning'
			];
		forBootstrap3Do: [ :namespace | 
			namespace
				bind: #buttonDefault to: 'btn-default';
				bind: #buttonExtraSmall to: 'btn-xs';
				bind: #buttonGroupJustified to: 'btn-group-justified';
				bind: #buttonGroupExtraSmall to: 'btn-group-xs'
			];
		forBootstrap4Do: [ :namespace | 
			namespace
				bind: #buttonDark to: 'btn-dark';
				bind: #buttonGroupToggle to: 'btn-group-toggle';
				bind: #buttonLight to: 'btn-light';
				bind: #buttonOutlineDanger to: 'btn-outline-danger';
				bind: #buttonOutlineDark to: 'btn btn-outline-dark';
				bind: #buttonOutlineInfo to: 'btn btn-outline-info';
				bind: #buttonOutlineLight to: 'btn-outline-light';
				bind: #buttonOutlinePrimary to: 'btn-outline-primary';
				bind: #buttonOutlineSecondary to: 'btn-outline-secondary';
				bind: #buttonOutlineSuccess to: 'btn-outline-success';
				bind: #buttonOutlineWarning to: 'btn-outline-warning';
				bind: #buttonSecondary to: 'btn-secondary'
			]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeCardClasses [

	<ignoreForCoverage>
	self
		forBootstrap4Do: [ :namespace | 
			namespace
				bind: #card to: 'card';
				bind: #cardBody to: 'card-body';
				bind: #cardColumns to: 'card-columns';
				bind: #carDeck to: 'card-deck';
				bind: #cardFooter to: 'card-footer';
				bind: #cardGroup to: 'card-group';
				bind: #cardHeader to: 'card-header';
				bind: #cardHeaderTabs to: 'card-header-tabs';
				bind: #cardImage to: 'card-img';
				bind: #cardImageOverlay to: 'card-img-overlay';
				bind: #cardImageTop to: 'card-img-top';
				bind: #cardLink to: 'card-link';
				bind: #cardSubtitle to: 'card-subtitle';
				bind: #cardText to: 'card-text';
				bind: #cardTitle to: 'card-title'
			]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeCodeClasses [

	<ignoreForCoverage>
	self forBootstrap3And4Do: [ :namespace | namespace bind: #preScrollable to: 'pre-scrollable' ]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeCollapseClasses [

	<ignoreForCoverage>
	self
		forBootstrap3And4Do: [ :namespace | 
			namespace
				bind: #collapse to: 'collapse';
				bind: #collapsing to: 'collapsing'
			];
		forBootstrap3Do: [ :namespace | 
			namespace
				bind: #collapsed to: 'collapsed';
				bind: #in to: 'in'
			]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeContainersClasses [

	<ignoreForCoverage>
	self
		forBootstrap3And4Do: [ :namespace | 
			namespace
				bind: #container to: 'container';
				bind: #containerFluid to: 'container-fluid';
				bind: #jumbotron to: 'jumbotron'
			];
		forBootstrap4Do: [ :namespace | namespace bind: #jumbotronFluid to: 'jumbotron-fluid ' ].
	( Classification >> #bootstrap3 )
		bind: #pageHeader to: 'page-header';
		bind: #thumbnail to: 'thumbnail'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeDataAPIConstants [

	<ignoreForCoverage>
	(Constants >> #bootstrap3)
		bind: #trigger to: 'trigger';
		bind: #content to: 'content';
		bind: #static to: 'static';
		bind: #selector to: 'selector';
		bind: #manual to: 'manual';
		bind: #focus to: 'focus';
		bind: #container to: 'container';
		bind: #dismiss to: 'dismiss';
		bind: #pill to: 'pill';
		bind: #popover to: 'popover';
		bind: #toggle to: 'toggle';
		bind: #show to: 'show';
		bind: #hover to: 'hover';
		bind: #placement to: 'placement';
		bind: #target to: 'target';
		bind: #backdrop to: 'backdrop';
		bind: #title to: 'title';
		bind: #viewport to: 'viewport';
		bind: #html to: 'html';
		bind: #keyboard to: 'keyboard';
		bind: #dropdown to: 'dropdown';
		bind: #delay to: 'delay';
		bind: #template to: 'template';
		bind: #click to: 'click';
		bind: #animation to: 'animation';
		bind: #parent to: 'parent';
		bind: #buttons to: 'buttons';
		bind: #modal to: 'modal'
]

{ #category : #'private - datepicker' }
WillowBootstrap class >> initializeDatepickerConstantsAndClasses [

	<ignoreForCoverage>
	Constants >> #bootstrap3 bind: #datepicker to: 'datepicker'.
	self
		initializeDatepickerDataAPIConstants;
		initializeDatepickerEventsConstants;
		initializeDatepickerViewModesConstants;
		initializeDatepickerWeekStartConstants
]

{ #category : #'private - datepicker' }
WillowBootstrap class >> initializeDatepickerDataAPIConstants [

	<ignoreForCoverage>
	(Constants >> #bootstrap3)
		bind: #todayHighlight to: 'date-today-highlight';
		bind: #language to: 'date-language';
		bind: #todayButton to: 'date-today-btn';
		bind: #orientation to: 'date-orientation';
		bind: #keyboardNavigation to: 'date-keyboard-navigation';
		bind: #autoclose to: 'date-autoclose';
		bind: #forceParse to: 'date-force-parse'
]

{ #category : #'private - datepicker' }
WillowBootstrap class >> initializeDatepickerEventsConstants [

	<ignoreForCoverage>
	(Constants >> #bootstrap3)
		bind: #changeDate to: 'changeDate';
		bind: #clearDate to: 'clearDate';
		bind: #changeMonth to: 'changeMonth';
		bind: #changeCentury to: 'changeCentury';
		bind: #changeYear to: 'changeYear';
		bind: #changeDecade to: 'changeDecade';
		bind: #hide to: 'hide';
		bind: #changeViewMode to: 'changeViewMode'
]

{ #category : #'private - datepicker' }
WillowBootstrap class >> initializeDatepickerViewModesConstants [

	<ignoreForCoverage>
	(Constants >> #bootstrap3)
		bind: #centuries to: 'centuries';
		bind: #years to: 'years';
		bind: #month to: 'month';
		bind: #year to: 'year';
		bind: #millennium to: 'millennium';
		bind: #decade to: 'decade';
		bind: #linked to: 'linked';
		bind: #days to: 'days';
		bind: #months to: 'months';
		bind: #century to: 'century';
		bind: #decades to: 'decades'
]

{ #category : #'private - datepicker' }
WillowBootstrap class >> initializeDatepickerWeekStartConstants [

	<ignoreForCoverage>
	(Constants >> #bootstrap3)
		bind: #sunday to: 0;
		bind: #friday to: 5;
		bind: #wednesday to: 3;
		bind: #tuesday to: 2;
		bind: #monday to: 1;
		bind: #thursday to: 4;
		bind: #saturday to: 6
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeDropdownsClasses [

	<ignoreForCoverage>
	self
		forBootstrap3And4Do: [ :namespace | 
			namespace
				bind: #dropdown to: 'dropdown';
				bind: #dropdownHeader to: 'dropdown-header';
				bind: #dropdownMenu to: 'dropdown-menu';
				bind: #dropdownMenuLeft to: 'dropdown-menu-left';
				bind: #dropdownMenuRight to: 'dropdown-menu-right';
				bind: #dropdownToggle to: 'dropdown-toggle';
				bind: #dropup to: 'dropup'
			];
		forBootstrap3Do: [ :namespace | 
			namespace
				bind: #open to: 'open';
				bind: #divider to: 'divider';
				bind: #dropdownBackdrop to: 'dropdown-backdrop'
			];
		forBootstrap4Do: [ :namespace | 
			namespace
				bind: #dropdownDivider to: 'dropdown-divider';
				bind: #dropdownItem to: 'dropdown-item';
				bind: #dropdownItemText to: 'dropdown-item-text';
				bind: #dropdownToggleSplit to: 'dropdown-toggle-split';
				bind: #dropleft to: 'dropleft';
				bind: #dropright to: 'dropright'
			]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeEventsConstants [

	<ignoreForCoverage>
	(Constants >> #bootstrap3)
		bind: #showTooltip to: 'show.bs.tooltip';
		bind: #insertedTooltip to: 'inserted.bs.tooltip';
		bind: #hiddenCollapse to: 'hidden.bs.collapse';
		bind: #insertedPopover to: 'inserted.bs.popover';
		bind: #hideCollapse to: 'hide.bs.collapse';
		bind: #hiddenModal to: 'hidden.bs.modal';
		bind: #shownDropdown to: 'shown.bs.dropdown';
		bind: #showCollapse to: 'show.bs.collapse';
		bind: #showDropdown to: 'show.bs.dropdown';
		bind: #hideModal to: 'hide.bs.modal';
		bind: #hiddenDropdown to: 'hidden.bs.dropdown';
		bind: #showModal to: 'show.bs.modal';
		bind: #hidePopover to: 'hide.bs.popover';
		bind: #hiddenPopover to: 'hidden.bs.popover';
		bind: #shownModal to: 'shown.bs.modal';
		bind: #shownTooltip to: 'shown.bs.tooltip';
		bind: #hiddenTooltip to: 'hidden.bs.tooltip';
		bind: #shownPopover to: 'shown.bs.popover';
		bind: #hideDropdown to: 'hide.bs.dropdown';
		bind: #showPopover to: 'show.bs.popover';
		bind: #hideTooltip to: 'hide.bs.tooltip';
		bind: #shownCollapse to: 'shown.bs.collapse'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeFigureClasses [

	<ignoreForCoverage>
	self
		forBootstrap4Do: [ :namespace | 
			namespace
				bind: #figure to: 'figure';
				bind: #figureImage to: 'figure-img';
				bind: #figureCaption do: 'figure-caption'
			]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeFormsClasses [

	<ignoreForCoverage>
	self
		forBootstrap3And4Do: [ :namespace | 
			namespace
				bind: #disabled to: 'disabled';
				bind: #formControl to: 'form-control';
				bind: #formGroup to: 'form-group';
				bind: #formInline to: 'form-inline'
			];
		forBootstrap3Do: [ :namespace | 
			namespace
				bind: #checkbox to: 'checkbox';
				bind: #checkboxInline to: 'checkbox-inline';
				bind: #controlLabel to: 'control-label';
				bind: #formControlStatic to: 'form-control-static';
				bind: #formGroupLarge to: 'form-group-lg';
				bind: #formGroupSmall to: 'form-group-sm';
				bind: #formHorizontal to: 'form-horizontal';
				bind: #hasFeedback to: 'has-feedback';
				bind: #hasError to: 'has-error';
				bind: #hasSuccess to: 'has-success';
				bind: #hasWarning to: 'has-warning';
				bind: #helpBlock to: 'help-block';
				bind: #inputLarge to: 'input-lg';
				bind: #inputSmall to: 'input-sm';
				bind: #radio to: 'radio';
				bind: #radioInline to: 'radio-inline'
			];
		forBootstrap4Do: [ :namespace | 
			namespace
				bind: #columnFormLabel to: 'col-form-label';
				bind: #columnFormLabelLarge to: 'col-form-label-lg';
				bind: #columnFormLabelSmall to: 'col-form-label-sm';
				bind: #customCheckbox to: 'custom-checkbox';
				bind: #customControl to: 'custom-control';
				bind: #customControlInline to: 'custom-control-inline';
				bind: #customControlLabel to: 'custom-control-label';
				bind: #customFile to: 'custom-file';
				bind: #customFileInput to: 'custom-file-input';
				bind: #customFileLabel to: 'custom-file-label';
				bind: #customRadio to: 'custom-radio';
				bind: #customRange to: 'custom-range';
				bind: #customSelect to: 'custom-select';
				bind: #customSelectLarge to: 'custom-select-lg';
				bind: #customSelectSmall to: 'custom-select-sm';
				bind: #customSwitch to: 'custom-switch';
				bind: #formCheck to: 'form-check';
				bind: #formCheckInline to: 'form-check-inline';
				bind: #formCheckInput to: 'form-check-input';
				bind: #formCheckLabel to: 'form-check-label';
				bind: #formControlFile to: 'form-control-file';
				bind: #formControlLarge to: 'form-control-lg';
				bind: #formControlPlainText to: 'form-control-plaintext';
				bind: #formControlRange to: 'form-control-range';
				bind: #formControlSmall to: 'form-control-sm';
				bind: #formRow to: 'form-row';
				bind: #formText to: 'form-text';
				bind: #invalidFeedback to: 'invalid-feedback';
				bind: #invalidTooltip to: 'invalid-tooltip';
				bind: #isInvalid to: 'is-invalid ';
				bind: #isValid to: 'is-valid ';
				bind: #positionStatic to: 'position-static';
				bind: #validFeedback to: 'valid-feedback';
				bind: #validTooltip to: 'valid-tooltip'
			]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeGridSystemClasses [

	<ignoreForCoverage>
	Classification >> #bootstrap3 bind: #row to: 'row'.
	1 to: 12 do: [ :index | 
		#('ExtraSmall' 'Small' 'Medium' 'Large')
			with: #('xs' 'sm' 'md' 'lg')
			do: [ :columnSize :abbr | 
				( Classification >> #bootstrap3 )
					bind: ( #'column<1s><2p>' expandMacrosWith: columnSize with: index )
						to: ( 'col-<1s>-<2p>' expandMacrosWith: abbr with: index );
					bind: ( #'column<1s>Offset<2p>' expandMacrosWith: columnSize with: index )
						to: ( 'col-<1s>-offset-<2p>' expandMacrosWith: abbr with: index );
					bind: ( #'column<1s>Pull<2p>' expandMacrosWith: columnSize with: index )
						to: ( 'col-<1s>-pull-<2p>' expandMacrosWith: abbr with: index );
					bind: ( #'column<1s>Push<2p>' expandMacrosWith: columnSize with: index )
						to: ( 'col-<1s>-push-<2p>' expandMacrosWith: abbr with: index )
				]
		].
	( Classification >> #bootstrap4 )
		bind: #row to: 'row';
		bind: #column to: 'col';
		bind: #columnExtraSmall to: 'col';
		bind: #columnSmall to: 'col-sm';
		bind: #columnMedium to: 'col-md';
		bind: #columnLarge to: 'col-lg';
		bind: #columnExtraLarge to: 'col-xl'.
	1 to: 12 do: [ :index | 
		( Classification >> #bootstrap4 )
			bind: ( #'column<1p>' expandMacrosWith: index ) to: ( 'col-<1p>' expandMacrosWith: index );
			bind: ( #'columnExtraSmall<1p>' expandMacrosWith: index )
				to: ( 'col-<1p>' expandMacrosWith: index ).
		#('Small' 'Medium' 'Large' 'ExtraLarge')
			with: #('sm' 'md' 'lg' 'xl')
			do: [ :columnSize :abbr | 
				( Classification >> #bootstrap3 )
					bind: ( #'column<1s><2p>' expandMacrosWith: columnSize with: index )
						to: ( 'col-<1s>-<2p>' expandMacrosWith: abbr with: index );
					bind: ( #'column<1s>Offset<2p>' expandMacrosWith: columnSize with: index )
						to: ( 'col-<1s>-offset-<2p>' expandMacrosWith: abbr with: index )
				]
		]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeHelperClassesClasses [

	<ignoreForCoverage>
	(Classification >> #bootstrap3)
		bind: #screenReaderOnly to: 'sr-only';
		bind: #hidden to: 'hidden';
		bind: #textDanger to: 'text-danger';
		bind: #textPrimary to: 'text-primary';
		bind: #backgroundWarning to: 'bg-warning';
		bind: #backgroundInfo to: 'bg-info';
		bind: #backgroundDanger to: 'bg-danger';
		bind: #invisible to: 'invisible';
		bind: #screenReaderOnlyFocusable to: 'sr-only-focusable';
		bind: #textWarning to: 'text-warning';
		bind: #show to: 'show';
		bind: #pullRight to: 'pull-right';
		bind: #clearfix to: 'clearfix';
		bind: #textHide to: 'text-hide';
		bind: #pullLeft to: 'pull-left';
		bind: #textInfo to: 'text-info';
		bind: #backgroundPrimary to: 'bg-primary';
		bind: #textSuccess to: 'text-success';
		bind: #close to: 'close';
		bind: #caret to: 'caret';
		bind: #centerBlock to: 'center-block';
		bind: #backgroundSuccess to: 'bg-success'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeImagesClasses [

	<ignoreForCoverage>
	self
		forBootstrap3And4Do: [ :namespace | namespace bind: #imageThumbnail to: 'img-thumbnail' ];
		forBootstrap3Do: [ :namespace | 
			namespace
				bind: #imageResponsive to: 'img-responsive';
				bind: #glyphicon to: 'glyphicon';
				bind: #imageCircle to: 'img-circle';
				bind: #imageRounded to: 'img-rounded'
			];
		forBootstrap4Do: [ :namespace | namespace bind: #imageFluid to: 'img-fluid' ]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeInputGroupsClasses [

	<ignoreForCoverage>
	self
		forBootstrap3And4Do: [ :namespace | 
			namespace
				bind: #inputGroup to: 'input-group';
				bind: #inputGroupLarge to: 'input-group-lg';
				bind: #inputGroupSmall to: 'input-group-sm'
			];
		forBootstrap3Do: [ :namespace | 
			namespace
				bind: #inputGroupAddon to: 'input-group-addon';
				bind: #inputGroupButton to: 'input-group-btn'
			];
		forBootstrap4Do: [ :namespace | 
			namespace
				bind: #flexNoWrap to: 'flex-nowrap';
				bind: #inputGroupAppend to: 'input-group-append';
				bind: #inputGroupPrepend to: 'input-group-prepend';
				bind: #inputGroupText to: 'input-group-text'
			]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeLabelsClasses [

	<ignoreForCoverage>
	self
		forBootstrap3And4Do: [ :namespace | namespace bind: #badge to: 'badge' ];
		forBootstrap3Do: [ :namespace | 
			namespace
				bind: #label to: 'label';
				bind: #labelDanger to: 'label-danger';
				bind: #labelDefault to: 'label-default';
				bind: #labelInfo to: 'label-info';
				bind: #labelPrimary to: 'label-primary';
				bind: #labelSuccess to: 'label-success';
				bind: #labelWarning to: 'label-warning'
			];
		forBootstrap4Do: [ :namespace | 
			namespace
				bind: #badgeDanger to: 'badge-danger';
				bind: #badgeDark to: 'badge-dark';
				bind: #badgeInfo to: 'badge-info';
				bind: #badgeLight to: 'badge-light';
				bind: #badgePill to: 'badge-pill';
				bind: #badgePrimary to: 'badge-primary';
				bind: #badgeSecondary to: 'badge-secondary';
				bind: #badgeSuccess to: 'badge-success';
				bind: #badgeWarning to: 'badge-warning'
			]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeListGroupsClasses [

	<ignoreForCoverage>
	self
		forBootstrap3And4Do: [ :namespace | 
			namespace
				bind: #listGroup to: 'list-group';
				bind: #listGroupItem to: 'list-group-item';
				bind: #listGroupItemDanger to: 'list-group-item-danger';
				bind: #listGroupItemInfo to: 'list-group-item-info';
				bind: #listGroupItemSuccess to: 'list-group-item-success';
				bind: #listGroupItemWarning to: 'list-group-item-warning'
			];
		forBootstrap3Do: [ :namespace | 
			namespace
				bind: #listGroupItemHeading to: 'list-group-item-heading';
				bind: #listGroupItemText to: 'list-group-item-text'
			];
		forBootstrap4Do: [ :namespace | 
			namespace
				bind: #listGroupItemAction to: 'list-group-item-action';
				bind: #listGroupFlush to: 'list-group-flush';
				bind: #listGroupHorizontal to: 'list-group-horizontal';
				bind: #listGroupHorizontalLarge to: 'list-group-horizontal-lg';
				bind: #listGroupHorizontalMedium to: 'list-group-horizontal-md';
				bind: #listGroupHorizontalSmall to: 'list-group-horizontal-sm';
				bind: #listGroupHorizontalExtraSmall to: 'list-group-horizontal-xl';
				bind: #listGroupItemDark to: 'list-group-item-dark';
				bind: #listGroupItemLight to: 'list-group-item-light';
				bind: #listGroupItemPrimary to: 'list-group-item-primary';
				bind: #listGroupItemSecondary to: 'list-group-item-secondary'
			]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeMediaObjectClasses [

	<ignoreForCoverage>
	self
		forBootstrap3And4Do: [ :namespace | 
			namespace
				bind: #media to: 'media';
				bind: #mediaBody to: 'media-body'
			];
		forBootstrap3Do: [ :namespace | 
			namespace
				bind: #mediaHeading to: 'media-heading';
				bind: #mediaLeft to: 'media-left';
				bind: #mediaList to: 'media-list';
				bind: #mediaMiddle to: 'media-middle';
				bind: #mediaObject to: 'media-object';
				bind: #mediaRight to: 'media-right'
			]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeModalClasses [

	<ignoreForCoverage>
	self
		forBootstrap3And4Do: [ :namespace | 
			namespace
				bind: #modal to: 'modal';
				bind: #modalBackdrop to: 'modal-backdrop';
				bind: #modalBody to: 'modal-body';
				bind: #modalContent to: 'modal-content';
				bind: #modalDialog to: 'modal-dialog';
				bind: #modalFooter to: 'modal-footer';
				bind: #modalHeader to: 'modal-header';
				bind: #modalLarge to: 'modal-lg';
				bind: #modalOpen to: 'modal-open';
				bind: #modalSmall to: 'modal-sm';
				bind: #modalTitle to: 'modal-title'
			];
		forBootstrap4Do: [ :namespace | 
			namespace
				bind: #modalDialogCentered to: 'modal-dialog-centered';
				bind: #modaLDialogScrollable to: 'modal-dialog-scrollable';
				bind: #modalExtraLarge to: 'modal-xl'
			]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeNavigationClasses [

	<ignoreForCoverage>
	self
		forBootstrap3And4Do: [ :namespace | 
			namespace
				bind: #breadcrumb to: 'breadcrumb';
				bind: #breadcrumbItem to: 'breadcrumb-item'
			].
	( Classification >> #bootstrap3 )
		bind: #navbarFixedTop to: 'navbar-fixed-top';
		bind: #navbarForm to: 'navbar-form';
		bind: #navPills to: 'nav-pills';
		bind: #navbarInverse to: 'navbar-inverse';
		bind: #navbarButton to: 'navbar-btn';
		bind: #navJustified to: 'nav-justified';
		bind: #navbarToggle to: 'navbar-toggle';
		bind: #navbarHeader to: 'navbar-header';
		bind: #navbarBrand to: 'navbar-brand';
		bind: #tabPane to: 'tab-pane';
		bind: #nav to: 'nav';
		bind: #navbar to: 'navbar';
		bind: #navbarText to: 'navbar-text';
		bind: #tabContent to: 'tab-content';
		bind: #iconBar to: 'icon-bar';
		bind: #navbarStaticTop to: 'navbar-static-top';
		bind: #navbarLeft to: 'navbar-left';
		bind: #navbarCollapse to: 'navbar-collapse';
		bind: #navStacked to: 'nav-stacked';
		bind: #navTabs to: 'nav-tabs';
		bind: #navbarRight to: 'navbar-right';
		bind: #navbarFixedBottom to: 'navbar-fixed-bottom';
		bind: #navbarNavigation to: 'navbar-nav';
		bind: #navbarLink to: 'navbar-link';
		bind: #navbarDefault to: 'navbar-default'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializePaginationClasses [

	<ignoreForCoverage>
	(Classification >> #bootstrap3)
		bind: #next to: 'next';
		bind: #pager to: 'pager';
		bind: #paginationLarge to: 'pagination-lg';
		bind: #pagination to: 'pagination';
		bind: #previous to: 'previous';
		bind: #paginationSmall to: 'pagination-sm'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializePanelsClasses [

	<ignoreForCoverage>
	(Classification >> #bootstrap3)
		bind: #panelFooter to: 'panel-footer';
		bind: #panel to: 'panel';
		bind: #panelCollapse to: 'panel-collapse';
		bind: #panelHeading to: 'panel-heading';
		bind: #panelDanger to: 'panel-danger';
		bind: #panelInfo to: 'panel-info';
		bind: #panelPrimary to: 'panel-primary';
		bind: #panelSuccess to: 'panel-success';
		bind: #panelGroup to: 'panel-group';
		bind: #panelTitle to: 'panel-title';
		bind: #panelBody to: 'panel-body';
		bind: #panelWarning to: 'panel-warning';
		bind: #panelDefault to: 'panel-default'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializePopoverClasses [

	<ignoreForCoverage>
	(Classification >> #bootstrap3)
		bind: #arrow to: 'arrow';
		bind: #popover to: 'popover';
		bind: #popoverContent to: 'popover-content';
		bind: #popoverTitle to: 'popover-title'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeProgressBarsClasses [

	<ignoreForCoverage>
	(Classification >> #bootstrap3)
		bind: #progressBarWarning to: 'progress-bar-warning';
		bind: #progressBar to: 'progress-bar';
		bind: #progressBarDanger to: 'progress-bar-danger';
		bind: #progressBarSuccess to: 'progress-bar-success';
		bind: #progressBarStriped to: 'progress-bar-striped';
		bind: #progress to: 'progress';
		bind: #progressBarInfo to: 'progress-bar-info'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeResponsiveUtilitiesClasses [

	<ignoreForCoverage>
	(Classification >> #bootstrap3)
		bind: #hiddenExtraSmall to: 'hidden-xs';
		bind: #visibleExtraSmallInline to: 'visible-xs-inline';
		bind: #visibleMediumInlineBlock to: 'visible-md-inline-block';
		bind: #visiblePrintInlineBlock to: 'visible-print-inline-block';
		bind: #visibleLargeBlock to: 'visible-lg-block';
		bind: #hiddenMedium to: 'hidden-md';
		bind: #visibleExtraSmallBlock to: 'visible-xs-block';
		bind: #visibleSmallBlock to: 'visible-sm-block';
		bind: #visibleMediumBlock to: 'visible-md-block';
		bind: #visibleExtraSmallInlineBlock to: 'visible-xs-inline-block';
		bind: #visibleLargeInline to: 'visible-lg-inline';
		bind: #visiblePrintBlock to: 'visible-print-block';
		bind: #visibleLargeInlineBlock to: 'visible-lg-inline-block';
		bind: #hiddenPrint to: 'hidden-print';
		bind: #hiddenSmall to: 'hidden-sm';
		bind: #visibleSmallInlineBlock to: 'visible-sm-inline-block';
		bind: #hiddenLarge to: 'hidden-lg';
		bind: #visiblePrintInline to: 'visible-print-inline';
		bind: #visibleSmallInline to: 'visible-sm-inline';
		bind: #visibleMediumInline to: 'visible-md-inline'
]

{ #category : #'private - select' }
WillowBootstrap class >> initializeSelectConstants [

	<ignoreForCoverage>
	(Constants >> #bootstrap3)
		bind: #contains to: 'contains';
		bind: #auto to: 'auto';
		bind: #style to: 'style';
		bind: #startsWith to: 'startsWith';
		bind: #fit to: 'fit';
		bind: #values to: 'values';
		bind: #count to: 'count'
]

{ #category : #'private - select' }
WillowBootstrap class >> initializeSelectConstantsAndClasses [

	<ignoreForCoverage>
	(Classification >> #bootstrap3)
		bind: #selectpicker to: 'selectpicker';
		bind: #bootstrapSelect to: 'bootstrap-select'.
	self
		initializeSelectConstants;
		initializeSelectDataAPIConstants;
		initializeSelectEventsConstants
]

{ #category : #'private - select' }
WillowBootstrap class >> initializeSelectDataAPIConstants [

	<ignoreForCoverage>
	(Constants >> #bootstrap3)
		bind: #header to: 'header';
		bind: #liveSearch to: 'live-search';
		bind: #deselectAllText to: 'deselect-all-text';
		bind: #selectOnTab to: 'select-on-tab';
		bind: #liveSearchStyle to: 'live-search-style';
		bind: #tickIcon to: 'tick-icon';
		bind: #showTick to: 'show-tick';
		bind: #width to: 'width';
		bind: #dropdownAlignRight to: 'dropdown-align-right';
		bind: #dropupAuto to: 'dropup-auto';
		bind: #selectedTextFormat to: 'selected-text-format';
		bind: #multipleSeparator to: 'multiple-separator';
		bind: #actionsBox to: 'actions-box';
		bind: #maxOptions to: 'max-options';
		bind: #liveSearchPlaceholder to: 'live-search-placeholder';
		bind: #showIcon to: 'show-icon';
		bind: #mobile to: 'mobile';
		bind: #showContent to: 'show-content';
		bind: #hideDisabled to: 'hide-disabled';
		bind: #showSubtext to: 'show-subtext'; 
		bind: #noneSelectedText to: 'none-selected-text';
		bind: #iconBase to: 'icon-base';
		bind: #countSelectedText to: 'count-selected-text';
		bind: #liveSearchNormalize to: 'live-search-normalize';
		bind: #selectAllText to: 'select-all-text';
		bind: #maxOptionsText to: 'max-options-text';
		bind: #windowPadding to: 'window-padding'
]

{ #category : #'private - select' }
WillowBootstrap class >> initializeSelectEventsConstants [

	<ignoreForCoverage>
	(Constants >> #bootstrap3)
		bind: #hiddenSelect to: 'hidden.bs.select';
		bind: #changedSelect to: 'changed.bs.select';
		bind: #refreshedSelect to: 'refreshed.bs.select';
		bind: #loadedSelect to: 'loaded.bs.select';
		bind: #hideSelect to: 'hide.bs.select';
		bind: #shownSelect to: 'shown.bs.select';
		bind: #showSelect to: 'show.bs.select';
		bind: #renderedSelect to: 'rendered.bs.select'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeTablesClasses [

	<ignoreForCoverage>
	self
		forBootstrap3And4Do: [ :namespace | 
			namespace
				bind: #table to: 'table';
				bind: #tableBordered to: 'table-bordered';
				bind: #tableDanger to: 'danger';
				bind: #tableHover to: 'table-hover';
				bind: #tableInfo to: 'info';
				bind: #tableResponsive to: 'table-responsive';
				bind: #tableStriped to: 'table-striped';
				bind: #tableSuccess to: 'success';
				bind: #tableWarning to: 'warning'
			];
		forBootstrap3Do: [ :namespace | namespace bind: #tableCondensed to: 'table-condensed' ];
		forBootstrap4Do: [ :namespace | 
			namespace
				bind: #tableActive to: 'table-active';
				bind: #tableBorderless to: 'table-borderless';
				bind: #tableDark to: 'table-dark';
				bind: #tableHeadDark to: 'thead-dark';
				bind: #tableHeadLight to: 'thead-light';
				bind: #tableLight to: 'table-light';
				bind: #tablePrimary to: 'table-primary';
				bind: #tableResponsiveExtraLarge to: 'table-responsive-xl';
				bind: #tableResponsiveLarge to: 'table-responsive-lg';
				bind: #tableResponsiveMedium to: 'table-responsive-md';
				bind: #tableResponsiveSmall to: 'table-responsive-sm';
				bind: #tableSecondary to: 'table-secondary';
				bind: #tableSmall to: 'table-sm'
			]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeTooltipsClasses [

	<ignoreForCoverage>
	(Classification >> #bootstrap3)
		bind: #tooltipArrow to: 'tooltip-arrow';
		bind: #tooltipInner to: 'tooltip-inner';
		bind: #tooltip to: 'tooltip'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeTypographyClasses [

	<ignoreForCoverage>
	self
		forBootstrap3And4Do: [ :namespace | 
			namespace
				bind: #initialism to: 'initialism';
				bind: #lead to: 'lead';
				bind: #listInline to: 'list-inline';
				bind: #listUnstyled to: 'list-unstyled';
				bind: #textCenter to: 'text-center';
				bind: #textLeft to: 'text-left';
				bind: #textMuted to: 'text-muted';
				bind: #textRight to: 'text-right'
			].
	self
		forBootstrap3Do: [ :namespace | 
			namespace
				bind: #textUppercase to: 'text-uppercase';
				bind: #small to: 'small';
				bind: #blockquoteReverse to: 'blockquote-reverse';
				bind: #textJustify to: 'text-justify';
				bind: #textCapitalize to: 'text-capitalize';
				bind: #textLowercase to: 'text-lowercase';
				bind: #definitionListHorizontal to: 'dl-horizontal';
				bind: #textNowrap to: 'text-nowrap'
			].
	self
		forBootstrap4Do: [ :namespace | 
			1 to: 4 do: [ :index | 
				namespace
					bind: ( #'display<1p>' expandMacrosWith: index )
					to: ( #'display-<1p>' expandMacrosWith: index )
				].
			namespace
				bind: #blockquote to: 'blockquote';
				bind: #blockquoteFooter to: 'blockquote-footer';
				bind: #listInlineItem to: '#list-inline-item';
				bind: #textTruncate to: 'text-truncate'
			]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeWellsClasses [

	<ignoreForCoverage>
	(Classification >> #bootstrap3)
		bind: #wellLarge to: 'well-lg';
		bind: #well to: 'well';
		bind: #wellSmall to: 'well-sm'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeWillowFunctionsConstants [

	<ignoreForCoverage>
	Constants >> #bootstrap3 bind: #cleanModalFunctionName to: 'cleanModal'
]
