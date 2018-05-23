"
I'm here to startup some basic stuff
"
Class {
	#name : #WillowBootstrap,
	#superclass : #Object,
	#category : #'Willow-Bootstrap-Frontend'
}

{ #category : #'class initialization' }
WillowBootstrap class >> initialize [

	Willow classes bind: #bootstrap to: Namespace new.
	self
		initializeImagesClasses;
		initializeInputGroupsClasses;
		initializeTypographyClasses;
		initializeAccessingClasses;
		initializeCollapseClasses;
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
		initializeButtonsClasses
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeAccessingClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #date to: 'date';
		bind: #fade to: 'fade'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeAlertsClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #alertInfo to: 'alert-info';
		bind: #alertSuccess to: 'alert-success';
		bind: #alert to: 'alert';
		bind: #alertDismissible to: 'alert-dismissible';
		bind: #alertLink to: 'alert-link';
		bind: #alertDanger to: 'alert-danger';
		bind: #alertWarning to: 'alert-warning'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeButtonsClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #buttonGroupSmall to: 'btn-group-sm';
		bind: #buttonDanger to: 'btn-danger';
		bind: #buttonWarning to: 'btn-warning';
		bind: #buttonPrimary to: 'btn-primary';
		bind: #buttonToolbar to: 'btn-toolbar';
		bind: #buttonInfo to: 'btn-info';
		bind: #buttonBlock to: 'btn-block';
		bind: #active to: 'active';
		bind: #buttonGroup to: 'btn-group';
		bind: #buttonDefault to: 'btn-default';
		bind: #buttonSmall to: 'btn-sm';
		bind: #button to: 'btn';
		bind: #buttonLarge to: 'btn-lg';
		bind: #buttonGroupJustified to: 'btn-group-justified';
		bind: #buttonExtraSmall to: 'btn-xs';
		bind: #buttonSuccess to: 'btn-success';
		bind: #buttonGroupVertical to: 'btn-group-vertical';
		bind: #buttonGroupExtraSmall to: 'btn-group-xs';
		bind: #buttonGroupLarge to: 'btn-group-lg';
		bind: #buttonLink to: 'btn-link'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeCodeClasses [

	<ignoreForCoverage>
	Willow classes >> #bootstrap bind: #preScrollable to: 'pre-scrollable'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeCollapseClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #collapsed to: 'collapsed';
		bind: #collapsing to: 'collapsing';
		bind: #in to: 'in';
		bind: #collapse to: 'collapse'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeContainersClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #containerFluid to: 'container-fluid';
		bind: #pageHeader to: 'page-header';
		bind: #container to: 'container';
		bind: #jumbotron to: 'jumbotron';
		bind: #thumbnail to: 'thumbnail'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeDropdownsClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #dropdownToggle to: 'dropdown-toggle';
		bind: #open to: 'open';
		bind: #divider to: 'divider';
		bind: #dropdownBackdrop to: 'dropdown-backdrop';
		bind: #dropdownMenuLeft to: 'dropdown-menu-left';
		bind: #dropdownHeader to: 'dropdown-header';
		bind: #dropup to: 'dropup';
		bind: #dropdownMenu to: 'dropdown-menu';
		bind: #dropdown to: 'dropdown';
		bind: #dropdownMenuRight to: 'dropdown-menu-right'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeFormsClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #hasError to: 'has-error';
		bind: #formHorizontal to: 'form-horizontal';
		bind: #hasWarning to: 'has-warning';
		bind: #controlLabel to: 'control-label';
		bind: #inputLarge to: 'input-lg';
		bind: #formControl to: 'form-control';
		bind: #inputSmall to: 'input-sm';
		bind: #formControlStatic to: 'form-control-static';
		bind: #hasFeedback to: 'has-feedback';
		bind: #checkboxInline to: 'checkbox-inline';
		bind: #disabled to: 'disabled';
		bind: #helpBlock to: 'help-block';
		bind: #radio to: 'radio';
		bind: #radioInline to: 'radio-inline';
		bind: #checkbox to: 'checkbox';
		bind: #formGroupLarge to: 'form-group-lg';
		bind: #formGroupSmall to: 'form-group-sm';
		bind: #formInline to: 'form-inline';
		bind: #hasSuccess to: 'has-success';
		bind: #formGroup to: 'form-group'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeGridSystemClasses [

	<ignoreForCoverage>
	Willow classes >> #bootstrap bind: #row to: 'row'.
	1 to: 12 do: [ :index | 
		#('ExtraSmall' 'Small' 'Medium' 'Large')
			with: #('xs' 'sm' 'md' 'lg')
			do: [ :columnSize :abbr | 
				(Willow classes >> #bootstrap)
					bind: (#'column<1s><2p>' expandMacrosWith: columnSize with: index) to: ('col-<1s>-<2p>' expandMacrosWith: abbr with: index);
					bind: (#'column<1s>Offset<2p>' expandMacrosWith: columnSize with: index) to: ('col-<1s>-offset-<2p>' expandMacrosWith: abbr with: index);
					bind: (#'column<1s>Pull<2p>' expandMacrosWith: columnSize with: index) to: ('col-<1s>-pull-<2p>' expandMacrosWith: abbr with: index);
					bind: (#'column<1s>Push<2p>' expandMacrosWith: columnSize with: index) to: ('col-<1s>-push-<2p>' expandMacrosWith: abbr with: index) ] ]
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeHelperClassesClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
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
		bind: #textMuted to: 'text-muted';
		bind: #close to: 'close';
		bind: #caret to: 'caret';
		bind: #centerBlock to: 'center-block';
		bind: #backgroundSuccess to: 'bg-success'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeImagesClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #imageResponsive to: 'img-responsive';
		bind: #glyphicon to: 'glyphicon';
		bind: #imageCircle to: 'img-circle';
		bind: #imageThumbnail to: 'img-thumbnail';
		bind: #imageRounded to: 'img-rounded'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeInputGroupsClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #inputGroupAddon to: 'input-group-addon';
		bind: #inputGroupSmall to: 'input-group-sm';
		bind: #inputGroupLarge to: 'input-group-lg';
		bind: #inputGroupButton to: 'input-group-btn';
		bind: #inputGroup to: 'input-group'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeLabelsClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #labelDefault to: 'label-default';
		bind: #labelDanger to: 'label-danger';
		bind: #labelSuccess to: 'label-success';
		bind: #labelWarning to: 'label-warning';
		bind: #label to: 'label';
		bind: #badge to: 'badge';
		bind: #labelPrimary to: 'label-primary';
		bind: #labelInfo to: 'label-info'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeListGroupsClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #listGroupItemWarning to: 'list-group-item-warning';
		bind: #listGroupItemHeading to: 'list-group-item-heading';
		bind: #listGroupItemSuccess to: 'list-group-item-success';
		bind: #listGroup to: 'list-group';
		bind: #listGroupItemDanger to: 'list-group-item-danger';
		bind: #listGroupItemInfo to: 'list-group-item-info';
		bind: #listGroupItemText to: 'list-group-item-text';
		bind: #listGroupItem to: 'list-group-item'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeMediaObjectClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #mediaObject to: 'media-object';
		bind: #mediaList to: 'media-list';
		bind: #mediaMiddle to: 'media-middle';
		bind: #mediaBody to: 'media-body';
		bind: #mediaHeading to: 'media-heading';
		bind: #mediaRight to: 'media-right';
		bind: #media to: 'media';
		bind: #mediaLeft to: 'media-left'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeModalClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #modalHeader to: 'modal-header';
		bind: #modalSmall to: 'modal-sm';
		bind: #modalLarge to: 'modal-lg';
		bind: #modalBackdrop to: 'modal-backdrop';
		bind: #modalFooter to: 'modal-footer';
		bind: #modalOpen to: 'modal-open';
		bind: #modalDialog to: 'modal-dialog';
		bind: #modal to: 'modal';
		bind: #modalContent to: 'modal-content';
		bind: #modalTitle to: 'modal-title';
		bind: #modalBody to: 'modal-body'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeNavigationClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
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
		bind: #breadcrumb to: 'breadcrumb';
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
	(Willow classes >> #bootstrap)
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
	(Willow classes >> #bootstrap)
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
	(Willow classes >> #bootstrap)
		bind: #arrow to: 'arrow';
		bind: #popover to: 'popover';
		bind: #popoverContent to: 'popover-content';
		bind: #popoverTitle to: 'popover-title'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeProgressBarsClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
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
	(Willow classes >> #bootstrap)
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

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeTablesClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #table to: 'table';
		bind: #tableWarning to: 'warning';
		bind: #tableBordered to: 'table-bordered';
		bind: #tableDanger to: 'danger';
		bind: #tableCondensed to: 'table-condensed';
		bind: #tableInfo to: 'info';
		bind: #tableSuccess to: 'success';
		bind: #tableHover to: 'table-hover';
		bind: #tableResponsive to: 'table-responsive';
		bind: #tableStriped to: 'table-striped'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeTooltipsClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #tooltipArrow to: 'tooltip-arrow';
		bind: #tooltipInner to: 'tooltip-inner';
		bind: #tooltip to: 'tooltip'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeTypographyClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #textUppercase to: 'text-uppercase';
		bind: #small to: 'small';
		bind: #blockquoteReverse to: 'blockquote-reverse';
		bind: #textJustify to: 'text-justify';
		bind: #listInline to: 'list-inline';
		bind: #textCapitalize to: 'text-capitalize';
		bind: #textLowercase to: 'text-lowercase';
		bind: #textRight to: 'text-right';
		bind: #definitionListHorizontal to: 'dl-horizontal';
		bind: #lead to: 'lead';
		bind: #textNowrap to: 'text-nowrap';
		bind: #listUnstyled to: 'list-unstyled';
		bind: #textCenter to: 'text-center';
		bind: #initialism to: 'initialism';
		bind: #textLeft to: 'text-left'
]

{ #category : #'private - initialization' }
WillowBootstrap class >> initializeWellsClasses [

	<ignoreForCoverage>
	(Willow classes >> #bootstrap)
		bind: #wellLarge to: 'well-lg';
		bind: #well to: 'well';
		bind: #wellSmall to: 'well-sm'
]
