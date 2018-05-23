"
A BootstrapCssStylesTest is a test class for testing the behavior of BootstrapCssStyles
"
Class {
	#name : #BootstrapCssStylesTest,
	#superclass : #TestCase,
	#category : 'Willow-Bootstrap-Tests-WebViews'
}

{ #category : #tests }
BootstrapCssStylesTest >> testAlerts [

	self
		assert: Willow classes >> #bootstrap >> #alert equals: 'alert';
		assert: Willow classes >> #bootstrap >> #alertDanger equals: 'alert-danger';
		assert: Willow classes >> #bootstrap >> #alertDismissible equals: 'alert-dismissible';
		assert: Willow classes >> #bootstrap >> #alertInfo equals: 'alert-info';
		assert: Willow classes >> #bootstrap >> #alertLink equals: 'alert-link';
		assert: Willow classes >> #bootstrap >> #alertSuccess equals: 'alert-success';
		assert: Willow classes >> #bootstrap >> #alertWarning equals: 'alert-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testButtons [

	self
		assert: Willow classes >> #bootstrap >> #active equals: 'active';
		assert: Willow classes >> #bootstrap >> #button equals: 'btn';
		"Styles"
		assert: Willow classes >> #bootstrap >> #buttonDanger equals: 'btn-danger';
		assert: Willow classes >> #bootstrap >> #buttonDefault equals: 'btn-default';
		assert: Willow classes >> #bootstrap >> #buttonInfo equals: 'btn-info';
		assert: Willow classes >> #bootstrap >> #buttonLink equals: 'btn-link';
		assert: Willow classes >> #bootstrap >> #buttonPrimary equals: 'btn-primary';
		assert: Willow classes >> #bootstrap >> #buttonSuccess equals: 'btn-success';
		assert: Willow classes >> #bootstrap >> #buttonWarning equals: 'btn-warning';
		"Sizes"
		assert: Willow classes >> #bootstrap >> #buttonExtraSmall equals: 'btn-xs';
		assert: Willow classes >> #bootstrap >> #buttonSmall equals: 'btn-sm';
		assert: Willow classes >> #bootstrap >> #buttonLarge equals: 'btn-lg';
		"Groups"
		assert: Willow classes >> #bootstrap >> #buttonGroup equals: 'btn-group';
		assert: Willow classes >> #bootstrap >> #buttonGroupExtraSmall equals: 'btn-group-xs';
		assert: Willow classes >> #bootstrap >> #buttonGroupJustified equals: 'btn-group-justified';
		assert: Willow classes >> #bootstrap >> #buttonGroupLarge equals: 'btn-group-lg';
		assert: Willow classes >> #bootstrap >> #buttonGroupSmall equals: 'btn-group-sm';
		assert: Willow classes >> #bootstrap >> #buttonGroupVertical equals: 'btn-group-vertical';
		assert: Willow classes >> #bootstrap >> #buttonBlock equals: 'btn-block';
		assert: Willow classes >> #bootstrap >> #buttonToolbar equals: 'btn-toolbar'
]

{ #category : #tests }
BootstrapCssStylesTest >> testCode [

	self assert: Willow classes >> #bootstrap >> #preScrollable equals: 'pre-scrollable'
]

{ #category : #tests }
BootstrapCssStylesTest >> testCollapse [

	self
		assert: Willow classes >> #bootstrap >> #collapse equals: 'collapse';
		assert: Willow classes >> #bootstrap >> #collapsing equals: 'collapsing';
		assert: Willow classes >> #bootstrap >> #in equals: 'in';
		assert: Willow classes >> #bootstrap >> #collapsed equals: 'collapsed'
]

{ #category : #tests }
BootstrapCssStylesTest >> testContainers [

	self
		assert: Willow classes >> #bootstrap >> #container equals: 'container';
		assert: Willow classes >> #bootstrap >> #containerFluid equals: 'container-fluid';
		assert: Willow classes >> #bootstrap >> #jumbotron equals: 'jumbotron';
		assert: Willow classes >> #bootstrap >> #pageHeader equals: 'page-header';
		assert: Willow classes >> #bootstrap >> #thumbnail equals: 'thumbnail'
]

{ #category : #tests }
BootstrapCssStylesTest >> testDropdowns [

	self
		assert: Willow classes >> #bootstrap >> #divider equals: 'divider';
		assert: Willow classes >> #bootstrap >> #dropdown equals: 'dropdown';
		assert: Willow classes >> #bootstrap >> #dropdownBackdrop equals: 'dropdown-backdrop';
		assert: Willow classes >> #bootstrap >> #dropdownHeader equals: 'dropdown-header';
		assert: Willow classes >> #bootstrap >> #dropdownMenu equals: 'dropdown-menu';
		assert: Willow classes >> #bootstrap >> #dropdownMenuLeft equals: 'dropdown-menu-left';
		assert: Willow classes >> #bootstrap >> #dropdownMenuRight equals: 'dropdown-menu-right';
		assert: Willow classes >> #bootstrap >> #dropdownToggle equals: 'dropdown-toggle';
		assert: Willow classes >> #bootstrap >> #dropup equals: 'dropup';
		assert: Willow classes >> #bootstrap >> #open equals: 'open'
]

{ #category : #tests }
BootstrapCssStylesTest >> testForms [

	self
		assert: Willow classes >> #bootstrap >> #checkbox equals: 'checkbox';
		assert: Willow classes >> #bootstrap >> #checkboxInline equals: 'checkbox-inline';
		assert: Willow classes >> #bootstrap >> #disabled equals: 'disabled';
		assert: Willow classes >> #bootstrap >> #formControl equals: 'form-control';
		assert: Willow classes >> #bootstrap >> #formControlStatic equals: 'form-control-static';
		assert: Willow classes >> #bootstrap >> #formGroup equals: 'form-group';
		assert: Willow classes >> #bootstrap >> #formGroupLarge equals: 'form-group-lg';
		assert: Willow classes >> #bootstrap >> #formGroupSmall equals: 'form-group-sm';
		assert: Willow classes >> #bootstrap >> #formHorizontal equals: 'form-horizontal';
		assert: Willow classes >> #bootstrap >> #formInline equals: 'form-inline';
		assert: Willow classes >> #bootstrap >> #helpBlock equals: 'help-block';
		assert: Willow classes >> #bootstrap >> #inputLarge equals: 'input-lg';
		assert: Willow classes >> #bootstrap >> #inputSmall equals: 'input-sm';
		assert: Willow classes >> #bootstrap >> #radio equals: 'radio';
		assert: Willow classes >> #bootstrap >> #radioInline equals: 'radio-inline'.

	self
		assert: Willow classes >> #bootstrap >> #hasError equals: 'has-error';
		assert: Willow classes >> #bootstrap >> #hasFeedback equals: 'has-feedback';
		assert: Willow classes >> #bootstrap >> #hasWarning equals: 'has-warning';
		assert: Willow classes >> #bootstrap >> #hasSuccess equals: 'has-success'
]

{ #category : #tests }
BootstrapCssStylesTest >> testGridSystem [

	self
		assert: Willow classes >> #bootstrap >> #row equals: 'row';
		assert: (Willow classes >> #bootstrap >> #columnExtraSmall6) equals: 'col-xs-6';
		assert: (Willow classes >> #bootstrap >> #columnSmall6) equals: 'col-sm-6';
		assert: (Willow classes >> #bootstrap >> #columnMedium6) equals: 'col-md-6';
		assert: (Willow classes >> #bootstrap >> #columnLarge6) equals: 'col-lg-6'.

	self
		assert: (Willow classes >> #bootstrap >> #columnExtraSmallOffset6) equals: 'col-xs-offset-6';
		assert: (Willow classes >> #bootstrap >> #columnSmallOffset6) equals: 'col-sm-offset-6';
		assert: (Willow classes >> #bootstrap >> #columnMediumOffset6) equals: 'col-md-offset-6';
		assert: (Willow classes >> #bootstrap >> #columnLargeOffset6) equals: 'col-lg-offset-6'.

	self
		assert: (Willow classes >> #bootstrap >> #columnExtraSmallPull2) equals: 'col-xs-pull-2';
		assert: (Willow classes >> #bootstrap >> #columnSmallPull2) equals: 'col-sm-pull-2';
		assert: (Willow classes >> #bootstrap >> #columnMediumPull2) equals: 'col-md-pull-2';
		assert: (Willow classes >> #bootstrap >> #columnLargePull2) equals: 'col-lg-pull-2'.

	self
		assert: (Willow classes >> #bootstrap >> #columnExtraSmallPush2) equals: 'col-xs-push-2';
		assert: (Willow classes >> #bootstrap >> #columnSmallPush2) equals: 'col-sm-push-2';
		assert: (Willow classes >> #bootstrap >> #columnMediumPush2) equals: 'col-md-push-2';
		assert: (Willow classes >> #bootstrap >> #columnLargePush2) equals: 'col-lg-push-2'
]

{ #category : #tests }
BootstrapCssStylesTest >> testHelperClasses [

	self
		assert: Willow classes >> #bootstrap >> #backgroundDanger equals: 'bg-danger';
		assert: Willow classes >> #bootstrap >> #backgroundInfo equals: 'bg-info';
		assert: Willow classes >> #bootstrap >> #backgroundPrimary equals: 'bg-primary';
		assert: Willow classes >> #bootstrap >> #backgroundSuccess equals: 'bg-success';
		assert: Willow classes >> #bootstrap >> #backgroundWarning equals: 'bg-warning'.

	self
		assert: Willow classes >> #bootstrap >> #caret equals: 'caret';
		assert: Willow classes >> #bootstrap >> #centerBlock equals: 'center-block';
		assert: Willow classes >> #bootstrap >> #clearfix equals: 'clearfix';
		assert: Willow classes >> #bootstrap >> #close equals: 'close';
		assert: Willow classes >> #bootstrap >> #hidden equals: 'hidden';
		assert: Willow classes >> #bootstrap >> #invisible equals: 'invisible';
		assert: Willow classes >> #bootstrap >> #pullLeft equals: 'pull-left';
		assert: Willow classes >> #bootstrap >> #pullRight equals: 'pull-right';
		assert: Willow classes >> #bootstrap >> #show equals: 'show'.

	self
		assert: Willow classes >> #bootstrap >> #screenReaderOnly equals: 'sr-only';
		assert: Willow classes >> #bootstrap >> #screenReaderOnlyFocusable equals: 'sr-only-focusable'.

	self
		assert: Willow classes >> #bootstrap >> #textDanger equals: 'text-danger';
		assert: Willow classes >> #bootstrap >> #textHide equals: 'text-hide';
		assert: Willow classes >> #bootstrap >> #textInfo equals: 'text-info';
		assert: Willow classes >> #bootstrap >> #textMuted equals: 'text-muted';
		assert: Willow classes >> #bootstrap >> #textPrimary equals: 'text-primary';
		assert: Willow classes >> #bootstrap >> #textSuccess equals: 'text-success';
		assert: Willow classes >> #bootstrap >> #textWarning equals: 'text-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testImages [

	self
		assert: Willow classes >> #bootstrap >> #glyphicon equals: 'glyphicon';
		assert: Willow classes >> #bootstrap >> #imageCircle equals: 'img-circle';
		assert: Willow classes >> #bootstrap >> #imageResponsive equals: 'img-responsive';
		assert: Willow classes >> #bootstrap >> #imageRounded equals: 'img-rounded';
		assert: Willow classes >> #bootstrap >> #imageThumbnail equals: 'img-thumbnail'
]

{ #category : #tests }
BootstrapCssStylesTest >> testInputGroups [

	self
		assert: Willow classes >> #bootstrap >> #inputGroup equals: 'input-group';
		assert: Willow classes >> #bootstrap >> #inputGroupAddon equals: 'input-group-addon';
		assert: Willow classes >> #bootstrap >> #inputGroupButton equals: 'input-group-btn';
		assert: Willow classes >> #bootstrap >> #inputGroupLarge equals: 'input-group-lg';
		assert: Willow classes >> #bootstrap >> #inputGroupSmall equals: 'input-group-sm'
]

{ #category : #tests }
BootstrapCssStylesTest >> testLabels [

	self
		assert: Willow classes >> #bootstrap >> #badge equals: 'badge';
		assert: Willow classes >> #bootstrap >> #label equals: 'label';
		assert: Willow classes >> #bootstrap >> #labelDanger equals: 'label-danger';
		assert: Willow classes >> #bootstrap >> #labelDefault equals: 'label-default';
		assert: Willow classes >> #bootstrap >> #labelInfo equals: 'label-info';
		assert: Willow classes >> #bootstrap >> #labelPrimary equals: 'label-primary';
		assert: Willow classes >> #bootstrap >> #labelSuccess equals: 'label-success';
		assert: Willow classes >> #bootstrap >> #labelWarning equals: 'label-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testListGroups [

	self
		assert: Willow classes >> #bootstrap >> #listGroup equals: 'list-group';
		assert: Willow classes >> #bootstrap >> #listGroupItem equals: 'list-group-item';
		assert: Willow classes >> #bootstrap >> #listGroupItemDanger equals: 'list-group-item-danger';
		assert: Willow classes >> #bootstrap >> #listGroupItemHeading equals: 'list-group-item-heading';
		assert: Willow classes >> #bootstrap >> #listGroupItemInfo equals: 'list-group-item-info';
		assert: Willow classes >> #bootstrap >> #listGroupItemSuccess equals: 'list-group-item-success';
		assert: Willow classes >> #bootstrap >> #listGroupItemText equals: 'list-group-item-text';
		assert: Willow classes >> #bootstrap >> #listGroupItemWarning equals: 'list-group-item-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testMediaObjects [

	self
		assert: Willow classes >> #bootstrap >> #media equals: 'media';
		assert: Willow classes >> #bootstrap >> #mediaBody equals: 'media-body';
		assert: Willow classes >> #bootstrap >> #mediaHeading equals: 'media-heading';
		assert: Willow classes >> #bootstrap >> #mediaLeft equals: 'media-left';
		assert: Willow classes >> #bootstrap >> #mediaRight equals: 'media-right';
		assert: Willow classes >> #bootstrap >> #mediaMiddle equals: 'media-middle';
		assert: Willow classes >> #bootstrap >> #mediaList equals: 'media-list';
		assert: Willow classes >> #bootstrap >> #mediaObject equals: 'media-object'
]

{ #category : #tests }
BootstrapCssStylesTest >> testModal [

	self
		assert: Willow classes >> #bootstrap >> #modal equals: 'modal';
		assert: Willow classes >> #bootstrap >> #modalBackdrop equals: 'modal-backdrop';
		assert: Willow classes >> #bootstrap >> #modalBody equals: 'modal-body';
		assert: Willow classes >> #bootstrap >> #modalContent equals: 'modal-content';
		assert: Willow classes >> #bootstrap >> #modalDialog equals: 'modal-dialog';
		assert: Willow classes >> #bootstrap >> #modalFooter equals: 'modal-footer';
		assert: Willow classes >> #bootstrap >> #modalHeader equals: 'modal-header';
		assert: Willow classes >> #bootstrap >> #modalLarge equals: 'modal-lg';
		assert: Willow classes >> #bootstrap >> #modalOpen equals: 'modal-open';
		assert: Willow classes >> #bootstrap >> #modalSmall equals: 'modal-sm';
		assert: Willow classes >> #bootstrap >> #modalTitle equals: 'modal-title'
]

{ #category : #tests }
BootstrapCssStylesTest >> testNavigation [

	self
		assert: Willow classes >> #bootstrap >> #breadcrumb equals: 'breadcrumb';
		assert: Willow classes >> #bootstrap >> #iconBar equals: 'icon-bar';
		assert: Willow classes >> #bootstrap >> #nav equals: 'nav';
		assert: Willow classes >> #bootstrap >> #navJustified equals: 'nav-justified';
		assert: Willow classes >> #bootstrap >> #navPills equals: 'nav-pills';
		assert: Willow classes >> #bootstrap >> #navStacked equals: 'nav-stacked';
		assert: Willow classes >> #bootstrap >> #navTabs equals: 'nav-tabs';
		assert: Willow classes >> #bootstrap >> #navbar equals: 'navbar';
		assert: Willow classes >> #bootstrap >> #navbarBrand equals: 'navbar-brand';
		assert: Willow classes >> #bootstrap >> #navbarButton equals: 'navbar-btn';
		assert: Willow classes >> #bootstrap >> #navbarCollapse equals: 'navbar-collapse';
		assert: Willow classes >> #bootstrap >> #navbarDefault equals: 'navbar-default';
		assert: Willow classes >> #bootstrap >> #navbarFixedBottom equals: 'navbar-fixed-bottom';
		assert: Willow classes >> #bootstrap >> #navbarFixedTop equals: 'navbar-fixed-top';
		assert: Willow classes >> #bootstrap >> #navbarForm equals: 'navbar-form';
		assert: Willow classes >> #bootstrap >> #navbarHeader equals: 'navbar-header';
		assert: Willow classes >> #bootstrap >> #navbarInverse equals: 'navbar-inverse';
		assert: Willow classes >> #bootstrap >> #navbarLeft equals: 'navbar-left';
		assert: Willow classes >> #bootstrap >> #navbarRight equals: 'navbar-right';
		assert: Willow classes >> #bootstrap >> #navbarLink equals: 'navbar-link';
		assert: Willow classes >> #bootstrap >> #navbarStaticTop equals: 'navbar-static-top';
		assert: Willow classes >> #bootstrap >> #navbarText equals: 'navbar-text';
		assert: Willow classes >> #bootstrap >> #navbarToggle equals: 'navbar-toggle'
]

{ #category : #tests }
BootstrapCssStylesTest >> testPagination [

	self
		assert: Willow classes >> #bootstrap >> #next equals: 'next';
		assert: Willow classes >> #bootstrap >> #previous equals: 'previous';
		assert: Willow classes >> #bootstrap >> #pager equals: 'pager';
		assert: Willow classes >> #bootstrap >> #pagination equals: 'pagination';
		assert: Willow classes >> #bootstrap >> #paginationLarge equals: 'pagination-lg';
		assert: Willow classes >> #bootstrap >> #paginationSmall equals: 'pagination-sm'
]

{ #category : #tests }
BootstrapCssStylesTest >> testPanels [

	self
		assert: Willow classes >> #bootstrap >> #panel equals: 'panel';
		assert: Willow classes >> #bootstrap >> #panelBody equals: 'panel-body';
		assert: Willow classes >> #bootstrap >> #panelCollapse equals: 'panel-collapse';
		assert: Willow classes >> #bootstrap >> #panelDanger equals: 'panel-danger';
		assert: Willow classes >> #bootstrap >> #panelDefault equals: 'panel-default';
		assert: Willow classes >> #bootstrap >> #panelFooter equals: 'panel-footer';
		assert: Willow classes >> #bootstrap >> #panelGroup equals: 'panel-group';
		assert: Willow classes >> #bootstrap >> #panelHeading equals: 'panel-heading';
		assert: Willow classes >> #bootstrap >> #panelInfo equals: 'panel-info';
		assert: Willow classes >> #bootstrap >> #panelPrimary equals: 'panel-primary';
		assert: Willow classes >> #bootstrap >> #panelSuccess equals: 'panel-success';
		assert: Willow classes >> #bootstrap >> #panelTitle equals: 'panel-title';
		assert: Willow classes >> #bootstrap >> #panelWarning equals: 'panel-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testProgressBars [

	self
		assert: Willow classes >> #bootstrap >> #progress equals: 'progress';
		assert: Willow classes >> #bootstrap >> #progressBar equals: 'progress-bar';
		assert: Willow classes >> #bootstrap >> #progressBarDanger equals: 'progress-bar-danger';
		assert: Willow classes >> #bootstrap >> #progressBarInfo equals: 'progress-bar-info';
		assert: Willow classes >> #bootstrap >> #progressBarStriped equals: 'progress-bar-striped';
		assert: Willow classes >> #bootstrap >> #progressBarSuccess equals: 'progress-bar-success';
		assert: Willow classes >> #bootstrap >> #progressBarWarning equals: 'progress-bar-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testResponsiveUtilities [

	self
		assert: Willow classes >> #bootstrap >> #hiddenExtraSmall equals: 'hidden-xs';
		assert: Willow classes >> #bootstrap >> #hiddenSmall equals: 'hidden-sm';
		assert: Willow classes >> #bootstrap >> #hiddenMedium equals: 'hidden-md';
		assert: Willow classes >> #bootstrap >> #hiddenLarge equals: 'hidden-lg';
		assert: Willow classes >> #bootstrap >> #hiddenPrint equals: 'hidden-print'.

	self
		assert: Willow classes >> #bootstrap >> #visibleExtraSmallBlock equals: 'visible-xs-block';
		assert: Willow classes >> #bootstrap >> #visibleSmallBlock equals: 'visible-sm-block';
		assert: Willow classes >> #bootstrap >> #visibleMediumBlock equals: 'visible-md-block';
		assert: Willow classes >> #bootstrap >> #visibleLargeBlock equals: 'visible-lg-block';
		assert: Willow classes >> #bootstrap >> #visiblePrintBlock equals: 'visible-print-block'.

	self
		assert: Willow classes >> #bootstrap >> #visibleExtraSmallInline equals: 'visible-xs-inline';
		assert: Willow classes >> #bootstrap >> #visibleSmallInline equals: 'visible-sm-inline';
		assert: Willow classes >> #bootstrap >> #visibleMediumInline equals: 'visible-md-inline';
		assert: Willow classes >> #bootstrap >> #visibleLargeInline equals: 'visible-lg-inline';
		assert: Willow classes >> #bootstrap >> #visiblePrintInline equals: 'visible-print-inline'.

	self
		assert: Willow classes >> #bootstrap >> #visibleExtraSmallInlineBlock equals: 'visible-xs-inline-block';
		assert: Willow classes >> #bootstrap >> #visibleSmallInlineBlock equals: 'visible-sm-inline-block';
		assert: Willow classes >> #bootstrap >> #visibleMediumInlineBlock equals: 'visible-md-inline-block';
		assert: Willow classes >> #bootstrap >> #visibleLargeInlineBlock equals: 'visible-lg-inline-block';
		assert: Willow classes >> #bootstrap >> #visiblePrintInlineBlock equals: 'visible-print-inline-block'
]

{ #category : #tests }
BootstrapCssStylesTest >> testTables [

	self
		assert: Willow classes >> #bootstrap >> #table equals: 'table';
		assert: Willow classes >> #bootstrap >> #tableBordered equals: 'table-bordered';
		assert: Willow classes >> #bootstrap >> #tableCondensed equals: 'table-condensed';
		assert: Willow classes >> #bootstrap >> #tableHover equals: 'table-hover';
		assert: Willow classes >> #bootstrap >> #tableResponsive equals: 'table-responsive';
		assert: Willow classes >> #bootstrap >> #tableStriped equals: 'table-striped'.


	self
		assert: Willow classes >> #bootstrap >> #tableDanger equals: 'danger';
		assert: Willow classes >> #bootstrap >> #tableInfo equals: 'info';
		assert: Willow classes >> #bootstrap >> #tableSuccess equals: 'success';
		assert: Willow classes >> #bootstrap >> #tableWarning equals: 'warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testTypography [

	self
		assert: Willow classes >> #bootstrap >> #blockquoteReverse equals: 'blockquote-reverse';
		assert: Willow classes >> #bootstrap >> #definitionListHorizontal equals: 'dl-horizontal';
		assert: Willow classes >> #bootstrap >> #initialism equals: 'initialism';
		assert: Willow classes >> #bootstrap >> #lead equals: 'lead';
		assert: Willow classes >> #bootstrap >> #listInline equals: 'list-inline';
		assert: Willow classes >> #bootstrap >> #listUnstyled equals: 'list-unstyled';
		assert: Willow classes >> #bootstrap >> #small equals: 'small'.

	self
		assert: Willow classes >> #bootstrap >> #textCapitalize equals: 'text-capitalize';
		assert: Willow classes >> #bootstrap >> #textCenter equals: 'text-center';
		assert: Willow classes >> #bootstrap >> #textJustify equals: 'text-justify';
		assert: Willow classes >> #bootstrap >> #textLeft equals: 'text-left';
		assert: Willow classes >> #bootstrap >> #textLowercase equals: 'text-lowercase';
		assert: Willow classes >> #bootstrap >> #textNowrap equals: 'text-nowrap';
		assert: Willow classes >> #bootstrap >> #textRight equals: 'text-right';
		assert: Willow classes >> #bootstrap >> #textUppercase equals: 'text-uppercase'
]

{ #category : #tests }
BootstrapCssStylesTest >> testWells [

	self
		assert: Willow classes >> #bootstrap >> #well equals: 'well';
		assert: Willow classes >> #bootstrap >> #wellLarge equals: 'well-lg';
		assert: Willow classes >> #bootstrap >> #wellSmall equals: 'well-sm'
]
