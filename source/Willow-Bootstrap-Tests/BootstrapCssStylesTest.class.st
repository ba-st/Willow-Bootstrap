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
		assert: BootstrapCssStyles alert equals: 'alert';
		assert: BootstrapCssStyles alertDanger equals: 'alert-danger';
		assert: BootstrapCssStyles alertDismissible equals: 'alert-dismissible';
		assert: BootstrapCssStyles alertInfo equals: 'alert-info';
		assert: BootstrapCssStyles alertLink equals: 'alert-link';
		assert: BootstrapCssStyles alertSuccess equals: 'alert-success';
		assert: BootstrapCssStyles alertWarning equals: 'alert-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testButtons [

	self
		assert: BootstrapCssStyles active equals: 'active';
		assert: BootstrapCssStyles button equals: 'btn';
		"Styles"
		assert: BootstrapCssStyles buttonDanger equals: 'btn-danger';
		assert: BootstrapCssStyles buttonDefault equals: 'btn-default';
		assert: BootstrapCssStyles buttonInfo equals: 'btn-info';
		assert: BootstrapCssStyles buttonLink equals: 'btn-link';
		assert: BootstrapCssStyles buttonPrimary equals: 'btn-primary';
		assert: BootstrapCssStyles buttonSuccess equals: 'btn-success';
		assert: BootstrapCssStyles buttonWarning equals: 'btn-warning';
		"Sizes"
		assert: BootstrapCssStyles buttonExtraSmall equals: 'btn-xs';
		assert: BootstrapCssStyles buttonSmall equals: 'btn-sm';
		assert: BootstrapCssStyles buttonLarge equals: 'btn-lg';
		"Groups"
		assert: BootstrapCssStyles buttonGroup equals: 'btn-group';
		assert: BootstrapCssStyles buttonGroupExtraSmall equals: 'btn-group-xs';
		assert: BootstrapCssStyles buttonGroupJustified equals: 'btn-group-justified';
		assert: BootstrapCssStyles buttonGroupLarge equals: 'btn-group-lg';
		assert: BootstrapCssStyles buttonGroupSmall equals: 'btn-group-sm';
		assert: BootstrapCssStyles buttonGroupVertical equals: 'btn-group-vertical';
		assert: BootstrapCssStyles buttonBlock equals: 'btn-block';
		assert: BootstrapCssStyles buttonToolbar equals: 'btn-toolbar'
]

{ #category : #tests }
BootstrapCssStylesTest >> testCode [

	self assert: BootstrapCssStyles preScrollable equals: 'pre-scrollable'
]

{ #category : #tests }
BootstrapCssStylesTest >> testCollapse [

	self
		assert: BootstrapCssStyles collapse equals: 'collapse';
		assert: BootstrapCssStyles collapsing equals: 'collapsing';
		assert: BootstrapCssStyles in equals: 'in';
		assert: BootstrapCssStyles collapsed equals: 'collapsed'
]

{ #category : #tests }
BootstrapCssStylesTest >> testContainers [

	self
		assert: BootstrapCssStyles container equals: 'container';
		assert: BootstrapCssStyles containerFluid equals: 'container-fluid';
		assert: BootstrapCssStyles jumbotron equals: 'jumbotron';
		assert: BootstrapCssStyles pageHeader equals: 'page-header';
		assert: BootstrapCssStyles thumbnail equals: 'thumbnail'
]

{ #category : #tests }
BootstrapCssStylesTest >> testDropdowns [

	self
		assert: BootstrapCssStyles divider equals: 'divider';
		assert: BootstrapCssStyles dropdown equals: 'dropdown';
		assert: BootstrapCssStyles dropdownBackdrop equals: 'dropdown-backdrop';
		assert: BootstrapCssStyles dropdownHeader equals: 'dropdown-header';
		assert: BootstrapCssStyles dropdownMenu equals: 'dropdown-menu';
		assert: BootstrapCssStyles dropdownMenuLeft equals: 'dropdown-menu-left';
		assert: BootstrapCssStyles dropdownMenuRight equals: 'dropdown-menu-right';
		assert: BootstrapCssStyles dropdownToggle equals: 'dropdown-toggle';
		assert: BootstrapCssStyles dropup equals: 'dropup';
		assert: BootstrapCssStyles open equals: 'open'
]

{ #category : #tests }
BootstrapCssStylesTest >> testForms [

	self
		assert: BootstrapCssStyles checkbox equals: 'checkbox';
		assert: BootstrapCssStyles checkboxInline equals: 'checkbox-inline';
		assert: BootstrapCssStyles disabled equals: 'disabled';
		assert: BootstrapCssStyles formControl equals: 'form-control';
		assert: BootstrapCssStyles formControlStatic equals: 'form-control-static';
		assert: BootstrapCssStyles formGroup equals: 'form-group';
		assert: BootstrapCssStyles formGroupLarge equals: 'form-group-lg';
		assert: BootstrapCssStyles formGroupSmall equals: 'form-group-sm';
		assert: BootstrapCssStyles formHorizontal equals: 'form-horizontal';
		assert: BootstrapCssStyles formInline equals: 'form-inline';
		assert: BootstrapCssStyles helpBlock equals: 'help-block';
		assert: BootstrapCssStyles inputLarge equals: 'input-lg';
		assert: BootstrapCssStyles inputSmall equals: 'input-sm';
		assert: BootstrapCssStyles radio equals: 'radio';
		assert: BootstrapCssStyles radioInline equals: 'radio-inline'.

	self
		assert: BootstrapCssStyles hasError equals: 'has-error';
		assert: BootstrapCssStyles hasFeedback equals: 'has-feedback';
		assert: BootstrapCssStyles hasWarning equals: 'has-warning';
		assert: BootstrapCssStyles hasSuccess equals: 'has-success'
]

{ #category : #tests }
BootstrapCssStylesTest >> testGridSystem [

	self
		assert: BootstrapCssStyles row equals: 'row';
		assert: (BootstrapCssStyles columnExtraSmall: 6) equals: 'col-xs-6';
		assert: (BootstrapCssStyles columnSmall: 6) equals: 'col-sm-6';
		assert: (BootstrapCssStyles columnMedium: 6) equals: 'col-md-6';
		assert: (BootstrapCssStyles columnLarge: 6) equals: 'col-lg-6'.

	self
		assert: (BootstrapCssStyles columnExtraSmallOffset: 6) equals: 'col-xs-offset-6';
		assert: (BootstrapCssStyles columnSmallOffset: 6) equals: 'col-sm-offset-6';
		assert: (BootstrapCssStyles columnMediumOffset: 6) equals: 'col-md-offset-6';
		assert: (BootstrapCssStyles columnLargeOffset: 6) equals: 'col-lg-offset-6'.

	self
		assert: (BootstrapCssStyles columnExtraSmallPull: 2) equals: 'col-xs-pull-2';
		assert: (BootstrapCssStyles columnSmallPull: 2) equals: 'col-sm-pull-2';
		assert: (BootstrapCssStyles columnMediumPull: 2) equals: 'col-md-pull-2';
		assert: (BootstrapCssStyles columnLargePull: 2) equals: 'col-lg-pull-2'.

	self
		assert: (BootstrapCssStyles columnExtraSmallPush: 2) equals: 'col-xs-push-2';
		assert: (BootstrapCssStyles columnSmallPush: 2) equals: 'col-sm-push-2';
		assert: (BootstrapCssStyles columnMediumPush: 2) equals: 'col-md-push-2';
		assert: (BootstrapCssStyles columnLargePush: 2) equals: 'col-lg-push-2'
]

{ #category : #tests }
BootstrapCssStylesTest >> testHelperClasses [

	self
		assert: BootstrapCssStyles backgroundDanger equals: 'bg-danger';
		assert: BootstrapCssStyles backgroundInfo equals: 'bg-info';
		assert: BootstrapCssStyles backgroundPrimary equals: 'bg-primary';
		assert: BootstrapCssStyles backgroundSuccess equals: 'bg-success';
		assert: BootstrapCssStyles backgroundWarning equals: 'bg-warning'.

	self
		assert: BootstrapCssStyles caret equals: 'caret';
		assert: BootstrapCssStyles centerBlock equals: 'center-block';
		assert: BootstrapCssStyles clearfix equals: 'clearfix';
		assert: BootstrapCssStyles close equals: 'close';
		assert: BootstrapCssStyles hidden equals: 'hidden';
		assert: BootstrapCssStyles invisible equals: 'invisible';
		assert: BootstrapCssStyles pullLeft equals: 'pull-left';
		assert: BootstrapCssStyles pullRight equals: 'pull-right';
		assert: BootstrapCssStyles show equals: 'show'.

	self
		assert: BootstrapCssStyles screenReaderOnly equals: 'sr-only';
		assert: BootstrapCssStyles screenReaderOnlyFocusable equals: 'sr-only-focusable'.

	self
		assert: BootstrapCssStyles textDanger equals: 'text-danger';
		assert: BootstrapCssStyles textHide equals: 'text-hide';
		assert: BootstrapCssStyles textInfo equals: 'text-info';
		assert: BootstrapCssStyles textMuted equals: 'text-muted';
		assert: BootstrapCssStyles textPrimary equals: 'text-primary';
		assert: BootstrapCssStyles textSuccess equals: 'text-success';
		assert: BootstrapCssStyles textWarning equals: 'text-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testImages [

	self
		assert: BootstrapCssStyles glyphicon equals: 'glyphicon';
		assert: BootstrapCssStyles imageCircle equals: 'img-circle';
		assert: BootstrapCssStyles imageResponsive equals: 'img-responsive';
		assert: BootstrapCssStyles imageRounded equals: 'img-rounded';
		assert: BootstrapCssStyles imageThumbnail equals: 'img-thumbnail'
]

{ #category : #tests }
BootstrapCssStylesTest >> testInputGroups [

	self
		assert: BootstrapCssStyles inputGroup equals: 'input-group';
		assert: BootstrapCssStyles inputGroupAddon equals: 'input-group-addon';
		assert: BootstrapCssStyles inputGroupButton equals: 'input-group-btn';
		assert: BootstrapCssStyles inputGroupLarge equals: 'input-group-lg';
		assert: BootstrapCssStyles inputGroupSmall equals: 'input-group-sm'
]

{ #category : #tests }
BootstrapCssStylesTest >> testLabels [

	self
		assert: BootstrapCssStyles badge equals: 'badge';
		assert: BootstrapCssStyles label equals: 'label';
		assert: BootstrapCssStyles labelDanger equals: 'label-danger';
		assert: BootstrapCssStyles labelDefault equals: 'label-default';
		assert: BootstrapCssStyles labelInfo equals: 'label-info';
		assert: BootstrapCssStyles labelPrimary equals: 'label-primary';
		assert: BootstrapCssStyles labelSuccess equals: 'label-success';
		assert: BootstrapCssStyles labelWarning equals: 'label-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testListGroups [

	self
		assert: BootstrapCssStyles listGroup equals: 'list-group';
		assert: BootstrapCssStyles listGroupItem equals: 'list-group-item';
		assert: BootstrapCssStyles listGroupItemDanger equals: 'list-group-item-danger';
		assert: BootstrapCssStyles listGroupItemHeading equals: 'list-group-item-heading';
		assert: BootstrapCssStyles listGroupItemInfo equals: 'list-group-item-info';
		assert: BootstrapCssStyles listGroupItemSuccess equals: 'list-group-item-success';
		assert: BootstrapCssStyles listGroupItemText equals: 'list-group-item-text';
		assert: BootstrapCssStyles listGroupItemWarning equals: 'list-group-item-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testMediaObjects [

	self
		assert: BootstrapCssStyles media equals: 'media';
		assert: BootstrapCssStyles mediaBody equals: 'media-body';
		assert: BootstrapCssStyles mediaHeading equals: 'media-heading';
		assert: BootstrapCssStyles mediaLeft equals: 'media-left';
		assert: BootstrapCssStyles mediaRight equals: 'media-right';
		assert: BootstrapCssStyles mediaMiddle equals: 'media-middle';
		assert: BootstrapCssStyles mediaList equals: 'media-list';
		assert: BootstrapCssStyles mediaObject equals: 'media-object'
]

{ #category : #tests }
BootstrapCssStylesTest >> testModal [

	self
		assert: BootstrapCssStyles modal equals: 'modal';
		assert: BootstrapCssStyles modalBackdrop equals: 'modal-backdrop';
		assert: BootstrapCssStyles modalBody equals: 'modal-body';
		assert: BootstrapCssStyles modalContent equals: 'modal-content';
		assert: BootstrapCssStyles modalDialog equals: 'modal-dialog';
		assert: BootstrapCssStyles modalFooter equals: 'modal-footer';
		assert: BootstrapCssStyles modalHeader equals: 'modal-header';
		assert: BootstrapCssStyles modalLarge equals: 'modal-lg';
		assert: BootstrapCssStyles modalOpen equals: 'modal-open';
		assert: BootstrapCssStyles modalSmall equals: 'modal-sm';
		assert: BootstrapCssStyles modalTitle equals: 'modal-title'
]

{ #category : #tests }
BootstrapCssStylesTest >> testNavigation [

	self
		assert: BootstrapCssStyles breadcrumb equals: 'breadcrumb';
		assert: BootstrapCssStyles iconBar equals: 'icon-bar';
		assert: BootstrapCssStyles nav equals: 'nav';
		assert: BootstrapCssStyles navJustified equals: 'nav-justified';
		assert: BootstrapCssStyles navPills equals: 'nav-pills';
		assert: BootstrapCssStyles navStacked equals: 'nav-stacked';
		assert: BootstrapCssStyles navTabs equals: 'nav-tabs';
		assert: BootstrapCssStyles navbar equals: 'navbar';
		assert: BootstrapCssStyles navbarBrand equals: 'navbar-brand';
		assert: BootstrapCssStyles navbarButton equals: 'navbar-btn';
		assert: BootstrapCssStyles navbarCollapse equals: 'navbar-collapse';
		assert: BootstrapCssStyles navbarDefault equals: 'navbar-default';
		assert: BootstrapCssStyles navbarFixedBottom equals: 'navbar-fixed-bottom';
		assert: BootstrapCssStyles navbarFixedTop equals: 'navbar-fixed-top';
		assert: BootstrapCssStyles navbarForm equals: 'navbar-form';
		assert: BootstrapCssStyles navbarHeader equals: 'navbar-header';
		assert: BootstrapCssStyles navbarInverse equals: 'navbar-inverse';
		assert: BootstrapCssStyles navbarLeft equals: 'navbar-left';
		assert: BootstrapCssStyles navbarRight equals: 'navbar-right';
		assert: BootstrapCssStyles navbarLink equals: 'navbar-link';
		assert: BootstrapCssStyles navbarStaticTop equals: 'navbar-static-top';
		assert: BootstrapCssStyles navbarText equals: 'navbar-text';
		assert: BootstrapCssStyles navbarToggle equals: 'navbar-toggle'
]

{ #category : #tests }
BootstrapCssStylesTest >> testPagination [

	self
		assert: BootstrapCssStyles next equals: 'next';
		assert: BootstrapCssStyles previous equals: 'previous';
		assert: BootstrapCssStyles pager equals: 'pager';
		assert: BootstrapCssStyles pagination equals: 'pagination';
		assert: BootstrapCssStyles paginationLarge equals: 'pagination-lg';
		assert: BootstrapCssStyles paginationSmall equals: 'pagination-sm'
]

{ #category : #tests }
BootstrapCssStylesTest >> testPanels [

	self
		assert: BootstrapCssStyles panel equals: 'panel';
		assert: BootstrapCssStyles panelBody equals: 'panel-body';
		assert: BootstrapCssStyles panelCollapse equals: 'panel-collapse';
		assert: BootstrapCssStyles panelDanger equals: 'panel-danger';
		assert: BootstrapCssStyles panelDefault equals: 'panel-default';
		assert: BootstrapCssStyles panelFooter equals: 'panel-footer';
		assert: BootstrapCssStyles panelGroup equals: 'panel-group';
		assert: BootstrapCssStyles panelHeading equals: 'panel-heading';
		assert: BootstrapCssStyles panelInfo equals: 'panel-info';
		assert: BootstrapCssStyles panelPrimary equals: 'panel-primary';
		assert: BootstrapCssStyles panelSuccess equals: 'panel-success';
		assert: BootstrapCssStyles panelTitle equals: 'panel-title';
		assert: BootstrapCssStyles panelWarning equals: 'panel-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testProgressBars [

	self
		assert: BootstrapCssStyles progress equals: 'progress';
		assert: BootstrapCssStyles progressBar equals: 'progress-bar';
		assert: BootstrapCssStyles progressBarDanger equals: 'progress-bar-danger';
		assert: BootstrapCssStyles progressBarInfo equals: 'progress-bar-info';
		assert: BootstrapCssStyles progressBarStriped equals: 'progress-bar-striped';
		assert: BootstrapCssStyles progressBarSuccess equals: 'progress-bar-success';
		assert: BootstrapCssStyles progressBarWarning equals: 'progress-bar-warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testResponsiveUtilities [

	self
		assert: BootstrapCssStyles hiddenExtraSmall equals: 'hidden-xs';
		assert: BootstrapCssStyles hiddenSmall equals: 'hidden-sm';
		assert: BootstrapCssStyles hiddenMedium equals: 'hidden-md';
		assert: BootstrapCssStyles hiddenLarge equals: 'hidden-lg';
		assert: BootstrapCssStyles hiddenPrint equals: 'hidden-print'.

	self
		assert: BootstrapCssStyles visibleExtraSmallBlock equals: 'visible-xs-block';
		assert: BootstrapCssStyles visibleSmallBlock equals: 'visible-sm-block';
		assert: BootstrapCssStyles visibleMediumBlock equals: 'visible-md-block';
		assert: BootstrapCssStyles visibleLargeBlock equals: 'visible-lg-block';
		assert: BootstrapCssStyles visiblePrintBlock equals: 'visible-print-block'.

	self
		assert: BootstrapCssStyles visibleExtraSmallInline equals: 'visible-xs-inline';
		assert: BootstrapCssStyles visibleSmallInline equals: 'visible-sm-inline';
		assert: BootstrapCssStyles visibleMediumInline equals: 'visible-md-inline';
		assert: BootstrapCssStyles visibleLargeInline equals: 'visible-lg-inline';
		assert: BootstrapCssStyles visiblePrintInline equals: 'visible-print-inline'.

	self
		assert: BootstrapCssStyles visibleExtraSmallInlineBlock equals: 'visible-xs-inline-block';
		assert: BootstrapCssStyles visibleSmallInlineBlock equals: 'visible-sm-inline-block';
		assert: BootstrapCssStyles visibleMediumInlineBlock equals: 'visible-md-inline-block';
		assert: BootstrapCssStyles visibleLargeInlineBlock equals: 'visible-lg-inline-block';
		assert: BootstrapCssStyles visiblePrintInlineBlock equals: 'visible-print-inline-block'
]

{ #category : #tests }
BootstrapCssStylesTest >> testTables [

	self
		assert: BootstrapCssStyles table equals: 'table';
		assert: BootstrapCssStyles tableBordered equals: 'table-bordered';
		assert: BootstrapCssStyles tableCondensed equals: 'table-condensed';
		assert: BootstrapCssStyles tableHover equals: 'table-hover';
		assert: BootstrapCssStyles tableResponsive equals: 'table-responsive';
		assert: BootstrapCssStyles tableStriped equals: 'table-striped'.


	self
		assert: BootstrapCssStyles tableDanger equals: 'danger';
		assert: BootstrapCssStyles tableInfo equals: 'info';
		assert: BootstrapCssStyles tableSuccess equals: 'success';
		assert: BootstrapCssStyles tableWarning equals: 'warning'
]

{ #category : #tests }
BootstrapCssStylesTest >> testTypography [

	self
		assert: BootstrapCssStyles blockquoteReverse equals: 'blockquote-reverse';
		assert: BootstrapCssStyles definitionListHorizontal equals: 'dl-horizontal';
		assert: BootstrapCssStyles initialism equals: 'initialism';
		assert: BootstrapCssStyles lead equals: 'lead';
		assert: BootstrapCssStyles listInline equals: 'list-inline';
		assert: BootstrapCssStyles listUnstyled equals: 'list-unstyled';
		assert: BootstrapCssStyles small equals: 'small'.

	self
		assert: BootstrapCssStyles textCapitalize equals: 'text-capitalize';
		assert: BootstrapCssStyles textCenter equals: 'text-center';
		assert: BootstrapCssStyles textJustify equals: 'text-justify';
		assert: BootstrapCssStyles textLeft equals: 'text-left';
		assert: BootstrapCssStyles textLowercase equals: 'text-lowercase';
		assert: BootstrapCssStyles textNowrap equals: 'text-nowrap';
		assert: BootstrapCssStyles textRight equals: 'text-right';
		assert: BootstrapCssStyles textUppercase equals: 'text-uppercase'
]

{ #category : #tests }
BootstrapCssStylesTest >> testWells [

	self
		assert: BootstrapCssStyles well equals: 'well';
		assert: BootstrapCssStyles wellLarge equals: 'well-lg';
		assert: BootstrapCssStyles wellSmall equals: 'well-sm'
]
