"
A BootstrapCssStylesTest is a test class for testing the behavior of BootstrapCssStyles
"
Class {
	#name : #BootstrapCssStylesTest,
	#superclass : #TestCase,
	#pools : [
		'Willow'
	],
	#category : #'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #'private - asserting' }
BootstrapCssStylesTest >> assertClassificationAt: aSymbol equals: anExpectedString [

	self assert: Classification >> #bootstrap >> aSymbol equals: anExpectedString
]

{ #category : #tests }
BootstrapCssStylesTest >> testAlerts [

	self
		assertClassificationAt: #alert equals: 'alert';
		assertClassificationAt: #alertDanger equals: 'alert-danger';
		assertClassificationAt: #alertDismissible equals: 'alert-dismissible';
		assertClassificationAt: #alertInfo equals: 'alert-info';
		assertClassificationAt: #alertLink equals: 'alert-link';
		assertClassificationAt: #alertSuccess equals: 'alert-success';
		assertClassificationAt: #alertWarning equals: 'alert-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testButtons [

	self
		assertClassificationAt: #active equals: 'active';
		assertClassificationAt: #button equals: 'btn';
		"Styles"
		assertClassificationAt: #buttonDanger equals: 'btn-danger';
		assertClassificationAt: #buttonDefault equals: 'btn-default';
		assertClassificationAt: #buttonInfo equals: 'btn-info';
		assertClassificationAt: #buttonLink equals: 'btn-link';
		assertClassificationAt: #buttonPrimary equals: 'btn-primary';
		assertClassificationAt: #buttonSuccess equals: 'btn-success';
		assertClassificationAt: #buttonWarning equals: 'btn-warning';
		"Sizes"
		assertClassificationAt: #buttonExtraSmall equals: 'btn-xs';
		assertClassificationAt: #buttonSmall equals: 'btn-sm';
		assertClassificationAt: #buttonLarge equals: 'btn-lg';
		"Groups"
		assertClassificationAt: #buttonGroup equals: 'btn-group';
		assertClassificationAt: #buttonGroupExtraSmall equals: 'btn-group-xs';
		assertClassificationAt: #buttonGroupJustified equals: 'btn-group-justified';
		assertClassificationAt: #buttonGroupLarge equals: 'btn-group-lg';
		assertClassificationAt: #buttonGroupSmall equals: 'btn-group-sm';
		assertClassificationAt: #buttonGroupVertical equals: 'btn-group-vertical';
		assertClassificationAt: #buttonBlock equals: 'btn-block';
		assertClassificationAt: #buttonToolbar equals: 'btn-toolbar'
]

{ #category : #tests }
BootstrapCssStylesTest >> testCode [

	self assertClassificationAt: #preScrollable equals: 'pre-scrollable'
]

{ #category : #tests }
BootstrapCssStylesTest >> testCollapse [

	self
		assertClassificationAt: #collapse equals: 'collapse';
		assertClassificationAt: #collapsing equals: 'collapsing';
		assertClassificationAt: #in equals: 'in';
		assertClassificationAt: #collapsed equals: 'collapsed'
]

{ #category : #tests }
BootstrapCssStylesTest >> testContainers [

	self
		assertClassificationAt: #container equals: 'container';
		assertClassificationAt: #containerFluid equals: 'container-fluid';
		assertClassificationAt: #jumbotron equals: 'jumbotron';
		assertClassificationAt: #pageHeader equals: 'page-header';
		assertClassificationAt: #thumbnail equals: 'thumbnail'
]

{ #category : #tests }
BootstrapCssStylesTest >> testDropdowns [

	self
		assertClassificationAt: #divider equals: 'divider';
		assertClassificationAt: #dropdown equals: 'dropdown';
		assertClassificationAt: #dropdownBackdrop equals: 'dropdown-backdrop';
		assertClassificationAt: #dropdownHeader equals: 'dropdown-header';
		assertClassificationAt: #dropdownMenu equals: 'dropdown-menu';
		assertClassificationAt: #dropdownMenuLeft equals: 'dropdown-menu-left';
		assertClassificationAt: #dropdownMenuRight equals: 'dropdown-menu-right';
		assertClassificationAt: #dropdownToggle equals: 'dropdown-toggle';
		assertClassificationAt: #dropup equals: 'dropup';
		assertClassificationAt: #open equals: 'open'
]

{ #category : #tests }
BootstrapCssStylesTest >> testForms [

	self
		assertClassificationAt: #checkbox equals: 'checkbox';
		assertClassificationAt: #checkboxInline equals: 'checkbox-inline';
		assertClassificationAt: #disabled equals: 'disabled';
		assertClassificationAt: #formControl equals: 'form-control';
		assertClassificationAt: #formControlStatic equals: 'form-control-static';
		assertClassificationAt: #formGroup equals: 'form-group';
		assertClassificationAt: #formGroupLarge equals: 'form-group-lg';
		assertClassificationAt: #formGroupSmall equals: 'form-group-sm';
		assertClassificationAt: #formHorizontal equals: 'form-horizontal';
		assertClassificationAt: #formInline equals: 'form-inline';
		assertClassificationAt: #helpBlock equals: 'help-block';
		assertClassificationAt: #inputLarge equals: 'input-lg';
		assertClassificationAt: #inputSmall equals: 'input-sm';
		assertClassificationAt: #radio equals: 'radio';
		assertClassificationAt: #radioInline equals: 'radio-inline'.

	self
		assertClassificationAt: #hasError equals: 'has-error';
		assertClassificationAt: #hasFeedback equals: 'has-feedback';
		assertClassificationAt: #hasWarning equals: 'has-warning';
		assertClassificationAt: #hasSuccess equals: 'has-success'
]

{ #category : #tests }
BootstrapCssStylesTest >> testGridSystem [

	self
		assertClassificationAt: #row equals: 'row';
		assertClassificationAt: #columnExtraSmall6 equals: 'col-xs-6';
		assertClassificationAt: #columnSmall6 equals: 'col-sm-6';
		assertClassificationAt: #columnMedium6 equals: 'col-md-6';
		assertClassificationAt: #columnLarge6 equals: 'col-lg-6'.

	self
		assertClassificationAt: #columnExtraSmallOffset6 equals: 'col-xs-offset-6';
		assertClassificationAt: #columnSmallOffset6 equals: 'col-sm-offset-6';
		assertClassificationAt: #columnMediumOffset6 equals: 'col-md-offset-6';
		assertClassificationAt: #columnLargeOffset6 equals: 'col-lg-offset-6'.

	self
		assertClassificationAt: #columnExtraSmallPull2 equals: 'col-xs-pull-2';
		assertClassificationAt: #columnSmallPull2 equals: 'col-sm-pull-2';
		assertClassificationAt: #columnMediumPull2 equals: 'col-md-pull-2';
		assertClassificationAt: #columnLargePull2 equals: 'col-lg-pull-2'.

	self
		assertClassificationAt: #columnExtraSmallPush2 equals: 'col-xs-push-2';
		assertClassificationAt: #columnSmallPush2 equals: 'col-sm-push-2';
		assertClassificationAt: #columnMediumPush2 equals: 'col-md-push-2';
		assertClassificationAt: #columnLargePush2 equals: 'col-lg-push-2'
]

{ #category : #tests }
BootstrapCssStylesTest >> testHelperClasses [

	self
		assertClassificationAt: #backgroundDanger equals: 'bg-danger';
		assertClassificationAt: #backgroundInfo equals: 'bg-info';
		assertClassificationAt: #backgroundPrimary equals: 'bg-primary';
		assertClassificationAt: #backgroundSuccess equals: 'bg-success';
		assertClassificationAt: #backgroundWarning equals: 'bg-warning'.

	self
		assertClassificationAt: #caret equals: 'caret';
		assertClassificationAt: #centerBlock equals: 'center-block';
		assertClassificationAt: #clearfix equals: 'clearfix';
		assertClassificationAt: #close equals: 'close';
		assertClassificationAt: #hidden equals: 'hidden';
		assertClassificationAt: #invisible equals: 'invisible';
		assertClassificationAt: #pullLeft equals: 'pull-left';
		assertClassificationAt: #pullRight equals: 'pull-right';
		assertClassificationAt: #show equals: 'show'.

	self
		assertClassificationAt: #screenReaderOnly equals: 'sr-only';
		assertClassificationAt: #screenReaderOnlyFocusable equals: 'sr-only-focusable'.

	self
		assertClassificationAt: #textDanger equals: 'text-danger';
		assertClassificationAt: #textHide equals: 'text-hide';
		assertClassificationAt: #textInfo equals: 'text-info';
		assertClassificationAt: #textMuted equals: 'text-muted';
		assertClassificationAt: #textPrimary equals: 'text-primary';
		assertClassificationAt: #textSuccess equals: 'text-success';
		assertClassificationAt: #textWarning equals: 'text-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testImages [

	self
		assertClassificationAt: #glyphicon equals: 'glyphicon';
		assertClassificationAt: #imageCircle equals: 'img-circle';
		assertClassificationAt: #imageResponsive equals: 'img-responsive';
		assertClassificationAt: #imageRounded equals: 'img-rounded';
		assertClassificationAt: #imageThumbnail equals: 'img-thumbnail'
]

{ #category : #tests }
BootstrapCssStylesTest >> testInputGroups [

	self
		assertClassificationAt: #inputGroup equals: 'input-group';
		assertClassificationAt: #inputGroupAddon equals: 'input-group-addon';
		assertClassificationAt: #inputGroupButton equals: 'input-group-btn';
		assertClassificationAt: #inputGroupLarge equals: 'input-group-lg';
		assertClassificationAt: #inputGroupSmall equals: 'input-group-sm'
]

{ #category : #tests }
BootstrapCssStylesTest >> testLabels [

	self
		assertClassificationAt: #badge equals: 'badge';
		assertClassificationAt: #label equals: 'label';
		assertClassificationAt: #labelDanger equals: 'label-danger';
		assertClassificationAt: #labelDefault equals: 'label-default';
		assertClassificationAt: #labelInfo equals: 'label-info';
		assertClassificationAt: #labelPrimary equals: 'label-primary';
		assertClassificationAt: #labelSuccess equals: 'label-success';
		assertClassificationAt: #labelWarning equals: 'label-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testListGroups [

	self
		assertClassificationAt: #listGroup equals: 'list-group';
		assertClassificationAt: #listGroupItem equals: 'list-group-item';
		assertClassificationAt: #listGroupItemDanger equals: 'list-group-item-danger';
		assertClassificationAt: #listGroupItemHeading equals: 'list-group-item-heading';
		assertClassificationAt: #listGroupItemInfo equals: 'list-group-item-info';
		assertClassificationAt: #listGroupItemSuccess equals: 'list-group-item-success';
		assertClassificationAt: #listGroupItemText equals: 'list-group-item-text';
		assertClassificationAt: #listGroupItemWarning equals: 'list-group-item-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testMediaObjects [

	self
		assertClassificationAt: #media equals: 'media';
		assertClassificationAt: #mediaBody equals: 'media-body';
		assertClassificationAt: #mediaHeading equals: 'media-heading';
		assertClassificationAt: #mediaLeft equals: 'media-left';
		assertClassificationAt: #mediaRight equals: 'media-right';
		assertClassificationAt: #mediaMiddle equals: 'media-middle';
		assertClassificationAt: #mediaList equals: 'media-list';
		assertClassificationAt: #mediaObject equals: 'media-object'
]

{ #category : #tests }
BootstrapCssStylesTest >> testModal [

	self
		assertClassificationAt: #modal equals: 'modal';
		assertClassificationAt: #modalBackdrop equals: 'modal-backdrop';
		assertClassificationAt: #modalBody equals: 'modal-body';
		assertClassificationAt: #modalContent equals: 'modal-content';
		assertClassificationAt: #modalDialog equals: 'modal-dialog';
		assertClassificationAt: #modalFooter equals: 'modal-footer';
		assertClassificationAt: #modalHeader equals: 'modal-header';
		assertClassificationAt: #modalLarge equals: 'modal-lg';
		assertClassificationAt: #modalOpen equals: 'modal-open';
		assertClassificationAt: #modalSmall equals: 'modal-sm';
		assertClassificationAt: #modalTitle equals: 'modal-title'
]

{ #category : #tests }
BootstrapCssStylesTest >> testNavigation [

	self
		assertClassificationAt: #breadcrumb equals: 'breadcrumb';
		assertClassificationAt: #iconBar equals: 'icon-bar';
		assertClassificationAt: #nav equals: 'nav';
		assertClassificationAt: #navJustified equals: 'nav-justified';
		assertClassificationAt: #navPills equals: 'nav-pills';
		assertClassificationAt: #navStacked equals: 'nav-stacked';
		assertClassificationAt: #navTabs equals: 'nav-tabs';
		assertClassificationAt: #navbar equals: 'navbar';
		assertClassificationAt: #navbarBrand equals: 'navbar-brand';
		assertClassificationAt: #navbarButton equals: 'navbar-btn';
		assertClassificationAt: #navbarCollapse equals: 'navbar-collapse';
		assertClassificationAt: #navbarDefault equals: 'navbar-default';
		assertClassificationAt: #navbarFixedBottom equals: 'navbar-fixed-bottom';
		assertClassificationAt: #navbarFixedTop equals: 'navbar-fixed-top';
		assertClassificationAt: #navbarForm equals: 'navbar-form';
		assertClassificationAt: #navbarHeader equals: 'navbar-header';
		assertClassificationAt: #navbarInverse equals: 'navbar-inverse';
		assertClassificationAt: #navbarLeft equals: 'navbar-left';
		assertClassificationAt: #navbarRight equals: 'navbar-right';
		assertClassificationAt: #navbarLink equals: 'navbar-link';
		assertClassificationAt: #navbarStaticTop equals: 'navbar-static-top';
		assertClassificationAt: #navbarText equals: 'navbar-text';
		assertClassificationAt: #navbarToggle equals: 'navbar-toggle'
]

{ #category : #tests }
BootstrapCssStylesTest >> testPagination [

	self
		assertClassificationAt: #next equals: 'next';
		assertClassificationAt: #previous equals: 'previous';
		assertClassificationAt: #pager equals: 'pager';
		assertClassificationAt: #pagination equals: 'pagination';
		assertClassificationAt: #paginationLarge equals: 'pagination-lg';
		assertClassificationAt: #paginationSmall equals: 'pagination-sm'
]

{ #category : #tests }
BootstrapCssStylesTest >> testPanels [

	self
		assertClassificationAt: #panel equals: 'panel';
		assertClassificationAt: #panelBody equals: 'panel-body';
		assertClassificationAt: #panelCollapse equals: 'panel-collapse';
		assertClassificationAt: #panelDanger equals: 'panel-danger';
		assertClassificationAt: #panelDefault equals: 'panel-default';
		assertClassificationAt: #panelFooter equals: 'panel-footer';
		assertClassificationAt: #panelGroup equals: 'panel-group';
		assertClassificationAt: #panelHeading equals: 'panel-heading';
		assertClassificationAt: #panelInfo equals: 'panel-info';
		assertClassificationAt: #panelPrimary equals: 'panel-primary';
		assertClassificationAt: #panelSuccess equals: 'panel-success';
		assertClassificationAt: #panelTitle equals: 'panel-title';
		assertClassificationAt: #panelWarning equals: 'panel-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testProgressBars [

	self
		assertClassificationAt: #progress equals: 'progress';
		assertClassificationAt: #progressBar equals: 'progress-bar';
		assertClassificationAt: #progressBarDanger equals: 'progress-bar-danger';
		assertClassificationAt: #progressBarInfo equals: 'progress-bar-info';
		assertClassificationAt: #progressBarStriped equals: 'progress-bar-striped';
		assertClassificationAt: #progressBarSuccess equals: 'progress-bar-success';
		assertClassificationAt: #progressBarWarning equals: 'progress-bar-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testResponsiveUtilities [

	self
		assertClassificationAt: #hiddenExtraSmall equals: 'hidden-xs';
		assertClassificationAt: #hiddenSmall equals: 'hidden-sm';
		assertClassificationAt: #hiddenMedium equals: 'hidden-md';
		assertClassificationAt: #hiddenLarge equals: 'hidden-lg';
		assertClassificationAt: #hiddenPrint equals: 'hidden-print'.

	self
		assertClassificationAt: #visibleExtraSmallBlock equals: 'visible-xs-block';
		assertClassificationAt: #visibleSmallBlock equals: 'visible-sm-block';
		assertClassificationAt: #visibleMediumBlock equals: 'visible-md-block';
		assertClassificationAt: #visibleLargeBlock equals: 'visible-lg-block';
		assertClassificationAt: #visiblePrintBlock equals: 'visible-print-block'.

	self
		assertClassificationAt: #visibleExtraSmallInline equals: 'visible-xs-inline';
		assertClassificationAt: #visibleSmallInline equals: 'visible-sm-inline';
		assertClassificationAt: #visibleMediumInline equals: 'visible-md-inline';
		assertClassificationAt: #visibleLargeInline equals: 'visible-lg-inline';
		assertClassificationAt: #visiblePrintInline equals: 'visible-print-inline'.

	self
		assertClassificationAt: #visibleExtraSmallInlineBlock equals: 'visible-xs-inline-block';
		assertClassificationAt: #visibleSmallInlineBlock equals: 'visible-sm-inline-block';
		assertClassificationAt: #visibleMediumInlineBlock equals: 'visible-md-inline-block';
		assertClassificationAt: #visibleLargeInlineBlock equals: 'visible-lg-inline-block';
		assertClassificationAt: #visiblePrintInlineBlock equals: 'visible-print-inline-block'
]

{ #category : #tests }
BootstrapCssStylesTest >> testSelectClasses [

	self
		assertClassificationAt: #selectpicker equals: 'selectpicker';
		assertClassificationAt: #bootstrapSelect equals: 'bootstrap-select'
]

{ #category : #tests }
BootstrapCssStylesTest >> testTables [

	self
		assertClassificationAt: #table equals: 'table';
		assertClassificationAt: #tableBordered equals: 'table-bordered';
		assertClassificationAt: #tableCondensed equals: 'table-condensed';
		assertClassificationAt: #tableHover equals: 'table-hover';
		assertClassificationAt: #tableResponsive equals: 'table-responsive';
		assertClassificationAt: #tableStriped equals: 'table-striped'.


	self
		assertClassificationAt: #tableDanger equals: 'danger';
		assertClassificationAt: #tableInfo equals: 'info';
		assertClassificationAt: #tableSuccess equals: 'success';
		assertClassificationAt: #tableWarning equals: 'warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testTypography [

	self
		assertClassificationAt: #blockquoteReverse equals: 'blockquote-reverse';
		assertClassificationAt: #definitionListHorizontal equals: 'dl-horizontal';
		assertClassificationAt: #initialism equals: 'initialism';
		assertClassificationAt: #lead equals: 'lead';
		assertClassificationAt: #listInline equals: 'list-inline';
		assertClassificationAt: #listUnstyled equals: 'list-unstyled';
		assertClassificationAt: #small equals: 'small'.

	self
		assertClassificationAt: #textCapitalize equals: 'text-capitalize';
		assertClassificationAt: #textCenter equals: 'text-center';
		assertClassificationAt: #textJustify equals: 'text-justify';
		assertClassificationAt: #textLeft equals: 'text-left';
		assertClassificationAt: #textLowercase equals: 'text-lowercase';
		assertClassificationAt: #textNowrap equals: 'text-nowrap';
		assertClassificationAt: #textRight equals: 'text-right';
		assertClassificationAt: #textUppercase equals: 'text-uppercase'
]

{ #category : #tests }
BootstrapCssStylesTest >> testWells [

	self
		assertClassificationAt: #well equals: 'well';
		assertClassificationAt: #wellLarge equals: 'well-lg';
		assertClassificationAt: #wellSmall equals: 'well-sm'
]
