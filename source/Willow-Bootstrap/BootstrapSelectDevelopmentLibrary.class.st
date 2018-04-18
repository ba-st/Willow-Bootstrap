"
I'm a WALibary serving the files in source form, suitable for development
"
Class {
	#name : #BootstrapSelectDevelopmentLibrary,
	#superclass : #BootstrapSelectLibrary,
	#category : 'Willow-Bootstrap-Select'
}

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> cssbootstrapselectCss [
	^ WAFileLibraryResource
		filepath: 'css/bootstrap-select.css'
		mimeType: (WAMimeType main: 'text' sub: 'css')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapselectCssContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> cssbootstrapselectCssContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

select.bs-select-hidden,
select.selectpicker {
  display: none !important;
}
.bootstrap-select {
  width: 220px \0;
  /*IE9 and below*/
}
.bootstrap-select > .dropdown-toggle {
  width: 100%;
  padding-right: 25px;
  z-index: 1;
}
.bootstrap-select > .dropdown-toggle.bs-placeholder,
.bootstrap-select > .dropdown-toggle.bs-placeholder:hover,
.bootstrap-select > .dropdown-toggle.bs-placeholder:focus,
.bootstrap-select > .dropdown-toggle.bs-placeholder:active {
  color: #999;
}
.bootstrap-select > select {
  position: absolute !important;
  bottom: 0;
  left: 50%;
  display: block !important;
  width: 0.5px !important;
  height: 100% !important;
  padding: 0 !important;
  opacity: 0 !important;
  border: none;
}
.bootstrap-select > select.mobile-device {
  top: 0;
  left: 0;
  display: block !important;
  width: 100% !important;
  z-index: 2;
}
.has-error .bootstrap-select .dropdown-toggle,
.error .bootstrap-select .dropdown-toggle {
  border-color: #b94a48;
}
.bootstrap-select.fit-width {
  width: auto !important;
}
.bootstrap-select:not([class*="col-"]):not([class*="form-control"]):not(.input-group-btn) {
  width: 220px;
}
.bootstrap-select .dropdown-toggle:focus {
  outline: thin dotted #333333 !important;
  outline: 5px auto -webkit-focus-ring-color !important;
  outline-offset: -2px;
}
.bootstrap-select.form-control {
  margin-bottom: 0;
  padding: 0;
  border: none;
}
.bootstrap-select.form-control:not([class*="col-"]) {
  width: 100%;
}
.bootstrap-select.form-control.input-group-btn {
  z-index: auto;
}
.bootstrap-select.form-control.input-group-btn:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.bootstrap-select.btn-group:not(.input-group-btn),
.bootstrap-select.btn-group[class*="col-"] {
  float: none;
  display: inline-block;
  margin-left: 0;
}
.bootstrap-select.btn-group.dropdown-menu-right,
.bootstrap-select.btn-group[class*="col-"].dropdown-menu-right,
.row .bootstrap-select.btn-group[class*="col-"].dropdown-menu-right {
  float: right;
}
.form-inline .bootstrap-select.btn-group,
.form-horizontal .bootstrap-select.btn-group,
.form-group .bootstrap-select.btn-group {
  margin-bottom: 0;
}
.form-group-lg .bootstrap-select.btn-group.form-control,
.form-group-sm .bootstrap-select.btn-group.form-control {
  padding: 0;
}
.form-group-lg .bootstrap-select.btn-group.form-control .dropdown-toggle,
.form-group-sm .bootstrap-select.btn-group.form-control .dropdown-toggle {
  height: 100%;
  font-size: inherit;
  line-height: inherit;
  border-radius: inherit;
}
.form-inline .bootstrap-select.btn-group .form-control {
  width: 100%;
}
.bootstrap-select.btn-group.disabled,
.bootstrap-select.btn-group > .disabled {
  cursor: not-allowed;
}
.bootstrap-select.btn-group.disabled:focus,
.bootstrap-select.btn-group > .disabled:focus {
  outline: none !important;
}
.bootstrap-select.btn-group.bs-container {
  position: absolute;
  height: 0 !important;
  padding: 0 !important;
}
.bootstrap-select.btn-group.bs-container .dropdown-menu {
  z-index: 1060;
}
.bootstrap-select.btn-group .dropdown-toggle .filter-option {
  display: inline-block;
  overflow: hidden;
  width: 100%;
  text-align: left;
}
.bootstrap-select.btn-group .dropdown-toggle .caret {
  position: absolute;
  top: 50%;
  right: 12px;
  margin-top: -2px;
  vertical-align: middle;
}
.bootstrap-select.btn-group[class*="col-"] .dropdown-toggle {
  width: 100%;
}
.bootstrap-select.btn-group .dropdown-menu {
  min-width: 100%;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
.bootstrap-select.btn-group .dropdown-menu.inner {
  position: static;
  float: none;
  border: 0;
  padding: 0;
  margin: 0;
  border-radius: 0;
  -webkit-box-shadow: none;
          box-shadow: none;
}
.bootstrap-select.btn-group .dropdown-menu li {
  position: relative;
}
.bootstrap-select.btn-group .dropdown-menu li.active small {
  color: #fff;
}
.bootstrap-select.btn-group .dropdown-menu li.disabled a {
  cursor: not-allowed;
}
.bootstrap-select.btn-group .dropdown-menu li a {
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.bootstrap-select.btn-group .dropdown-menu li a.opt {
  position: relative;
  padding-left: 2.25em;
}
.bootstrap-select.btn-group .dropdown-menu li a span.check-mark {
  display: none;
}
.bootstrap-select.btn-group .dropdown-menu li a span.text {
  display: inline-block;
}
.bootstrap-select.btn-group .dropdown-menu li small {
  padding-left: 0.5em;
}
.bootstrap-select.btn-group .dropdown-menu .notify {
  position: absolute;
  bottom: 5px;
  width: 96%;
  margin: 0 2%;
  min-height: 26px;
  padding: 3px 5px;
  background: #f5f5f5;
  border: 1px solid #e3e3e3;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
  pointer-events: none;
  opacity: 0.9;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
.bootstrap-select.btn-group .no-results {
  padding: 3px;
  background: #f5f5f5;
  margin: 0 5px;
  white-space: nowrap;
}
.bootstrap-select.btn-group.fit-width .dropdown-toggle .filter-option {
  position: static;
}
.bootstrap-select.btn-group.fit-width .dropdown-toggle .caret {
  position: static;
  top: auto;
  margin-top: -1px;
}
.bootstrap-select.btn-group.show-tick .dropdown-menu li.selected a span.check-mark {
  position: absolute;
  display: inline-block;
  right: 15px;
  margin-top: 5px;
}
.bootstrap-select.btn-group.show-tick .dropdown-menu li a span.text {
  margin-right: 34px;
}
.bootstrap-select.show-menu-arrow.open > .dropdown-toggle {
  z-index: 1061;
}
.bootstrap-select.show-menu-arrow .dropdown-toggle:before {
  content: '''';
  border-left: 7px solid transparent;
  border-right: 7px solid transparent;
  border-bottom: 7px solid rgba(204, 204, 204, 0.2);
  position: absolute;
  bottom: -4px;
  left: 9px;
  display: none;
}
.bootstrap-select.show-menu-arrow .dropdown-toggle:after {
  content: '''';
  border-left: 6px solid transparent;
  border-right: 6px solid transparent;
  border-bottom: 6px solid white;
  position: absolute;
  bottom: -4px;
  left: 10px;
  display: none;
}
.bootstrap-select.show-menu-arrow.dropup .dropdown-toggle:before {
  bottom: auto;
  top: -3px;
  border-top: 7px solid rgba(204, 204, 204, 0.2);
  border-bottom: 0;
}
.bootstrap-select.show-menu-arrow.dropup .dropdown-toggle:after {
  bottom: auto;
  top: -3px;
  border-top: 6px solid white;
  border-bottom: 0;
}
.bootstrap-select.show-menu-arrow.pull-right .dropdown-toggle:before {
  right: 12px;
  left: auto;
}
.bootstrap-select.show-menu-arrow.pull-right .dropdown-toggle:after {
  right: 13px;
  left: auto;
}
.bootstrap-select.show-menu-arrow.open > .dropdown-toggle:before,
.bootstrap-select.show-menu-arrow.open > .dropdown-toggle:after {
  display: block;
}
.bs-searchbox,
.bs-actionsbox,
.bs-donebutton {
  padding: 4px 8px;
}
.bs-actionsbox {
  width: 100%;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
.bs-actionsbox .btn-group button {
  width: 50%;
}
.bs-donebutton {
  float: left;
  width: 100%;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
.bs-donebutton .btn-group button {
  width: 100%;
}
.bs-searchbox + .bs-actionsbox {
  padding: 0 8px 4px;
}
.bs-searchbox .form-control {
  margin-bottom: 0;
  width: 100%;
  float: none;
}
/*# sourceMappingURL=bootstrap-select.css.map */'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsbootstrapselectJs [
	^ WAFileLibraryResource
		filepath: 'js/bootstrap-select.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsbootstrapselectJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsbootstrapselectJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  ''use strict'';

  //<editor-fold desc="Shims">
  if (!String.prototype.includes) {
    (function () {
      ''use strict''; // needed to support `apply`/`call` with `undefined`/`null`
      var toString = {}.toString;
      var defineProperty = (function () {
        // IE 8 only supports `Object.defineProperty` on DOM elements
        try {
          var object = {};
          var $defineProperty = Object.defineProperty;
          var result = $defineProperty(object, object, object) && $defineProperty;
        } catch (error) {
        }
        return result;
      }());
      var indexOf = ''''.indexOf;
      var includes = function (search) {
        if (this == null) {
          throw new TypeError();
        }
        var string = String(this);
        if (search && toString.call(search) == ''[object RegExp]'') {
          throw new TypeError();
        }
        var stringLength = string.length;
        var searchString = String(search);
        var searchLength = searchString.length;
        var position = arguments.length > 1 ? arguments[1] : undefined;
        // `ToInteger`
        var pos = position ? Number(position) : 0;
        if (pos != pos) { // better `isNaN`
          pos = 0;
        }
        var start = Math.min(Math.max(pos, 0), stringLength);
        // Avoid the `indexOf` call if no match is possible
        if (searchLength + start > stringLength) {
          return false;
        }
        return indexOf.call(string, searchString, pos) != -1;
      };
      if (defineProperty) {
        defineProperty(String.prototype, ''includes'', {
          ''value'': includes,
          ''configurable'': true,
          ''writable'': true
        });
      } else {
        String.prototype.includes = includes;
      }
    }());
  }

  if (!String.prototype.startsWith) {
    (function () {
      ''use strict''; // needed to support `apply`/`call` with `undefined`/`null`
      var defineProperty = (function () {
        // IE 8 only supports `Object.defineProperty` on DOM elements
        try {
          var object = {};
          var $defineProperty = Object.defineProperty;
          var result = $defineProperty(object, object, object) && $defineProperty;
        } catch (error) {
        }
        return result;
      }());
      var toString = {}.toString;
      var startsWith = function (search) {
        if (this == null) {
          throw new TypeError();
        }
        var string = String(this);
        if (search && toString.call(search) == ''[object RegExp]'') {
          throw new TypeError();
        }
        var stringLength = string.length;
        var searchString = String(search);
        var searchLength = searchString.length;
        var position = arguments.length > 1 ? arguments[1] : undefined;
        // `ToInteger`
        var pos = position ? Number(position) : 0;
        if (pos != pos) { // better `isNaN`
          pos = 0;
        }
        var start = Math.min(Math.max(pos, 0), stringLength);
        // Avoid the `indexOf` call if no match is possible
        if (searchLength + start > stringLength) {
          return false;
        }
        var index = -1;
        while (++index < searchLength) {
          if (string.charCodeAt(start + index) != searchString.charCodeAt(index)) {
            return false;
          }
        }
        return true;
      };
      if (defineProperty) {
        defineProperty(String.prototype, ''startsWith'', {
          ''value'': startsWith,
          ''configurable'': true,
          ''writable'': true
        });
      } else {
        String.prototype.startsWith = startsWith;
      }
    }());
  }

  if (!Object.keys) {
    Object.keys = function (
      o, // object
      k, // key
      r  // result array
      ){
      // initialize object and result
      r=[];
      // iterate over object keys
      for (k in o)
          // fill result array with non-prototypical keys
        r.hasOwnProperty.call(o, k) && r.push(k);
      // return result
      return r;
    };
  }

  // set data-selected on select element if the value has been programmatically selected
  // prior to initialization of bootstrap-select
  // * consider removing or replacing an alternative method *
  var valHooks = {
    useDefault: false,
    _set: $.valHooks.select.set
  };

  $.valHooks.select.set = function(elem, value) {
    if (value && !valHooks.useDefault) $(elem).data(''selected'', true);

    return valHooks._set.apply(this, arguments);
  };

  var changed_arguments = null;

  var EventIsSupported = (function() {
    try {
      new Event(''change'');
      return true;
    } catch (e) {
      return false;
    }
  })();

  $.fn.triggerNative = function (eventName) {
    var el = this[0],
        event;

    if (el.dispatchEvent) { // for modern browsers & IE9+
      if (EventIsSupported) {
        // For modern browsers
        event = new Event(eventName, {
          bubbles: true
        });
      } else {
        // For IE since it doesn''t support Event constructor
        event = document.createEvent(''Event'');
        event.initEvent(eventName, true, false);
      }

      el.dispatchEvent(event);
    } else if (el.fireEvent) { // for IE8
      event = document.createEventObject();
      event.eventType = eventName;
      el.fireEvent(''on'' + eventName, event);
    } else {
      // fall back to jQuery.trigger
      this.trigger(eventName);
    }
  };
  //</editor-fold>

  // Case insensitive contains search
  $.expr.pseudos.icontains = function (obj, index, meta) {
    var $obj = $(obj).find(''a'');
    var haystack = ($obj.data(''tokens'') || $obj.text()).toString().toUpperCase();
    return haystack.includes(meta[3].toUpperCase());
  };

  // Case insensitive begins search
  $.expr.pseudos.ibegins = function (obj, index, meta) {
    var $obj = $(obj).find(''a'');
    var haystack = ($obj.data(''tokens'') || $obj.text()).toString().toUpperCase();
    return haystack.startsWith(meta[3].toUpperCase());
  };

  // Case and accent insensitive contains search
  $.expr.pseudos.aicontains = function (obj, index, meta) {
    var $obj = $(obj).find(''a'');
    var haystack = ($obj.data(''tokens'') || $obj.data(''normalizedText'') || $obj.text()).toString().toUpperCase();
    return haystack.includes(meta[3].toUpperCase());
  };

  // Case and accent insensitive begins search
  $.expr.pseudos.aibegins = function (obj, index, meta) {
    var $obj = $(obj).find(''a'');
    var haystack = ($obj.data(''tokens'') || $obj.data(''normalizedText'') || $obj.text()).toString().toUpperCase();
    return haystack.startsWith(meta[3].toUpperCase());
  };

  /**
   * Remove all diatrics from the given text.
   * @access private
   * @param {String} text
   * @returns {String}
   */
  function normalizeToBase(text) {
    var rExps = [
      {re: /[\xC0-\xC6]/g, ch: "A"},
      {re: /[\xE0-\xE6]/g, ch: "a"},
      {re: /[\xC8-\xCB]/g, ch: "E"},
      {re: /[\xE8-\xEB]/g, ch: "e"},
      {re: /[\xCC-\xCF]/g, ch: "I"},
      {re: /[\xEC-\xEF]/g, ch: "i"},
      {re: /[\xD2-\xD6]/g, ch: "O"},
      {re: /[\xF2-\xF6]/g, ch: "o"},
      {re: /[\xD9-\xDC]/g, ch: "U"},
      {re: /[\xF9-\xFC]/g, ch: "u"},
      {re: /[\xC7-\xE7]/g, ch: "c"},
      {re: /[\xD1]/g, ch: "N"},
      {re: /[\xF1]/g, ch: "n"}
    ];
    $.each(rExps, function () {
      text = text ? text.replace(this.re, this.ch) : '''';
    });
    return text;
  }


  // List of HTML entities for escaping.
  var escapeMap = {
    ''&'': ''&amp;'',
    ''<'': ''&lt;'',
    ''>'': ''&gt;'',
    ''"'': ''&quot;'',
    "''": ''&#x27;'',
    ''`'': ''&#x60;''
  };
  
  var unescapeMap = {
    ''&amp;'': ''&'',
    ''&lt;'': ''<'',
    ''&gt;'': ''>'',
    ''&quot;'': ''"'',
    ''&#x27;'': "''",
    ''&#x60;'': ''`''
  };

  // Functions for escaping and unescaping strings to/from HTML interpolation.
  var createEscaper = function(map) {
    var escaper = function(match) {
      return map[match];
    };
    // Regexes for identifying a key that needs to be escaped.
    var source = ''(?:'' + Object.keys(map).join(''|'') + '')'';
    var testRegexp = RegExp(source);
    var replaceRegexp = RegExp(source, ''g'');
    return function(string) {
      string = string == null ? '''' : '''' + string;
      return testRegexp.test(string) ? string.replace(replaceRegexp, escaper) : string;
    };
  };

  var htmlEscape = createEscaper(escapeMap);
  var htmlUnescape = createEscaper(unescapeMap);

  var Selectpicker = function (element, options) {
    // bootstrap-select has been initialized - revert valHooks.select.set back to its original function
    if (!valHooks.useDefault) {
      $.valHooks.select.set = valHooks._set;
      valHooks.useDefault = true;
    }

    this.$element = $(element);
    this.$newElement = null;
    this.$button = null;
    this.$menu = null;
    this.$lis = null;
    this.options = options;

    // If we have no title yet, try to pull it from the html title attribute (jQuery doesnt'' pick it up as it''s not a
    // data-attribute)
    if (this.options.title === null) {
      this.options.title = this.$element.attr(''title'');
    }

    // Format window padding
    var winPad = this.options.windowPadding;
    if (typeof winPad === ''number'') {
      this.options.windowPadding = [winPad, winPad, winPad, winPad];
    }

    //Expose public methods
    this.val = Selectpicker.prototype.val;
    this.render = Selectpicker.prototype.render;
    this.refresh = Selectpicker.prototype.refresh;
    this.setStyle = Selectpicker.prototype.setStyle;
    this.selectAll = Selectpicker.prototype.selectAll;
    this.deselectAll = Selectpicker.prototype.deselectAll;
    this.destroy = Selectpicker.prototype.destroy;
    this.remove = Selectpicker.prototype.remove;
    this.show = Selectpicker.prototype.show;
    this.hide = Selectpicker.prototype.hide;

    this.init();
  };

  Selectpicker.VERSION = ''1.12.4'';

  // part of this is duplicated in i18n/defaults-en_US.js. Make sure to update both.
  Selectpicker.DEFAULTS = {
    noneSelectedText: ''Nothing selected'',
    noneResultsText: ''No results matched {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? "{0} item selected" : "{0} items selected";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        (numAll == 1) ? ''Limit reached ({n} item max)'' : ''Limit reached ({n} items max)'',
        (numGroup == 1) ? ''Group limit reached ({n} item max)'' : ''Group limit reached ({n} items max)''
      ];
    },
    selectAllText: ''Select All'',
    deselectAllText: ''Deselect All'',
    doneButton: false,
    doneButtonText: ''Close'',
    multipleSeparator: '', '',
    styleBase: ''btn'',
    style: ''btn-default'',
    size: ''auto'',
    title: null,
    selectedTextFormat: ''values'',
    width: false,
    container: false,
    hideDisabled: false,
    showSubtext: false,
    showIcon: true,
    showContent: true,
    dropupAuto: true,
    header: false,
    liveSearch: false,
    liveSearchPlaceholder: null,
    liveSearchNormalize: false,
    liveSearchStyle: ''contains'',
    actionsBox: false,
    iconBase: ''glyphicon'',
    tickIcon: ''glyphicon-ok'',
    showTick: false,
    template: {
      caret: ''<span class="caret"></span>''
    },
    maxOptions: false,
    mobile: false,
    selectOnTab: false,
    dropdownAlignRight: false,
    windowPadding: 0
  };

  Selectpicker.prototype = {

    constructor: Selectpicker,

    init: function () {
      var that = this,
          id = this.$element.attr(''id'');

      this.$element.addClass(''bs-select-hidden'');

      // store originalIndex (key) and newIndex (value) in this.liObj for fast accessibility
      // allows us to do this.$lis.eq(that.liObj[index]) instead of this.$lis.filter(''[data-original-index="'' + index + ''"]'')
      this.liObj = {};
      this.multiple = this.$element.prop(''multiple'');
      this.autofocus = this.$element.prop(''autofocus'');
      this.$newElement = this.createView();
      this.$element
        .after(this.$newElement)
        .appendTo(this.$newElement);
      this.$button = this.$newElement.children(''button'');
      this.$menu = this.$newElement.children(''.dropdown-menu'');
      this.$menuInner = this.$menu.children(''.inner'');
      this.$searchbox = this.$menu.find(''input'');

      this.$element.removeClass(''bs-select-hidden'');

      if (this.options.dropdownAlignRight === true) this.$menu.addClass(''dropdown-menu-right'');

      if (typeof id !== ''undefined'') {
        this.$button.attr(''data-id'', id);
        $(''label[for="'' + id + ''"]'').click(function (e) {
          e.preventDefault();
          that.$button.focus();
        });
      }

      this.checkDisabled();
      this.clickListener();
      if (this.options.liveSearch) this.liveSearchListener();
      this.render();
      this.setStyle();
      this.setWidth();
      if (this.options.container) this.selectPosition();
      this.$menu.data(''this'', this);
      this.$newElement.data(''this'', this);
      if (this.options.mobile) this.mobile();

      this.$newElement.on({
        ''hide.bs.dropdown'': function (e) {
          that.$menuInner.attr(''aria-expanded'', false);
          that.$element.trigger(''hide.bs.select'', e);
        },
        ''hidden.bs.dropdown'': function (e) {
          that.$element.trigger(''hidden.bs.select'', e);
        },
        ''show.bs.dropdown'': function (e) {
          that.$menuInner.attr(''aria-expanded'', true);
          that.$element.trigger(''show.bs.select'', e);
        },
        ''shown.bs.dropdown'': function (e) {
          that.$element.trigger(''shown.bs.select'', e);
        }
      });

      if (that.$element[0].hasAttribute(''required'')) {
        this.$element.on(''invalid'', function () {
          that.$button.addClass(''bs-invalid'');

          that.$element.on({
            ''focus.bs.select'': function () {
              that.$button.focus();
              that.$element.off(''focus.bs.select'');
            },
            ''shown.bs.select'': function () {
              that.$element
                .val(that.$element.val()) // set the value to hide the validation message in Chrome when menu is opened
                .off(''shown.bs.select'');
            },
            ''rendered.bs.select'': function () {
              // if select is no longer invalid, remove the bs-invalid class
              if (this.validity.valid) that.$button.removeClass(''bs-invalid'');
              that.$element.off(''rendered.bs.select'');
            }
          });

          that.$button.on(''blur.bs.select'', function() {
            that.$element.focus().blur();
            that.$button.off(''blur.bs.select'');
          });
        });
      }

      setTimeout(function () {
        that.$element.trigger(''loaded.bs.select'');
      });
    },

    createDropdown: function () {
      // Options
      // If we are multiple or showTick option is set, then add the show-tick class
      var showTick = (this.multiple || this.options.showTick) ? '' show-tick'' : '''',
          inputGroup = this.$element.parent().hasClass(''input-group'') ? '' input-group-btn'' : '''',
          autofocus = this.autofocus ? '' autofocus'' : '''';
      // Elements
      var header = this.options.header ? ''<div class="popover-title"><button type="button" class="close" aria-hidden="true">&times;</button>'' + this.options.header + ''</div>'' : '''';
      var searchbox = this.options.liveSearch ?
      ''<div class="bs-searchbox">'' +
      ''<input type="text" class="form-control" autocomplete="off"'' +
      (null === this.options.liveSearchPlaceholder ? '''' : '' placeholder="'' + htmlEscape(this.options.liveSearchPlaceholder) + ''"'') + '' role="textbox" aria-label="Search">'' +
      ''</div>''
          : '''';
      var actionsbox = this.multiple && this.options.actionsBox ?
      ''<div class="bs-actionsbox">'' +
      ''<div class="btn-group btn-group-sm btn-block">'' +
      ''<button type="button" class="actions-btn bs-select-all btn btn-default">'' +
      this.options.selectAllText +
      ''</button>'' +
      ''<button type="button" class="actions-btn bs-deselect-all btn btn-default">'' +
      this.options.deselectAllText +
      ''</button>'' +
      ''</div>'' +
      ''</div>''
          : '''';
      var donebutton = this.multiple && this.options.doneButton ?
      ''<div class="bs-donebutton">'' +
      ''<div class="btn-group btn-block">'' +
      ''<button type="button" class="btn btn-sm btn-default">'' +
      this.options.doneButtonText +
      ''</button>'' +
      ''</div>'' +
      ''</div>''
          : '''';
      var drop =
          ''<div class="btn-group bootstrap-select'' + showTick + inputGroup + ''">'' +
          ''<button type="button" class="'' + this.options.styleBase + '' dropdown-toggle" data-toggle="dropdown"'' + autofocus + '' role="button">'' +
          ''<span class="filter-option pull-left"></span>&nbsp;'' +
          ''<span class="bs-caret">'' +
          this.options.template.caret +
          ''</span>'' +
          ''</button>'' +
          ''<div class="dropdown-menu open" role="combobox">'' +
          header +
          searchbox +
          actionsbox +
          ''<ul class="dropdown-menu inner" role="listbox" aria-expanded="false">'' +
          ''</ul>'' +
          donebutton +
          ''</div>'' +
          ''</div>'';

      return $(drop);
    },

    createView: function () {
      var $drop = this.createDropdown(),
          li = this.createLi();

      $drop.find(''ul'')[0].innerHTML = li;
      return $drop;
    },

    reloadLi: function () {
      // rebuild
      var li = this.createLi();
      this.$menuInner[0].innerHTML = li;
    },

    createLi: function () {
      var that = this,
          _li = [],
          optID = 0,
          titleOption = document.createElement(''option''),
          liIndex = -1; // increment liIndex whenever a new <li> element is created to ensure liObj is correct

      // Helper functions
      /**
       * @param content
       * @param [index]
       * @param [classes]
       * @param [optgroup]
       * @returns {string}
       */
      var generateLI = function (content, index, classes, optgroup) {
        return ''<li'' +
            ((typeof classes !== ''undefined'' && '''' !== classes) ? '' class="'' + classes + ''"'' : '''') +
            ((typeof index !== ''undefined'' && null !== index) ? '' data-original-index="'' + index + ''"'' : '''') +
            ((typeof optgroup !== ''undefined'' && null !== optgroup) ? ''data-optgroup="'' + optgroup + ''"'' : '''') +
            ''>'' + content + ''</li>'';
      };

      /**
       * @param text
       * @param [classes]
       * @param [inline]
       * @param [tokens]
       * @returns {string}
       */
      var generateA = function (text, classes, inline, tokens) {
        return ''<a tabindex="0"'' +
            (typeof classes !== ''undefined'' ? '' class="'' + classes + ''"'' : '''') +
            (inline ? '' style="'' + inline + ''"'' : '''') +
            (that.options.liveSearchNormalize ? '' data-normalized-text="'' + normalizeToBase(htmlEscape($(text).html())) + ''"'' : '''') +
            (typeof tokens !== ''undefined'' || tokens !== null ? '' data-tokens="'' + tokens + ''"'' : '''') +
            '' role="option">'' + text +
            ''<span class="'' + that.options.iconBase + '' '' + that.options.tickIcon + '' check-mark"></span>'' +
            ''</a>'';
      };

      if (this.options.title && !this.multiple) {
        // this option doesn''t create a new <li> element, but does add a new option, so liIndex is decreased
        // since liObj is recalculated on every refresh, liIndex needs to be decreased even if the titleOption is already appended
        liIndex--;

        if (!this.$element.find(''.bs-title-option'').length) {
          // Use native JS to prepend option (faster)
          var element = this.$element[0];
          titleOption.className = ''bs-title-option'';
          titleOption.innerHTML = this.options.title;
          titleOption.value = '''';
          element.insertBefore(titleOption, element.firstChild);
          // Check if selected or data-selected attribute is already set on an option. If not, select the titleOption option.
          // the selected item may have been changed by user or programmatically before the bootstrap select plugin runs,
          // if so, the select will have the data-selected attribute
          var $opt = $(element.options[element.selectedIndex]);
          if ($opt.attr(''selected'') === undefined && this.$element.data(''selected'') === undefined) {
            titleOption.selected = true;
          }
        }
      }

      var $selectOptions = this.$element.find(''option'');

      $selectOptions.each(function (index) {
        var $this = $(this);

        liIndex++;

        if ($this.hasClass(''bs-title-option'')) return;

        // Get the class and text for the option
        var optionClass = this.className || '''',
            inline = htmlEscape(this.style.cssText),
            text = $this.data(''content'') ? $this.data(''content'') : $this.html(),
            tokens = $this.data(''tokens'') ? $this.data(''tokens'') : null,
            subtext = typeof $this.data(''subtext'') !== ''undefined'' ? ''<small class="text-muted">'' + $this.data(''subtext'') + ''</small>'' : '''',
            icon = typeof $this.data(''icon'') !== ''undefined'' ? ''<span class="'' + that.options.iconBase + '' '' + $this.data(''icon'') + ''"></span> '' : '''',
            $parent = $this.parent(),
            isOptgroup = $parent[0].tagName === ''OPTGROUP'',
            isOptgroupDisabled = isOptgroup && $parent[0].disabled,
            isDisabled = this.disabled || isOptgroupDisabled,
            prevHiddenIndex;

        if (icon !== '''' && isDisabled) {
          icon = ''<span>'' + icon + ''</span>'';
        }

        if (that.options.hideDisabled && (isDisabled && !isOptgroup || isOptgroupDisabled)) {
          // set prevHiddenIndex - the index of the first hidden option in a group of hidden options
          // used to determine whether or not a divider should be placed after an optgroup if there are
          // hidden options between the optgroup and the first visible option
          prevHiddenIndex = $this.data(''prevHiddenIndex'');
          $this.next().data(''prevHiddenIndex'', (prevHiddenIndex !== undefined ? prevHiddenIndex : index));

          liIndex--;
          return;
        }

        if (!$this.data(''content'')) {
          // Prepend any icon and append any subtext to the main text.
          text = icon + ''<span class="text">'' + text + subtext + ''</span>'';
        }

        if (isOptgroup && $this.data(''divider'') !== true) {
          if (that.options.hideDisabled && isDisabled) {
            if ($parent.data(''allOptionsDisabled'') === undefined) {
              var $options = $parent.children();
              $parent.data(''allOptionsDisabled'', $options.filter('':disabled'').length === $options.length);
            }

            if ($parent.data(''allOptionsDisabled'')) {
              liIndex--;
              return;
            }
          }

          var optGroupClass = '' '' + $parent[0].className || '''';

          if ($this.index() === 0) { // Is it the first option of the optgroup?
            optID += 1;

            // Get the opt group label
            var label = $parent[0].label,
                labelSubtext = typeof $parent.data(''subtext'') !== ''undefined'' ? ''<small class="text-muted">'' + $parent.data(''subtext'') + ''</small>'' : '''',
                labelIcon = $parent.data(''icon'') ? ''<span class="'' + that.options.iconBase + '' '' + $parent.data(''icon'') + ''"></span> '' : '''';

            label = labelIcon + ''<span class="text">'' + htmlEscape(label) + labelSubtext + ''</span>'';

            if (index !== 0 && _li.length > 0) { // Is it NOT the first option of the select && are there elements in the dropdown?
              liIndex++;
              _li.push(generateLI('''', null, ''divider'', optID + ''div''));
            }
            liIndex++;
            _li.push(generateLI(label, null, ''dropdown-header'' + optGroupClass, optID));
          }

          if (that.options.hideDisabled && isDisabled) {
            liIndex--;
            return;
          }

          _li.push(generateLI(generateA(text, ''opt '' + optionClass + optGroupClass, inline, tokens), index, '''', optID));
        } else if ($this.data(''divider'') === true) {
          _li.push(generateLI('''', index, ''divider''));
        } else if ($this.data(''hidden'') === true) {
          // set prevHiddenIndex - the index of the first hidden option in a group of hidden options
          // used to determine whether or not a divider should be placed after an optgroup if there are
          // hidden options between the optgroup and the first visible option
          prevHiddenIndex = $this.data(''prevHiddenIndex'');
          $this.next().data(''prevHiddenIndex'', (prevHiddenIndex !== undefined ? prevHiddenIndex : index));

          _li.push(generateLI(generateA(text, optionClass, inline, tokens), index, ''hidden is-hidden''));
        } else {
          var showDivider = this.previousElementSibling && this.previousElementSibling.tagName === ''OPTGROUP'';

          // if previous element is not an optgroup and hideDisabled is true
          if (!showDivider && that.options.hideDisabled) {
            prevHiddenIndex = $this.data(''prevHiddenIndex'');

            if (prevHiddenIndex !== undefined) {
              // select the element **before** the first hidden element in the group
              var prevHidden = $selectOptions.eq(prevHiddenIndex)[0].previousElementSibling;
              
              if (prevHidden && prevHidden.tagName === ''OPTGROUP'' && !prevHidden.disabled) {
                showDivider = true;
              }
            }
          }

          if (showDivider) {
            liIndex++;
            _li.push(generateLI('''', null, ''divider'', optID + ''div''));
          }
          _li.push(generateLI(generateA(text, optionClass, inline, tokens), index));
        }

        that.liObj[index] = liIndex;
      });

      //If we are not multiple, we don''t have a selected item, and we don''t have a title, select the first element so something is set in the button
      if (!this.multiple && this.$element.find(''option:selected'').length === 0 && !this.options.title) {
        this.$element.find(''option'').eq(0).prop(''selected'', true).attr(''selected'', ''selected'');
      }

      return _li.join('''');
    },

    findLis: function () {
      if (this.$lis == null) this.$lis = this.$menu.find(''li'');
      return this.$lis;
    },

    /**
     * @param [updateLi] defaults to true
     */
    render: function (updateLi) {
      var that = this,
          notDisabled,
          $selectOptions = this.$element.find(''option'');

      //Update the LI to match the SELECT
      if (updateLi !== false) {
        $selectOptions.each(function (index) {
          var $lis = that.findLis().eq(that.liObj[index]);

          that.setDisabled(index, this.disabled || this.parentNode.tagName === ''OPTGROUP'' && this.parentNode.disabled, $lis);
          that.setSelected(index, this.selected, $lis);
        });
      }

      this.togglePlaceholder();

      this.tabIndex();

      var selectedItems = $selectOptions.map(function () {
        if (this.selected) {
          if (that.options.hideDisabled && (this.disabled || this.parentNode.tagName === ''OPTGROUP'' && this.parentNode.disabled)) return;

          var $this = $(this),
              icon = $this.data(''icon'') && that.options.showIcon ? ''<i class="'' + that.options.iconBase + '' '' + $this.data(''icon'') + ''"></i> '' : '''',
              subtext;

          if (that.options.showSubtext && $this.data(''subtext'') && !that.multiple) {
            subtext = '' <small class="text-muted">'' + $this.data(''subtext'') + ''</small>'';
          } else {
            subtext = '''';
          }
          if (typeof $this.attr(''title'') !== ''undefined'') {
            return $this.attr(''title'');
          } else if ($this.data(''content'') && that.options.showContent) {
            return $this.data(''content'').toString();
          } else {
            return icon + $this.html() + subtext;
          }
        }
      }).toArray();

      //Fixes issue in IE10 occurring when no default option is selected and at least one option is disabled
      //Convert all the values into a comma delimited string
      var title = !this.multiple ? selectedItems[0] : selectedItems.join(this.options.multipleSeparator);

      //If this is multi select, and the selectText type is count, the show 1 of 2 selected etc..
      if (this.multiple && this.options.selectedTextFormat.indexOf(''count'') > -1) {
        var max = this.options.selectedTextFormat.split(''>'');
        if ((max.length > 1 && selectedItems.length > max[1]) || (max.length == 1 && selectedItems.length >= 2)) {
          notDisabled = this.options.hideDisabled ? '', [disabled]'' : '''';
          var totalCount = $selectOptions.not(''[data-divider="true"], [data-hidden="true"]'' + notDisabled).length,
              tr8nText = (typeof this.options.countSelectedText === ''function'') ? this.options.countSelectedText(selectedItems.length, totalCount) : this.options.countSelectedText;
          title = tr8nText.replace(''{0}'', selectedItems.length.toString()).replace(''{1}'', totalCount.toString());
        }
      }

      if (this.options.title == undefined) {
        this.options.title = this.$element.attr(''title'');
      }

      if (this.options.selectedTextFormat == ''static'') {
        title = this.options.title;
      }

      //If we dont have a title, then use the default, or if nothing is set at all, use the not selected text
      if (!title) {
        title = typeof this.options.title !== ''undefined'' ? this.options.title : this.options.noneSelectedText;
      }

      //strip all HTML tags and trim the result, then unescape any escaped tags
      this.$button.attr(''title'', htmlUnescape($.trim(title.replace(/<[^>]*>?/g, ''''))));
      this.$button.children(''.filter-option'').html(title);

      this.$element.trigger(''rendered.bs.select'');
    },

    /**
     * @param [style]
     * @param [status]
     */
    setStyle: function (style, status) {
      if (this.$element.attr(''class'')) {
        this.$newElement.addClass(this.$element.attr(''class'').replace(/selectpicker|mobile-device|bs-select-hidden|validate\[.*\]/gi, ''''));
      }

      var buttonClass = style ? style : this.options.style;

      if (status == ''add'') {
        this.$button.addClass(buttonClass);
      } else if (status == ''remove'') {
        this.$button.removeClass(buttonClass);
      } else {
        this.$button.removeClass(this.options.style);
        this.$button.addClass(buttonClass);
      }
    },

    liHeight: function (refresh) {
      if (!refresh && (this.options.size === false || this.sizeInfo)) return;

      var newElement = document.createElement(''div''),
          menu = document.createElement(''div''),
          menuInner = document.createElement(''ul''),
          divider = document.createElement(''li''),
          li = document.createElement(''li''),
          a = document.createElement(''a''),
          text = document.createElement(''span''),
          header = this.options.header && this.$menu.find(''.popover-title'').length > 0 ? this.$menu.find(''.popover-title'')[0].cloneNode(true) : null,
          search = this.options.liveSearch ? document.createElement(''div'') : null,
          actions = this.options.actionsBox && this.multiple && this.$menu.find(''.bs-actionsbox'').length > 0 ? this.$menu.find(''.bs-actionsbox'')[0].cloneNode(true) : null,
          doneButton = this.options.doneButton && this.multiple && this.$menu.find(''.bs-donebutton'').length > 0 ? this.$menu.find(''.bs-donebutton'')[0].cloneNode(true) : null;

      text.className = ''text'';
      newElement.className = this.$menu[0].parentNode.className + '' open'';
      menu.className = ''dropdown-menu open'';
      menuInner.className = ''dropdown-menu inner'';
      divider.className = ''divider'';

      text.appendChild(document.createTextNode(''Inner text''));
      a.appendChild(text);
      li.appendChild(a);
      menuInner.appendChild(li);
      menuInner.appendChild(divider);
      if (header) menu.appendChild(header);
      if (search) {
        var input = document.createElement(''input'');
        search.className = ''bs-searchbox'';
        input.className = ''form-control'';
        search.appendChild(input);
        menu.appendChild(search);
      }
      if (actions) menu.appendChild(actions);
      menu.appendChild(menuInner);
      if (doneButton) menu.appendChild(doneButton);
      newElement.appendChild(menu);

      document.body.appendChild(newElement);

      var liHeight = a.offsetHeight,
          headerHeight = header ? header.offsetHeight : 0,
          searchHeight = search ? search.offsetHeight : 0,
          actionsHeight = actions ? actions.offsetHeight : 0,
          doneButtonHeight = doneButton ? doneButton.offsetHeight : 0,
          dividerHeight = $(divider).outerHeight(true),
          // fall back to jQuery if getComputedStyle is not supported
          menuStyle = typeof getComputedStyle === ''function'' ? getComputedStyle(menu) : false,
          $menu = menuStyle ? null : $(menu),
          menuPadding = {
            vert: parseInt(menuStyle ? menuStyle.paddingTop : $menu.css(''paddingTop'')) +
                  parseInt(menuStyle ? menuStyle.paddingBottom : $menu.css(''paddingBottom'')) +
                  parseInt(menuStyle ? menuStyle.borderTopWidth : $menu.css(''borderTopWidth'')) +
                  parseInt(menuStyle ? menuStyle.borderBottomWidth : $menu.css(''borderBottomWidth'')),
            horiz: parseInt(menuStyle ? menuStyle.paddingLeft : $menu.css(''paddingLeft'')) +
                  parseInt(menuStyle ? menuStyle.paddingRight : $menu.css(''paddingRight'')) +
                  parseInt(menuStyle ? menuStyle.borderLeftWidth : $menu.css(''borderLeftWidth'')) +
                  parseInt(menuStyle ? menuStyle.borderRightWidth : $menu.css(''borderRightWidth''))
          },
          menuExtras =  {
            vert: menuPadding.vert +
                  parseInt(menuStyle ? menuStyle.marginTop : $menu.css(''marginTop'')) +
                  parseInt(menuStyle ? menuStyle.marginBottom : $menu.css(''marginBottom'')) + 2,
            horiz: menuPadding.horiz +
                  parseInt(menuStyle ? menuStyle.marginLeft : $menu.css(''marginLeft'')) +
                  parseInt(menuStyle ? menuStyle.marginRight : $menu.css(''marginRight'')) + 2
          }

      document.body.removeChild(newElement);

      this.sizeInfo = {
        liHeight: liHeight,
        headerHeight: headerHeight,
        searchHeight: searchHeight,
        actionsHeight: actionsHeight,
        doneButtonHeight: doneButtonHeight,
        dividerHeight: dividerHeight,
        menuPadding: menuPadding,
        menuExtras: menuExtras
      };
    },

    setSize: function () {
      this.findLis();
      this.liHeight();

      if (this.options.header) this.$menu.css(''padding-top'', 0);
      if (this.options.size === false) return;

      var that = this,
          $menu = this.$menu,
          $menuInner = this.$menuInner,
          $window = $(window),
          selectHeight = this.$newElement[0].offsetHeight,
          selectWidth = this.$newElement[0].offsetWidth,
          liHeight = this.sizeInfo[''liHeight''],
          headerHeight = this.sizeInfo[''headerHeight''],
          searchHeight = this.sizeInfo[''searchHeight''],
          actionsHeight = this.sizeInfo[''actionsHeight''],
          doneButtonHeight = this.sizeInfo[''doneButtonHeight''],
          divHeight = this.sizeInfo[''dividerHeight''],
          menuPadding = this.sizeInfo[''menuPadding''],
          menuExtras = this.sizeInfo[''menuExtras''],
          notDisabled = this.options.hideDisabled ? ''.disabled'' : '''',
          menuHeight,
          menuWidth,
          getHeight,
          getWidth,
          selectOffsetTop,
          selectOffsetBot,
          selectOffsetLeft,
          selectOffsetRight,
          getPos = function() {
            var pos = that.$newElement.offset(),
                $container = $(that.options.container),
                containerPos;

            if (that.options.container && !$container.is(''body'')) {
              containerPos = $container.offset();
              containerPos.top += parseInt($container.css(''borderTopWidth''));
              containerPos.left += parseInt($container.css(''borderLeftWidth''));
            } else {
              containerPos = { top: 0, left: 0 };
            }

            var winPad = that.options.windowPadding;
            selectOffsetTop = pos.top - containerPos.top - $window.scrollTop();
            selectOffsetBot = $window.height() - selectOffsetTop - selectHeight - containerPos.top - winPad[2];
            selectOffsetLeft = pos.left - containerPos.left - $window.scrollLeft();
            selectOffsetRight = $window.width() - selectOffsetLeft - selectWidth - containerPos.left - winPad[1];
            selectOffsetTop -= winPad[0];
            selectOffsetLeft -= winPad[3];
          };

      getPos();

      if (this.options.size === ''auto'') {
        var getSize = function () {
          var minHeight,
              hasClass = function (className, include) {
                return function (element) {
                    if (include) {
                        return (element.classList ? element.classList.contains(className) : $(element).hasClass(className));
                    } else {
                        return !(element.classList ? element.classList.contains(className) : $(element).hasClass(className));
                    }
                };
              },
              lis = that.$menuInner[0].getElementsByTagName(''li''),
              lisVisible = Array.prototype.filter ? Array.prototype.filter.call(lis, hasClass(''hidden'', false)) : that.$lis.not(''.hidden''),
              optGroup = Array.prototype.filter ? Array.prototype.filter.call(lisVisible, hasClass(''dropdown-header'', true)) : lisVisible.filter(''.dropdown-header'');

          getPos();
          menuHeight = selectOffsetBot - menuExtras.vert;
          menuWidth = selectOffsetRight - menuExtras.horiz;

          if (that.options.container) {
            if (!$menu.data(''height'')) $menu.data(''height'', $menu.height());
            getHeight = $menu.data(''height'');

            if (!$menu.data(''width'')) $menu.data(''width'', $menu.width());
            getWidth = $menu.data(''width'');
          } else {
            getHeight = $menu.height();
            getWidth = $menu.width();
          }

          if (that.options.dropupAuto) {
            that.$newElement.toggleClass(''dropup'', selectOffsetTop > selectOffsetBot && (menuHeight - menuExtras.vert) < getHeight);
          }

          if (that.$newElement.hasClass(''dropup'')) {
            menuHeight = selectOffsetTop - menuExtras.vert;
          }

          if (that.options.dropdownAlignRight === ''auto'') {
            $menu.toggleClass(''dropdown-menu-right'', selectOffsetLeft > selectOffsetRight && (menuWidth - menuExtras.horiz) < (getWidth - selectWidth));
          }

          if ((lisVisible.length + optGroup.length) > 3) {
            minHeight = liHeight * 3 + menuExtras.vert - 2;
          } else {
            minHeight = 0;
          }

          $menu.css({
            ''max-height'': menuHeight + ''px'',
            ''overflow'': ''hidden'',
            ''min-height'': minHeight + headerHeight + searchHeight + actionsHeight + doneButtonHeight + ''px''
          });
          $menuInner.css({
            ''max-height'': menuHeight - headerHeight - searchHeight - actionsHeight - doneButtonHeight - menuPadding.vert + ''px'',
            ''overflow-y'': ''auto'',
            ''min-height'': Math.max(minHeight - menuPadding.vert, 0) + ''px''
          });
        };
        getSize();
        this.$searchbox.off(''input.getSize propertychange.getSize'').on(''input.getSize propertychange.getSize'', getSize);
        $window.off(''resize.getSize scroll.getSize'').on(''resize.getSize scroll.getSize'', getSize);
      } else if (this.options.size && this.options.size != ''auto'' && this.$lis.not(notDisabled).length > this.options.size) {
        var optIndex = this.$lis.not(''.divider'').not(notDisabled).children().slice(0, this.options.size).last().parent().index(),
            divLength = this.$lis.slice(0, optIndex + 1).filter(''.divider'').length;
        menuHeight = liHeight * this.options.size + divLength * divHeight + menuPadding.vert;

        if (that.options.container) {
          if (!$menu.data(''height'')) $menu.data(''height'', $menu.height());
          getHeight = $menu.data(''height'');
        } else {
          getHeight = $menu.height();
        }

        if (that.options.dropupAuto) {
          //noinspection JSUnusedAssignment
          this.$newElement.toggleClass(''dropup'', selectOffsetTop > selectOffsetBot && (menuHeight - menuExtras.vert) < getHeight);
        }
        $menu.css({
          ''max-height'': menuHeight + headerHeight + searchHeight + actionsHeight + doneButtonHeight + ''px'',
          ''overflow'': ''hidden'',
          ''min-height'': ''''
        });
        $menuInner.css({
          ''max-height'': menuHeight - menuPadding.vert + ''px'',
          ''overflow-y'': ''auto'',
          ''min-height'': ''''
        });
      }
    },

    setWidth: function () {
      if (this.options.width === ''auto'') {
        this.$menu.css(''min-width'', ''0'');

        // Get correct width if element is hidden
        var $selectClone = this.$menu.parent().clone().appendTo(''body''),
            $selectClone2 = this.options.container ? this.$newElement.clone().appendTo(''body'') : $selectClone,
            ulWidth = $selectClone.children(''.dropdown-menu'').outerWidth(),
            btnWidth = $selectClone2.css(''width'', ''auto'').children(''button'').outerWidth();

        $selectClone.remove();
        $selectClone2.remove();

        // Set width to whatever''s larger, button title or longest option
        this.$newElement.css(''width'', Math.max(ulWidth, btnWidth) + ''px'');
      } else if (this.options.width === ''fit'') {
        // Remove inline min-width so width can be changed from ''auto''
        this.$menu.css(''min-width'', '''');
        this.$newElement.css(''width'', '''').addClass(''fit-width'');
      } else if (this.options.width) {
        // Remove inline min-width so width can be changed from ''auto''
        this.$menu.css(''min-width'', '''');
        this.$newElement.css(''width'', this.options.width);
      } else {
        // Remove inline min-width/width so width can be changed
        this.$menu.css(''min-width'', '''');
        this.$newElement.css(''width'', '''');
      }
      // Remove fit-width class if width is changed programmatically
      if (this.$newElement.hasClass(''fit-width'') && this.options.width !== ''fit'') {
        this.$newElement.removeClass(''fit-width'');
      }
    },

    selectPosition: function () {
      this.$bsContainer = $(''<div class="bs-container" />'');

      var that = this,
          $container = $(this.options.container),
          pos,
          containerPos,
          actualHeight,
          getPlacement = function ($element) {
            that.$bsContainer.addClass($element.attr(''class'').replace(/form-control|fit-width/gi, '''')).toggleClass(''dropup'', $element.hasClass(''dropup''));
            pos = $element.offset();

            if (!$container.is(''body'')) {
              containerPos = $container.offset();
              containerPos.top += parseInt($container.css(''borderTopWidth'')) - $container.scrollTop();
              containerPos.left += parseInt($container.css(''borderLeftWidth'')) - $container.scrollLeft();
            } else {
              containerPos = { top: 0, left: 0 };
            }

            actualHeight = $element.hasClass(''dropup'') ? 0 : $element[0].offsetHeight;

            that.$bsContainer.css({
              ''top'': pos.top - containerPos.top + actualHeight,
              ''left'': pos.left - containerPos.left,
              ''width'': $element[0].offsetWidth
            });
          };

      this.$button.on(''click'', function () {
        var $this = $(this);

        if (that.isDisabled()) {
          return;
        }

        getPlacement(that.$newElement);

        that.$bsContainer
          .appendTo(that.options.container)
          .toggleClass(''open'', !$this.hasClass(''open''))
          .append(that.$menu);
      });

      $(window).on(''resize scroll'', function () {
        getPlacement(that.$newElement);
      });

      this.$element.on(''hide.bs.select'', function () {
        that.$menu.data(''height'', that.$menu.height());
        that.$bsContainer.detach();
      });
    },

    /**
     * @param {number} index - the index of the option that is being changed
     * @param {boolean} selected - true if the option is being selected, false if being deselected
     * @param {JQuery} $lis - the ''li'' element that is being modified
     */
    setSelected: function (index, selected, $lis) {
      if (!$lis) {
        this.togglePlaceholder(); // check if setSelected is being called by changing the value of the select
        $lis = this.findLis().eq(this.liObj[index]);
      }

      $lis.toggleClass(''selected'', selected).find(''a'').attr(''aria-selected'', selected);
    },

    /**
     * @param {number} index - the index of the option that is being disabled
     * @param {boolean} disabled - true if the option is being disabled, false if being enabled
     * @param {JQuery} $lis - the ''li'' element that is being modified
     */
    setDisabled: function (index, disabled, $lis) {
      if (!$lis) {
        $lis = this.findLis().eq(this.liObj[index]);
      }

      if (disabled) {
        $lis.addClass(''disabled'').children(''a'').attr(''href'', ''#'').attr(''tabindex'', -1).attr(''aria-disabled'', true);
      } else {
        $lis.removeClass(''disabled'').children(''a'').removeAttr(''href'').attr(''tabindex'', 0).attr(''aria-disabled'', false);
      }
    },

    isDisabled: function () {
      return this.$element[0].disabled;
    },

    checkDisabled: function () {
      var that = this;

      if (this.isDisabled()) {
        this.$newElement.addClass(''disabled'');
        this.$button.addClass(''disabled'').attr(''tabindex'', -1).attr(''aria-disabled'', true);
      } else {
        if (this.$button.hasClass(''disabled'')) {
          this.$newElement.removeClass(''disabled'');
          this.$button.removeClass(''disabled'').attr(''aria-disabled'', false);
        }

        if (this.$button.attr(''tabindex'') == -1 && !this.$element.data(''tabindex'')) {
          this.$button.removeAttr(''tabindex'');
        }
      }

      this.$button.click(function () {
        return !that.isDisabled();
      });
    },

    togglePlaceholder: function () {
      var value = this.$element.val();
      this.$button.toggleClass(''bs-placeholder'', value === null || value === '''' || (value.constructor === Array && value.length === 0));
    },

    tabIndex: function () {
      if (this.$element.data(''tabindex'') !== this.$element.attr(''tabindex'') && 
        (this.$element.attr(''tabindex'') !== -98 && this.$element.attr(''tabindex'') !== ''-98'')) {
        this.$element.data(''tabindex'', this.$element.attr(''tabindex''));
        this.$button.attr(''tabindex'', this.$element.data(''tabindex''));
      }

      this.$element.attr(''tabindex'', -98);
    },

    clickListener: function () {
      var that = this,
          $document = $(document);

      $document.data(''spaceSelect'', false);

      this.$button.on(''keyup'', function (e) {
        if (/(32)/.test(e.keyCode.toString(10)) && $document.data(''spaceSelect'')) {
            e.preventDefault();
            $document.data(''spaceSelect'', false);
        }
      });

      this.$button.on(''click'', function () {
        that.setSize();
      });

      this.$element.on(''shown.bs.select'', function () {
        if (!that.options.liveSearch && !that.multiple) {
          that.$menuInner.find(''.selected a'').focus();
        } else if (!that.multiple) {
          var selectedIndex = that.liObj[that.$element[0].selectedIndex];

          if (typeof selectedIndex !== ''number'' || that.options.size === false) return;

          // scroll to selected option
          var offset = that.$lis.eq(selectedIndex)[0].offsetTop - that.$menuInner[0].offsetTop;
          offset = offset - that.$menuInner[0].offsetHeight/2 + that.sizeInfo.liHeight/2;
          that.$menuInner[0].scrollTop = offset;
        }
      });

      this.$menuInner.on(''click'', ''li a'', function (e) {
        var $this = $(this),
            clickedIndex = $this.parent().data(''originalIndex''),
            prevValue = that.$element.val(),
            prevIndex = that.$element.prop(''selectedIndex''),
            triggerChange = true;

        // Don''t close on multi choice menu
        if (that.multiple && that.options.maxOptions !== 1) {
          e.stopPropagation();
        }

        e.preventDefault();

        //Don''t run if we have been disabled
        if (!that.isDisabled() && !$this.parent().hasClass(''disabled'')) {
          var $options = that.$element.find(''option''),
              $option = $options.eq(clickedIndex),
              state = $option.prop(''selected''),
              $optgroup = $option.parent(''optgroup''),
              maxOptions = that.options.maxOptions,
              maxOptionsGrp = $optgroup.data(''maxOptions'') || false;

          if (!that.multiple) { // Deselect all others if not multi select box
            $options.prop(''selected'', false);
            $option.prop(''selected'', true);
            that.$menuInner.find(''.selected'').removeClass(''selected'').find(''a'').attr(''aria-selected'', false);
            that.setSelected(clickedIndex, true);
          } else { // Toggle the one we have chosen if we are multi select.
            $option.prop(''selected'', !state);
            that.setSelected(clickedIndex, !state);
            $this.blur();

            if (maxOptions !== false || maxOptionsGrp !== false) {
              var maxReached = maxOptions < $options.filter('':selected'').length,
                  maxReachedGrp = maxOptionsGrp < $optgroup.find(''option:selected'').length;

              if ((maxOptions && maxReached) || (maxOptionsGrp && maxReachedGrp)) {
                if (maxOptions && maxOptions == 1) {
                  $options.prop(''selected'', false);
                  $option.prop(''selected'', true);
                  that.$menuInner.find(''.selected'').removeClass(''selected'');
                  that.setSelected(clickedIndex, true);
                } else if (maxOptionsGrp && maxOptionsGrp == 1) {
                  $optgroup.find(''option:selected'').prop(''selected'', false);
                  $option.prop(''selected'', true);
                  var optgroupID = $this.parent().data(''optgroup'');
                  that.$menuInner.find(''[data-optgroup="'' + optgroupID + ''"]'').removeClass(''selected'');
                  that.setSelected(clickedIndex, true);
                } else {
                  var maxOptionsText = typeof that.options.maxOptionsText === ''string'' ? [that.options.maxOptionsText, that.options.maxOptionsText] : that.options.maxOptionsText,
                      maxOptionsArr = typeof maxOptionsText === ''function'' ? maxOptionsText(maxOptions, maxOptionsGrp) : maxOptionsText,
                      maxTxt = maxOptionsArr[0].replace(''{n}'', maxOptions),
                      maxTxtGrp = maxOptionsArr[1].replace(''{n}'', maxOptionsGrp),
                      $notify = $(''<div class="notify"></div>'');
                  // If {var} is set in array, replace it
                  /** @deprecated */
                  if (maxOptionsArr[2]) {
                    maxTxt = maxTxt.replace(''{var}'', maxOptionsArr[2][maxOptions > 1 ? 0 : 1]);
                    maxTxtGrp = maxTxtGrp.replace(''{var}'', maxOptionsArr[2][maxOptionsGrp > 1 ? 0 : 1]);
                  }

                  $option.prop(''selected'', false);

                  that.$menu.append($notify);

                  if (maxOptions && maxReached) {
                    $notify.append($(''<div>'' + maxTxt + ''</div>''));
                    triggerChange = false;
                    that.$element.trigger(''maxReached.bs.select'');
                  }

                  if (maxOptionsGrp && maxReachedGrp) {
                    $notify.append($(''<div>'' + maxTxtGrp + ''</div>''));
                    triggerChange = false;
                    that.$element.trigger(''maxReachedGrp.bs.select'');
                  }

                  setTimeout(function () {
                    that.setSelected(clickedIndex, false);
                  }, 10);

                  $notify.delay(750).fadeOut(300, function () {
                    $(this).remove();
                  });
                }
              }
            }
          }

          if (!that.multiple || (that.multiple && that.options.maxOptions === 1)) {
            that.$button.focus();
          } else if (that.options.liveSearch) {
            that.$searchbox.focus();
          }

          // Trigger select ''change''
          if (triggerChange) {
            if ((prevValue != that.$element.val() && that.multiple) || (prevIndex != that.$element.prop(''selectedIndex'') && !that.multiple)) {
              // $option.prop(''selected'') is current option state (selected/unselected). state is previous option state.
              changed_arguments = [clickedIndex, $option.prop(''selected''), state];
              that.$element
                .triggerNative(''change'');
            }
          }
        }
      });

      this.$menu.on(''click'', ''li.disabled a, .popover-title, .popover-title :not(.close)'', function (e) {
        if (e.currentTarget == this) {
          e.preventDefault();
          e.stopPropagation();
          if (that.options.liveSearch && !$(e.target).hasClass(''close'')) {
            that.$searchbox.focus();
          } else {
            that.$button.focus();
          }
        }
      });

      this.$menuInner.on(''click'', ''.divider, .dropdown-header'', function (e) {
        e.preventDefault();
        e.stopPropagation();
        if (that.options.liveSearch) {
          that.$searchbox.focus();
        } else {
          that.$button.focus();
        }
      });

      this.$menu.on(''click'', ''.popover-title .close'', function () {
        that.$button.click();
      });

      this.$searchbox.on(''click'', function (e) {
        e.stopPropagation();
      });

      this.$menu.on(''click'', ''.actions-btn'', function (e) {
        if (that.options.liveSearch) {
          that.$searchbox.focus();
        } else {
          that.$button.focus();
        }

        e.preventDefault();
        e.stopPropagation();

        if ($(this).hasClass(''bs-select-all'')) {
          that.selectAll();
        } else {
          that.deselectAll();
        }
      });

      this.$element.change(function () {
        that.render(false);
        that.$element.trigger(''changed.bs.select'', changed_arguments);
        changed_arguments = null;
      });
    },

    liveSearchListener: function () {
      var that = this,
          $no_results = $(''<li class="no-results"></li>'');

      this.$button.on(''click.dropdown.data-api'', function () {
        that.$menuInner.find(''.active'').removeClass(''active'');
        if (!!that.$searchbox.val()) {
          that.$searchbox.val('''');
          that.$lis.not(''.is-hidden'').removeClass(''hidden'');
          if (!!$no_results.parent().length) $no_results.remove();
        }
        if (!that.multiple) that.$menuInner.find(''.selected'').addClass(''active'');
        setTimeout(function () {
          that.$searchbox.focus();
        }, 10);
      });

      this.$searchbox.on(''click.dropdown.data-api focus.dropdown.data-api touchend.dropdown.data-api'', function (e) {
        e.stopPropagation();
      });

      this.$searchbox.on(''input propertychange'', function () {
        that.$lis.not(''.is-hidden'').removeClass(''hidden'');
        that.$lis.filter(''.active'').removeClass(''active'');
        $no_results.remove();

        if (that.$searchbox.val()) {
          var $searchBase = that.$lis.not(''.is-hidden, .divider, .dropdown-header''),
              $hideItems;
          if (that.options.liveSearchNormalize) {
            $hideItems = $searchBase.not('':a'' + that._searchStyle() + ''("'' + normalizeToBase(that.$searchbox.val()) + ''")'');
          } else {
            $hideItems = $searchBase.not('':'' + that._searchStyle() + ''("'' + that.$searchbox.val() + ''")'');
          }

          if ($hideItems.length === $searchBase.length) {
            $no_results.html(that.options.noneResultsText.replace(''{0}'', ''"'' + htmlEscape(that.$searchbox.val()) + ''"''));
            that.$menuInner.append($no_results);
            that.$lis.addClass(''hidden'');
          } else {
            $hideItems.addClass(''hidden'');

            var $lisVisible = that.$lis.not(''.hidden''),
                $foundDiv;

            // hide divider if first or last visible, or if followed by another divider
            $lisVisible.each(function (index) {
              var $this = $(this);

              if ($this.hasClass(''divider'')) {
                if ($foundDiv === undefined) {
                  $this.addClass(''hidden'');
                } else {
                  if ($foundDiv) $foundDiv.addClass(''hidden'');
                  $foundDiv = $this;
                }
              } else if ($this.hasClass(''dropdown-header'') && $lisVisible.eq(index + 1).data(''optgroup'') !== $this.data(''optgroup'')) {
                $this.addClass(''hidden'');
              } else {
                $foundDiv = null;
              }
            });
            if ($foundDiv) $foundDiv.addClass(''hidden'');

            $searchBase.not(''.hidden'').first().addClass(''active'');
            that.$menuInner.scrollTop(0);
          }
        }
      });
    },

    _searchStyle: function () {
      var styles = {
        begins: ''ibegins'',
        startsWith: ''ibegins''
      };

      return styles[this.options.liveSearchStyle] || ''icontains'';
    },

    val: function (value) {
      if (typeof value !== ''undefined'') {
        this.$element.val(value);
        this.render();

        return this.$element;
      } else {
        return this.$element.val();
      }
    },

    changeAll: function (status) {
      if (!this.multiple) return;
      if (typeof status === ''undefined'') status = true;

      this.findLis();

      var $options = this.$element.find(''option''),
          $lisVisible = this.$lis.not(''.divider, .dropdown-header, .disabled, .hidden''),
          lisVisLen = $lisVisible.length,
          selectedOptions = [];
          
      if (status) {
        if ($lisVisible.filter(''.selected'').length === $lisVisible.length) return;
      } else {
        if ($lisVisible.filter(''.selected'').length === 0) return;
      }
          
      $lisVisible.toggleClass(''selected'', status);

      for (var i = 0; i < lisVisLen; i++) {
        var origIndex = $lisVisible[i].getAttribute(''data-original-index'');
        selectedOptions[selectedOptions.length] = $options.eq(origIndex)[0];
      }

      $(selectedOptions).prop(''selected'', status);

      this.render(false);

      this.togglePlaceholder();

      this.$element
        .triggerNative(''change'');
    },

    selectAll: function () {
      return this.changeAll(true);
    },

    deselectAll: function () {
      return this.changeAll(false);
    },

    toggle: function (e) {
      e = e || window.event;

      if (e) e.stopPropagation();

      this.$button.trigger(''click'');
    },

    keydown: function (e) {
      var $this = $(this),
          $parent = $this.is(''input'') ? $this.parent().parent() : $this.parent(),
          $items,
          that = $parent.data(''this''),
          index,
          prevIndex,
          isActive,
          selector = '':not(.disabled, .hidden, .dropdown-header, .divider)'',
          keyCodeMap = {
            32: '' '',
            48: ''0'',
            49: ''1'',
            50: ''2'',
            51: ''3'',
            52: ''4'',
            53: ''5'',
            54: ''6'',
            55: ''7'',
            56: ''8'',
            57: ''9'',
            59: '';'',
            65: ''a'',
            66: ''b'',
            67: ''c'',
            68: ''d'',
            69: ''e'',
            70: ''f'',
            71: ''g'',
            72: ''h'',
            73: ''i'',
            74: ''j'',
            75: ''k'',
            76: ''l'',
            77: ''m'',
            78: ''n'',
            79: ''o'',
            80: ''p'',
            81: ''q'',
            82: ''r'',
            83: ''s'',
            84: ''t'',
            85: ''u'',
            86: ''v'',
            87: ''w'',
            88: ''x'',
            89: ''y'',
            90: ''z'',
            96: ''0'',
            97: ''1'',
            98: ''2'',
            99: ''3'',
            100: ''4'',
            101: ''5'',
            102: ''6'',
            103: ''7'',
            104: ''8'',
            105: ''9''
          };


      isActive = that.$newElement.hasClass(''open'');

      if (!isActive && (e.keyCode >= 48 && e.keyCode <= 57 || e.keyCode >= 96 && e.keyCode <= 105 || e.keyCode >= 65 && e.keyCode <= 90)) {
        if (!that.options.container) {
          that.setSize();
          that.$menu.parent().addClass(''open'');
          isActive = true;
        } else {
          that.$button.trigger(''click'');
        }
        that.$searchbox.focus();
        return;
      }

      if (that.options.liveSearch) {
        if (/(^9$|27)/.test(e.keyCode.toString(10)) && isActive) {
          e.preventDefault();
          e.stopPropagation();
          that.$menuInner.click();
          that.$button.focus();
        }
      }

      if (/(38|40)/.test(e.keyCode.toString(10))) {
        $items = that.$lis.filter(selector);
        if (!$items.length) return;

        if (!that.options.liveSearch) {
          index = $items.index($items.find(''a'').filter('':focus'').parent());
	    } else {
          index = $items.index($items.filter(''.active''));
        }

        prevIndex = that.$menuInner.data(''prevIndex'');

        if (e.keyCode == 38) {
          if ((that.options.liveSearch || index == prevIndex) && index != -1) index--;
          if (index < 0) index += $items.length;
        } else if (e.keyCode == 40) {
          if (that.options.liveSearch || index == prevIndex) index++;
          index = index % $items.length;
        }

        that.$menuInner.data(''prevIndex'', index);

        if (!that.options.liveSearch) {
          $items.eq(index).children(''a'').focus();
        } else {
          e.preventDefault();
          if (!$this.hasClass(''dropdown-toggle'')) {
            $items.removeClass(''active'').eq(index).addClass(''active'').children(''a'').focus();
            $this.focus();
          }
        }

      } else if (!$this.is(''input'')) {
        var keyIndex = [],
            count,
            prevKey;

        $items = that.$lis.filter(selector);
        $items.each(function (i) {
          if ($.trim($(this).children(''a'').text().toLowerCase()).substring(0, 1) == keyCodeMap[e.keyCode]) {
            keyIndex.push(i);
          }
        });

        count = $(document).data(''keycount'');
        count++;
        $(document).data(''keycount'', count);

        prevKey = $.trim($('':focus'').text().toLowerCase()).substring(0, 1);

        if (prevKey != keyCodeMap[e.keyCode]) {
          count = 1;
          $(document).data(''keycount'', count);
        } else if (count >= keyIndex.length) {
          $(document).data(''keycount'', 0);
          if (count > keyIndex.length) count = 1;
        }

        $items.eq(keyIndex[count - 1]).children(''a'').focus();
      }

      // Select focused option if "Enter", "Spacebar" or "Tab" (when selectOnTab is true) are pressed inside the menu.
      if ((/(13|32)/.test(e.keyCode.toString(10)) || (/(^9$)/.test(e.keyCode.toString(10)) && that.options.selectOnTab)) && isActive) {
        if (!/(32)/.test(e.keyCode.toString(10))) e.preventDefault();
        if (!that.options.liveSearch) {
          var elem = $('':focus'');
          elem.click();
          // Bring back focus for multiselects
          elem.focus();
          // Prevent screen from scrolling if the user hit the spacebar
          e.preventDefault();
          // Fixes spacebar selection of dropdown items in FF & IE
          $(document).data(''spaceSelect'', true);
        } else if (!/(32)/.test(e.keyCode.toString(10))) {
          that.$menuInner.find(''.active a'').click();
          $this.focus();
        }
        $(document).data(''keycount'', 0);
      }

      if ((/(^9$|27)/.test(e.keyCode.toString(10)) && isActive && (that.multiple || that.options.liveSearch)) || (/(27)/.test(e.keyCode.toString(10)) && !isActive)) {
        that.$menu.parent().removeClass(''open'');
        if (that.options.container) that.$newElement.removeClass(''open'');
        that.$button.focus();
      }
    },

    mobile: function () {
      this.$element.addClass(''mobile-device'');
    },

    refresh: function () {
      this.$lis = null;
      this.liObj = {};
      this.reloadLi();
      this.render();
      this.checkDisabled();
      this.liHeight(true);
      this.setStyle();
      this.setWidth();
      if (this.$lis) this.$searchbox.trigger(''propertychange'');

      this.$element.trigger(''refreshed.bs.select'');
    },

    hide: function () {
      this.$newElement.hide();
    },

    show: function () {
      this.$newElement.show();
    },

    remove: function () {
      this.$newElement.remove();
      this.$element.remove();
    },

    destroy: function () {
      this.$newElement.before(this.$element).remove();

      if (this.$bsContainer) {
        this.$bsContainer.remove();
      } else {
        this.$menu.remove();
      }

      this.$element
        .off(''.bs.select'')
        .removeData(''selectpicker'')
        .removeClass(''bs-select-hidden selectpicker'');
    }
  };

  // SELECTPICKER PLUGIN DEFINITION
  // ==============================
  function Plugin(option) {
    // get the args of the outer function..
    var args = arguments;
    // The arguments of the function are explicitly re-defined from the argument list, because the shift causes them
    // to get lost/corrupted in android 2.3 and IE9 #715 #775
    var _option = option;

    [].shift.apply(args);

    var value;
    var chain = this.each(function () {
      var $this = $(this);
      if ($this.is(''select'')) {
        var data = $this.data(''selectpicker''),
            options = typeof _option == ''object'' && _option;

        if (!data) {
          var config = $.extend({}, Selectpicker.DEFAULTS, $.fn.selectpicker.defaults || {}, $this.data(), options);
          config.template = $.extend({}, Selectpicker.DEFAULTS.template, ($.fn.selectpicker.defaults ? $.fn.selectpicker.defaults.template : {}), $this.data().template, options.template);
          $this.data(''selectpicker'', (data = new Selectpicker(this, config)));
        } else if (options) {
          for (var i in options) {
            if (options.hasOwnProperty(i)) {
              data.options[i] = options[i];
            }
          }
        }

        if (typeof _option == ''string'') {
          if (data[_option] instanceof Function) {
            value = data[_option].apply(data, args);
          } else {
            value = data.options[_option];
          }
        }
      }
    });

    if (typeof value !== ''undefined'') {
      //noinspection JSUnusedAssignment
      return value;
    } else {
      return chain;
    }
  }

  var old = $.fn.selectpicker;
  $.fn.selectpicker = Plugin;
  $.fn.selectpicker.Constructor = Selectpicker;

  // SELECTPICKER NO CONFLICT
  // ========================
  $.fn.selectpicker.noConflict = function () {
    $.fn.selectpicker = old;
    return this;
  };

  $(document)
      .data(''keycount'', 0)
      .on(''keydown.bs.select'', ''.bootstrap-select [data-toggle=dropdown], .bootstrap-select [role="listbox"], .bs-searchbox input'', Selectpicker.prototype.keydown)
      .on(''focusin.modal'', ''.bootstrap-select [data-toggle=dropdown], .bootstrap-select [role="listbox"], .bs-searchbox input'', function (e) {
        e.stopPropagation();
      });

  // SELECTPICKER DATA-API
  // =====================
  $(window).on(''load.bs.select.data-api'', function () {
    $(''.selectpicker'').each(function () {
      var $selectpicker = $(this);
      Plugin.call($selectpicker, $selectpicker.data());
    })
  });
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsarARJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-ar_AR.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsarARJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsarARJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

/*!
 * Translated default messages for bootstrap-select.
 * Locale: AR (Arabic)
 * Author: Yasser Lotfy <y_l@alive.com>
 */
(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''لم يتم إختيار شئ'',
    noneResultsText: ''لا توجد نتائج مطابقة لـ {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? "{0} خيار تم إختياره" : "{0} خيارات تمت إختيارها";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        (numAll == 1) ? ''تخطى الحد المسموح ({n} خيار بحد أقصى)'' : ''تخطى الحد المسموح ({n} خيارات بحد أقصى)'',
        (numGroup == 1) ? ''تخطى الحد المسموح للمجموعة ({n} خيار بحد أقصى)'' : ''تخطى الحد المسموح للمجموعة ({n} خيارات بحد أقصى)''
      ];
    },
    selectAllText: ''إختيار الجميع'',
    deselectAllText: ''إلغاء إختيار الجميع'',
    multipleSeparator: ''، ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsbgBGJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-bg_BG.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsbgBGJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsbgBGJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Нищо избрано'',
    noneResultsText: ''Няма резултат за {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? "{0} избран елемент" : "{0} избрани елемента";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        (numAll == 1) ? ''Лимита е достигнат ({n} елемент максимум)'' : ''Лимита е достигнат ({n} елемента максимум)'',
        (numGroup == 1) ? ''Груповия лимит е достигнат ({n} елемент максимум)'' : ''Груповия лимит е достигнат ({n} елемента максимум)''
      ];
    },
    selectAllText: ''Избери всички'',
    deselectAllText: ''Размаркирай всички'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultscroCROJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-cro_CRO.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultscroCROJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultscroCROJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Odaberite stavku'',
    noneResultsText: ''Nema rezultata pretrage {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? "{0} stavka selektirana" : "{0} stavke selektirane";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        (numAll == 1) ? ''Limit je postignut ({n} stvar maximalno)'' : ''Limit je postignut ({n} stavke maksimalno)'',
        (numGroup == 1) ? ''Grupni limit je postignut ({n} stvar maksimalno)'' : ''Grupni limit je postignut ({n} stavke maksimalno)''
      ];
    },
    selectAllText: ''Selektiraj sve'',
    deselectAllText: ''Deselektiraj sve'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultscsCZJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-cs_CZ.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultscsCZJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultscsCZJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Nic není vybráno'',
    noneResultsText: ''Žádné výsledky {0}'',
    countSelectedText: ''Označeno {0} z {1}'',
    maxOptionsText: [''Limit překročen ({n} {var} max)'', ''Limit skupiny překročen ({n} {var} max)'', [''položek'', ''položka'']],
    multipleSeparator: '', '',
    selectAllText: ''Vybrat Vše'',
    deselectAllText: ''Odznačit Vše''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsdaDKJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-da_DK.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsdaDKJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsdaDKJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Intet valgt'',
    noneResultsText: ''Ingen resultater fundet {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? "{0} valgt" : "{0} valgt";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        (numAll == 1) ? ''Begrænsning nået (max {n} valgt)'' : ''Begrænsning nået (max {n} valgte)'',
        (numGroup == 1) ? ''Gruppe-begrænsning nået (max {n} valgt)'' : ''Gruppe-begrænsning nået (max {n} valgte)''
      ];
    },
    selectAllText: ''Markér alle'',
    deselectAllText: ''Afmarkér alle'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsdeDEJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-de_DE.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsdeDEJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsdeDEJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Bitte wählen...'',
    noneResultsText: ''Keine Ergebnisse für {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? "{0} Element ausgewählt" : "{0} Elemente ausgewählt";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        (numAll == 1) ? ''Limit erreicht ({n} Element max.)'' : ''Limit erreicht ({n} Elemente max.)'',
        (numGroup == 1) ? ''Gruppen-Limit erreicht ({n} Element max.)'' : ''Gruppen-Limit erreicht ({n} Elemente max.)''
      ];
    },
    selectAllText: ''Alles auswählen'',
    deselectAllText: ''Nichts auswählen'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsenUSJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-en_US.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsenUSJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsenUSJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Nothing selected'',
    noneResultsText: ''No results match {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? "{0} item selected" : "{0} items selected";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        (numAll == 1) ? ''Limit reached ({n} item max)'' : ''Limit reached ({n} items max)'',
        (numGroup == 1) ? ''Group limit reached ({n} item max)'' : ''Group limit reached ({n} items max)''
      ];
    },
    selectAllText: ''Select All'',
    deselectAllText: ''Deselect All'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsesCLJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-es_CL.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsesCLJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsesCLJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''No hay selección'',
    noneResultsText: ''No hay resultados {0}'',
    countSelectedText: ''Seleccionados {0} de {1}'',
    maxOptionsText: [''Límite alcanzado ({n} {var} max)'', ''Límite del grupo alcanzado({n} {var} max)'', [''elementos'', ''element'']],
    multipleSeparator: '', '',
    selectAllText: ''Seleccionar Todos'',
    deselectAllText: ''Desmarcar Todos''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsesESJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-es_ES.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsesESJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsesESJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''No hay selección'',
    noneResultsText: ''No hay resultados {0}'',
    countSelectedText: ''Seleccionados {0} de {1}'',
    maxOptionsText: [''Límite alcanzado ({n} {var} max)'', ''Límite del grupo alcanzado({n} {var} max)'', [''elementos'', ''element'']],
    multipleSeparator: '', '',
    selectAllText: ''Seleccionar Todos'',
    deselectAllText: ''Desmarcar Todos''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsetEEJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-et_EE.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsetEEJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsetEEJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Valikut pole tehtud'',
    noneResultsText: ''Otsingule {0} ei ole vasteid'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? "{0} item selected" : "{0} items selected";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        ''Limiit on {n} max'',
        ''Globaalne limiit on {n} max''
      ];
    },
    selectAllText: ''Vali kõik'',
    deselectAllText: ''Tühista kõik'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultseuJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-eu.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultseuJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultseuJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Hautapenik ez'',
    noneResultsText: ''Emaitzarik ez {0}'',
    countSelectedText: ''{1}(e)tik {0} hautatuta'',
    maxOptionsText: [''Mugara iritsita ({n} {var} gehienez)'', ''Taldearen mugara iritsita ({n} {var} gehienez)'', [''elementu'', ''elementu'']],
    multipleSeparator: '', '',
    selectAllText: ''Hautatu Guztiak'',
    deselectAllText: ''Desautatu Guztiak''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsfaIRJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-fa_IR.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsfaIRJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsfaIRJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
    $.fn.selectpicker.defaults = {
        noneSelectedText: ''چیزی انتخاب نشده است'',
        noneResultsText: ''هیج مشابهی برای {0} پیدا نشد'',
        countSelectedText: "{0} از {1} مورد انتخاب شده",
        maxOptionsText: [''بیشتر ممکن نیست {حداکثر {n} عدد}'', ''بیشتر ممکن نیست {حداکثر {n} عدد}''],
        selectAllText: ''انتخاب همه'',
        deselectAllText: ''انتخاب هیچ کدام'',
        multipleSeparator: '', ''
    };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsfiFIJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-fi_FI.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsfiFIJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsfiFIJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Ei valintoja'',
    noneResultsText: ''Ei hakutuloksia {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? "{0} valittu" : "{0} valitut";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        (numAll == 1) ? ''Valintojen maksimimäärä ({n} saavutettu)'' : ''Valintojen maksimimäärä ({n} saavutettu)'',
        (numGroup == 1) ? ''Ryhmän maksimimäärä ({n} saavutettu)'' : ''Ryhmän maksimimäärä ({n} saavutettu)''
      ];
    },
    selectAllText: ''Valitse kaikki'',
    deselectAllText: ''Poista kaikki'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsfrFRJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-fr_FR.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsfrFRJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsfrFRJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Aucune sélection'',
    noneResultsText: ''Aucun résultat pour {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected > 1) ? "{0} éléments sélectionnés" : "{0} élément sélectionné";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        (numAll > 1) ? ''Limite atteinte ({n} éléments max)'' : ''Limite atteinte ({n} élément max)'',
        (numGroup > 1) ? ''Limite du groupe atteinte ({n} éléments max)'' : ''Limite du groupe atteinte ({n} élément max)''
      ];
    },
    multipleSeparator: '', '',
    selectAllText: ''Tout sélectionner'',
    deselectAllText: ''Tout désélectionner'',
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultshuHUJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-hu_HU.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultshuHUJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultshuHUJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Válasszon!'',
    noneResultsText: ''Nincs találat {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return ''{0} elem kiválasztva'';
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        ''Legfeljebb {n} elem választható'',
        ''A csoportban legfeljebb {n} elem választható''
      ];
    },
    selectAllText: ''Mind'',
    deselectAllText: ''Egyik sem'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsidIDJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-id_ID.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsidIDJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsidIDJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Tidak ada yang dipilih'',
    noneResultsText: ''Tidak ada yang cocok {0}'',
    countSelectedText: ''{0} terpilih'',
    maxOptionsText: [''Mencapai batas (maksimum {n})'', ''Mencapai batas grup (maksimum {n})''],
    selectAllText: ''Pilih Semua'',
    deselectAllText: ''Hapus Semua'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsitITJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-it_IT.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsitITJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsitITJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Nessuna selezione'',
    noneResultsText: ''Nessun risultato per {0}'',
    countSelectedText: function (numSelected, numTotal){
      return (numSelected == 1) ? ''Selezionato {0} di {1}'' : ''Selezionati {0} di {1}'';
    },
    maxOptionsText: [''Limite raggiunto ({n} {var} max)'', ''Limite del gruppo raggiunto ({n} {var} max)'', [''elementi'', ''elemento'']],
    multipleSeparator: '', '',
    selectAllText: ''Seleziona Tutto'',
    deselectAllText: ''Deseleziona Tutto''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsjaJPJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-ja_JP.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsjaJPJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsjaJPJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''何もが選択した'',
    noneResultsText: ''\''{0}\''が結果を返さない'',
    countSelectedText: ''{0}/{1}が選択した'',
    maxOptionsText: [''限界は達した({n}{var}最大)'', ''限界をグループは達した({n}{var}最大)'', [''アイテム'', ''アイテム'']],
    selectAllText: ''全部を選択する'',
    deselectAllText: ''何も選択しない'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultskhKMJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-kh_KM.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultskhKMJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultskhKMJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''មិនមានអ្វីបានជ្រើសរើស'',
    noneResultsText: ''មិនមានលទ្ធផល {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? "{0} ធាតុដែលបានជ្រើស" : "{0} ធាតុដែលបានជ្រើស";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        (numAll == 1) ? ''ឈានដល់ដែនកំណត់ ( {n} ធាតុអតិបរមា)'' : ''អតិបរមាឈានដល់ដែនកំណត់ ( {n} ធាតុ)'',
        (numGroup == 1) ? ''ដែនកំណត់ក្រុមឈានដល់ ( {n} អតិបរមាធាតុ)'' : ''អតិបរមាក្រុមឈានដល់ដែនកំណត់ ( {n} ធាតុ)''
      ];
    },
    selectAllText: ''ជ្រើស​យក​ទាំងអស់'',
    deselectAllText: ''មិនជ្រើស​យក​ទាំងអស'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultskoKRJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-ko_KR.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultskoKRJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultskoKRJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''항목을 선택해주세요'',
    noneResultsText: ''{0} 검색 결과가 없습니다'',
    countSelectedText: function (numSelected, numTotal) {
      return "{0}개를 선택하였습니다";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        ''{n}개까지 선택 가능합니다'',
        ''해당 그룹은 {n}개까지 선택 가능합니다''
      ];
    },
    selectAllText: ''전체선택'',
    deselectAllText: ''전체해제'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsltLTJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-lt_LT.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsltLTJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsltLTJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Niekas nepasirinkta'',
    noneResultsText: ''Niekas nesutapo su {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? "{0} elementas pasirinktas" : "{0} elementai(-ų) pasirinkta";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        (numAll == 1) ? ''Pasiekta riba ({n} elementas daugiausiai)'' : ''Riba pasiekta ({n} elementai(-ų) daugiausiai)'',
        (numGroup == 1) ? ''Grupės riba pasiekta ({n} elementas daugiausiai)'' : ''Grupės riba pasiekta ({n} elementai(-ų) daugiausiai)''
      ];
    },
    selectAllText: ''Pasirinkti visus'',
    deselectAllText: ''Atmesti visus'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsnbNOJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-nb_NO.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsnbNOJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsnbNOJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Ingen valgt'',
    noneResultsText: ''Søket gir ingen treff {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? "{0} alternativ valgt" : "{0} alternativer valgt";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        (numAll == 1) ? ''Grense nådd (maks {n} valg)'' : ''Grense nådd (maks {n} valg)'',
        (numGroup == 1) ? ''Grense for grupper nådd (maks {n} grupper)'' : ''Grense for grupper nådd (maks {n} grupper)''
      ];
    },
    selectAllText: ''Merk alle'',
    deselectAllText: ''Fjern alle'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsnlNLJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-nl_NL.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsnlNLJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsnlNLJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Niets geselecteerd'',
    noneResultsText: ''Geen resultaten gevonden voor {0}'',
    countSelectedText: ''{0} van {1} geselecteerd'',
    maxOptionsText: [''Limiet bereikt ({n} {var} max)'', ''Groep limiet bereikt ({n} {var} max)'', [''items'', ''item'']],
    selectAllText: ''Alles selecteren'',
    deselectAllText: ''Alles deselecteren'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsplPLJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-pl_PL.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsplPLJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsplPLJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Nic nie zaznaczono'',
    noneResultsText: ''Brak wyników wyszukiwania {0}'',
    countSelectedText: ''Zaznaczono {0} z {1}'',
    maxOptionsText: [''Osiągnięto limit ({n} {var} max)'', ''Limit grupy osiągnięty ({n} {var} max)'', [''elementy'', ''element'']],
    selectAllText: ''Zaznacz wszystkie'',
    deselectAllText: ''Odznacz wszystkie'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsptBRJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-pt_BR.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsptBRJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsptBRJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Nada selecionado'',
    noneResultsText: ''Nada encontrado contendo {0}'',
    countSelectedText: ''Selecionado {0} de {1}'',
    maxOptionsText: [''Limite excedido (máx. {n} {var})'', ''Limite do grupo excedido (máx. {n} {var})'', [''itens'', ''item'']],
    multipleSeparator: '', '',
    selectAllText: ''Selecionar Todos'',
    deselectAllText: ''Desmarcar Todos''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsptPTJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-pt_PT.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsptPTJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsptPTJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
$.fn.selectpicker.defaults = {
	noneSelectedText: ''Nenhum seleccionado'',
	noneResultsText: ''Sem resultados contendo {0}'',
	countSelectedText: ''Selecionado {0} de {1}'',
	maxOptionsText: [''Limite ultrapassado (máx. {n} {var})'', ''Limite de seleções ultrapassado (máx. {n} {var})'', [''itens'', ''item'']],
    multipleSeparator: '', '',
    selectAllText: ''Selecionar Tudo'',
    deselectAllText: ''Desmarcar Todos''
};
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsroROJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-ro_RO.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsroROJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsroROJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    doneButtonText: ''Închide'',
    noneSelectedText: ''Nu a fost selectat nimic'',
    noneResultsText: ''Nu există niciun rezultat {0}'',
    countSelectedText: ''{0} din {1} selectat(e)'',
    maxOptionsText: [''Limita a fost atinsă ({n} {var} max)'', ''Limita de grup a fost atinsă ({n} {var} max)'', [''iteme'', ''item'']],
    selectAllText: ''Selectează toate'',
    deselectAllText: ''Deselectează toate'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsruRUJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-ru_RU.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsruRUJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsruRUJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Ничего не выбрано'',
    noneResultsText: ''Совпадений не найдено {0}'',
    countSelectedText: ''Выбрано {0} из {1}'',
    maxOptionsText: [''Достигнут предел ({n} {var} максимум)'', ''Достигнут предел в группе ({n} {var} максимум)'', [''шт.'', ''шт.'']],
    doneButtonText: ''Закрыть'',
    selectAllText: ''Выбрать все'',
    deselectAllText: ''Отменить все'',    
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsskSKJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-sk_SK.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsskSKJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsskSKJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Vyberte zo zoznamu'',
    noneResultsText: ''Pre výraz {0} neboli nájdené žiadne výsledky'',
    countSelectedText: ''Vybrané {0} z {1}'',
    maxOptionsText: [''Limit prekročený ({n} {var} max)'', ''Limit skupiny prekročený ({n} {var} max)'', [''položiek'', ''položka'']],
    selectAllText: ''Vybrať všetky'',
    deselectAllText: ''Zrušiť výber'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsslSIJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-sl_SI.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsslSIJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsslSIJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Nič izbranega'',
    noneResultsText: ''Ni zadetkov za {0}'',
    countSelectedText: ''{0} od {1} izbranih'',
    maxOptionsText: function (numAll, numGroup) {
      return [
        ''Omejitev dosežena (max. izbranih: {n})'',
        ''Omejitev skupine dosežena (max. izbranih: {n})''
      ];
    },
    selectAllText: ''Izberi vse'',
    deselectAllText: ''Počisti izbor'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultssvSEJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-sv_SE.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultssvSEJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultssvSEJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Inget valt'',
    noneResultsText: ''Inget sökresultat matchar {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected === 1) ? "{0} alternativ valt" : "{0} alternativ valda";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        ''Gräns uppnåd (max {n} alternativ)'',
        ''Gräns uppnåd (max {n} gruppalternativ)''
      ];
    },
    selectAllText: ''Markera alla'',
    deselectAllText: ''Avmarkera alla'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultstrTRJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-tr_TR.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultstrTRJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultstrTRJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Hiçbiri seçilmedi'',
    noneResultsText: ''Hiçbir sonuç bulunamadı {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? "{0} öğe seçildi" : "{0} öğe seçildi";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        (numAll == 1) ? ''Limit aşıldı (maksimum {n} sayıda öğe )'' : ''Limit aşıldı (maksimum {n} sayıda öğe)'',
        (numGroup == 1) ? ''Grup limiti aşıldı (maksimum {n} sayıda öğe)'' : ''Grup limiti aşıldı (maksimum {n} sayıda öğe)''
      ];
    },
    selectAllText: ''Tümünü Seç'',
    deselectAllText: ''Seçiniz'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsuaUAJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-ua_UA.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsuaUAJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsuaUAJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Нічого не вибрано'',
    noneResultsText: ''Збігів не знайдено {0}'',
    countSelectedText: ''Вибрано {0} із {1}'',
    maxOptionsText: [''Досягнута межа ({n} {var} максимум)'', ''Досягнута межа в групі ({n} {var} максимум)'', [''items'', ''item'']],
    multipleSeparator: '', '',
    selectAllText: ''Вибрати все'',
    deselectAllText: ''Скасувати вибір усі''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsviVNJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-vi_VN.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsviVNJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsviVNJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''Chưa chọn'',
    noneResultsText: ''Không có kết quả cho {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return "{0} mục đã chọn";
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        ''Không thể chọn (giới hạn {n} mục)'',
        ''Không thể chọn (giới hạn {n} mục)''
      ];
    },
    selectAllText: ''Chọn tất cả'',
    deselectAllText: ''Bỏ chọn'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultszhCNJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-zh_CN.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultszhCNJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultszhCNJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''没有选中任何项'',
    noneResultsText: ''没有找到匹配项'',
    countSelectedText: ''选中{1}中的{0}项'',
    maxOptionsText: [''超出限制 (最多选择{n}项)'', ''组选择超出限制(最多选择{n}组)''],
    multipleSeparator: '', '',
    selectAllText: ''全选'',
    deselectAllText: ''取消全选''
  };
})(jQuery);


}));
'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultszhTWJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-zh_TW.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultszhTWJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultszhTWJsContent [
	^ '/*!
 * Bootstrap-select v1.12.4 (http://silviomoreto.github.io/bootstrap-select)
 *
 * Copyright 2013-2017 bootstrap-select
 * Licensed under MIT (https://github.com/silviomoreto/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (typeof define === ''function'' && define.amd) {
    // AMD. Register as an anonymous module unless amdModuleId is set
    define(["jquery"], function (a0) {
      return (factory(a0));
    });
  } else if (typeof module === ''object'' && module.exports) {
    // Node. Does not work with strict CommonJS, but
    // only CommonJS-like environments that support module.exports,
    // like Node.
    module.exports = factory(require("jquery"));
  } else {
    factory(root["jQuery"]);
  }
}(this, function (jQuery) {

(function ($) {
  $.fn.selectpicker.defaults = {
    noneSelectedText: ''沒有選取任何項目'',
    noneResultsText: ''沒有找到符合的結果'',
    countSelectedText: ''已經選取{0}個項目'',
    maxOptionsText: [''超過限制 (最多選擇{n}項)'', ''超過限制(最多選擇{n}組)''],
    selectAllText: ''選取全部'',
    deselectAllText: ''全部取消'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
'
]

{ #category : #accessing }
BootstrapSelectDevelopmentLibrary >> selectorsToInclude [

	^ OrderedCollection new
		addAll: #(cssbootstrapselectCss jsbootstrapselectJs);
		add: ('jsi18n<1s>Js' expandMacrosWith: ((BootstrapSelectLanguageToFileNameTranslator new fileNameFrom: locale) select: #isLetter)) asSymbol;
		asArray
]
