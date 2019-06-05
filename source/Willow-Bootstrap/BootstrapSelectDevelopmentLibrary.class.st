"
I'm a WALibary serving the files in source form, suitable for development
"
Class {
	#name : #BootstrapSelectDevelopmentLibrary,
	#superclass : #BootstrapSelectLibrary,
	#category : #'Willow-Bootstrap-Select'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

select.bs-select-hidden,
.bootstrap-select > select.bs-select-hidden,
select.selectpicker {
  display: none !important;
}
.bootstrap-select {
  width: 220px \0;
  /*IE9 and below*/
  vertical-align: middle;
}
.bootstrap-select > .dropdown-toggle {
  position: relative;
  width: 100%;
  text-align: right;
  white-space: nowrap;
  display: -webkit-inline-box;
  display: -webkit-inline-flex;
  display: -ms-inline-flexbox;
  display: inline-flex;
  -webkit-box-align: center;
  -webkit-align-items: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-box-pack: justify;
  -webkit-justify-content: space-between;
      -ms-flex-pack: justify;
          justify-content: space-between;
}
.bootstrap-select > .dropdown-toggle:after {
  margin-top: -1px;
}
.bootstrap-select > .dropdown-toggle.bs-placeholder,
.bootstrap-select > .dropdown-toggle.bs-placeholder:hover,
.bootstrap-select > .dropdown-toggle.bs-placeholder:focus,
.bootstrap-select > .dropdown-toggle.bs-placeholder:active {
  color: #999;
}
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-primary,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-secondary,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-success,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-danger,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-info,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-dark,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-primary:hover,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-secondary:hover,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-success:hover,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-danger:hover,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-info:hover,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-dark:hover,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-primary:focus,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-secondary:focus,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-success:focus,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-danger:focus,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-info:focus,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-dark:focus,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-primary:active,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-secondary:active,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-success:active,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-danger:active,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-info:active,
.bootstrap-select > .dropdown-toggle.bs-placeholder.btn-dark:active {
  color: rgba(255, 255, 255, 0.5);
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
  z-index: 0 !important;
}
.bootstrap-select > select.mobile-device {
  top: 0;
  left: 0;
  display: block !important;
  width: 100% !important;
  z-index: 2 !important;
}
.has-error .bootstrap-select .dropdown-toggle,
.error .bootstrap-select .dropdown-toggle,
.bootstrap-select.is-invalid .dropdown-toggle,
.was-validated .bootstrap-select .selectpicker:invalid + .dropdown-toggle {
  border-color: #b94a48;
}
.bootstrap-select.is-valid .dropdown-toggle,
.was-validated .bootstrap-select .selectpicker:valid + .dropdown-toggle {
  border-color: #28a745;
}
.bootstrap-select.fit-width {
  width: auto !important;
}
.bootstrap-select:not([class*="col-"]):not([class*="form-control"]):not(.input-group-btn) {
  width: 220px;
}
.bootstrap-select > select.mobile-device:focus + .dropdown-toggle,
.bootstrap-select .dropdown-toggle:focus {
  outline: thin dotted #333333 !important;
  outline: 5px auto -webkit-focus-ring-color !important;
  outline-offset: -2px;
}
.bootstrap-select.form-control {
  margin-bottom: 0;
  padding: 0;
  border: none;
  height: auto;
}
:not(.input-group) > .bootstrap-select.form-control:not([class*="col-"]) {
  width: 100%;
}
.bootstrap-select.form-control.input-group-btn {
  float: none;
  z-index: auto;
}
.form-inline .bootstrap-select,
.form-inline .bootstrap-select.form-control:not([class*="col-"]) {
  width: auto;
}
.bootstrap-select:not(.input-group-btn),
.bootstrap-select[class*="col-"] {
  float: none;
  display: inline-block;
  margin-left: 0;
}
.bootstrap-select.dropdown-menu-right,
.bootstrap-select[class*="col-"].dropdown-menu-right,
.row .bootstrap-select[class*="col-"].dropdown-menu-right {
  float: right;
}
.form-inline .bootstrap-select,
.form-horizontal .bootstrap-select,
.form-group .bootstrap-select {
  margin-bottom: 0;
}
.form-group-lg .bootstrap-select.form-control,
.form-group-sm .bootstrap-select.form-control {
  padding: 0;
}
.form-group-lg .bootstrap-select.form-control .dropdown-toggle,
.form-group-sm .bootstrap-select.form-control .dropdown-toggle {
  height: 100%;
  font-size: inherit;
  line-height: inherit;
  border-radius: inherit;
}
.bootstrap-select.form-control-sm .dropdown-toggle,
.bootstrap-select.form-control-lg .dropdown-toggle {
  font-size: inherit;
  line-height: inherit;
  border-radius: inherit;
}
.bootstrap-select.form-control-sm .dropdown-toggle {
  padding: 0.25rem 0.5rem;
}
.bootstrap-select.form-control-lg .dropdown-toggle {
  padding: 0.5rem 1rem;
}
.form-inline .bootstrap-select .form-control {
  width: 100%;
}
.bootstrap-select.disabled,
.bootstrap-select > .disabled {
  cursor: not-allowed;
}
.bootstrap-select.disabled:focus,
.bootstrap-select > .disabled:focus {
  outline: none !important;
}
.bootstrap-select.bs-container {
  position: absolute;
  top: 0;
  left: 0;
  height: 0 !important;
  padding: 0 !important;
}
.bootstrap-select.bs-container .dropdown-menu {
  z-index: 1060;
}
.bootstrap-select .dropdown-toggle .filter-option {
  position: static;
  top: 0;
  left: 0;
  float: left;
  height: 100%;
  width: 100%;
  text-align: left;
  overflow: hidden;
  -webkit-box-flex: 0;
  -webkit-flex: 0 1 auto;
      -ms-flex: 0 1 auto;
          flex: 0 1 auto;
}
.bs3.bootstrap-select .dropdown-toggle .filter-option {
  padding-right: inherit;
}
.input-group .bs3-has-addon.bootstrap-select .dropdown-toggle .filter-option {
  position: absolute;
  padding-top: inherit;
  padding-bottom: inherit;
  padding-left: inherit;
  float: none;
}
.input-group .bs3-has-addon.bootstrap-select .dropdown-toggle .filter-option .filter-option-inner {
  padding-right: inherit;
}
.bootstrap-select .dropdown-toggle .filter-option-inner-inner {
  overflow: hidden;
}
.bootstrap-select .dropdown-toggle .filter-expand {
  width: 0 !important;
  float: left;
  opacity: 0 !important;
  overflow: hidden;
}
.bootstrap-select .dropdown-toggle .caret {
  position: absolute;
  top: 50%;
  right: 12px;
  margin-top: -2px;
  vertical-align: middle;
}
.input-group .bootstrap-select.form-control .dropdown-toggle {
  border-radius: inherit;
}
.bootstrap-select[class*="col-"] .dropdown-toggle {
  width: 100%;
}
.bootstrap-select .dropdown-menu {
  min-width: 100%;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
.bootstrap-select .dropdown-menu > .inner:focus {
  outline: none !important;
}
.bootstrap-select .dropdown-menu.inner {
  position: static;
  float: none;
  border: 0;
  padding: 0;
  margin: 0;
  border-radius: 0;
  -webkit-box-shadow: none;
          box-shadow: none;
}
.bootstrap-select .dropdown-menu li {
  position: relative;
}
.bootstrap-select .dropdown-menu li.active small {
  color: rgba(255, 255, 255, 0.5) !important;
}
.bootstrap-select .dropdown-menu li.disabled a {
  cursor: not-allowed;
}
.bootstrap-select .dropdown-menu li a {
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.bootstrap-select .dropdown-menu li a.opt {
  position: relative;
  padding-left: 2.25em;
}
.bootstrap-select .dropdown-menu li a span.check-mark {
  display: none;
}
.bootstrap-select .dropdown-menu li a span.text {
  display: inline-block;
}
.bootstrap-select .dropdown-menu li small {
  padding-left: 0.5em;
}
.bootstrap-select .dropdown-menu .notify {
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
.bootstrap-select .no-results {
  padding: 3px;
  background: #f5f5f5;
  margin: 0 5px;
  white-space: nowrap;
}
.bootstrap-select.fit-width .dropdown-toggle .filter-option {
  position: static;
  display: inline;
  padding: 0;
}
.bootstrap-select.fit-width .dropdown-toggle .filter-option-inner,
.bootstrap-select.fit-width .dropdown-toggle .filter-option-inner-inner {
  display: inline;
}
.bootstrap-select.fit-width .dropdown-toggle .bs-caret:before {
  content: ''\00a0'';
}
.bootstrap-select.fit-width .dropdown-toggle .caret {
  position: static;
  top: auto;
  margin-top: -1px;
}
.bootstrap-select.show-tick .dropdown-menu .selected span.check-mark {
  position: absolute;
  display: inline-block;
  right: 15px;
  top: 5px;
}
.bootstrap-select.show-tick .dropdown-menu li a span.text {
  margin-right: 34px;
}
.bootstrap-select .bs-ok-default:after {
  content: '''';
  display: block;
  width: 0.5em;
  height: 1em;
  border-style: solid;
  border-width: 0 0.26em 0.26em 0;
  -webkit-transform: rotate(45deg);
      -ms-transform: rotate(45deg);
       -o-transform: rotate(45deg);
          transform: rotate(45deg);
}
.bootstrap-select.show-menu-arrow.open > .dropdown-toggle,
.bootstrap-select.show-menu-arrow.show > .dropdown-toggle {
  z-index: 1061;
}
.bootstrap-select.show-menu-arrow .dropdown-toggle .filter-option:before {
  content: '''';
  border-left: 7px solid transparent;
  border-right: 7px solid transparent;
  border-bottom: 7px solid rgba(204, 204, 204, 0.2);
  position: absolute;
  bottom: -4px;
  left: 9px;
  display: none;
}
.bootstrap-select.show-menu-arrow .dropdown-toggle .filter-option:after {
  content: '''';
  border-left: 6px solid transparent;
  border-right: 6px solid transparent;
  border-bottom: 6px solid white;
  position: absolute;
  bottom: -4px;
  left: 10px;
  display: none;
}
.bootstrap-select.show-menu-arrow.dropup .dropdown-toggle .filter-option:before {
  bottom: auto;
  top: -4px;
  border-top: 7px solid rgba(204, 204, 204, 0.2);
  border-bottom: 0;
}
.bootstrap-select.show-menu-arrow.dropup .dropdown-toggle .filter-option:after {
  bottom: auto;
  top: -4px;
  border-top: 6px solid white;
  border-bottom: 0;
}
.bootstrap-select.show-menu-arrow.pull-right .dropdown-toggle .filter-option:before {
  right: 12px;
  left: auto;
}
.bootstrap-select.show-menu-arrow.pull-right .dropdown-toggle .filter-option:after {
  right: 13px;
  left: auto;
}
.bootstrap-select.show-menu-arrow.open > .dropdown-toggle .filter-option:before,
.bootstrap-select.show-menu-arrow.show > .dropdown-toggle .filter-option:before,
.bootstrap-select.show-menu-arrow.open > .dropdown-toggle .filter-option:after,
.bootstrap-select.show-menu-arrow.show > .dropdown-toggle .filter-option:after {
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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

  var DISALLOWED_ATTRIBUTES = [''sanitize'', ''whiteList'', ''sanitizeFn''];

  var uriAttrs = [
    ''background'',
    ''cite'',
    ''href'',
    ''itemtype'',
    ''longdesc'',
    ''poster'',
    ''src'',
    ''xlink:href''
  ];

  var ARIA_ATTRIBUTE_PATTERN = /^aria-[\w-]*$/i;

  var DefaultWhitelist = {
    // Global attributes allowed on any supplied element below.
    ''*'': [''class'', ''dir'', ''id'', ''lang'', ''role'', ''tabindex'', ''style'', ARIA_ATTRIBUTE_PATTERN],
    a: [''target'', ''href'', ''title'', ''rel''],
    area: [],
    b: [],
    br: [],
    col: [],
    code: [],
    div: [],
    em: [],
    hr: [],
    h1: [],
    h2: [],
    h3: [],
    h4: [],
    h5: [],
    h6: [],
    i: [],
    img: [''src'', ''alt'', ''title'', ''width'', ''height''],
    li: [],
    ol: [],
    p: [],
    pre: [],
    s: [],
    small: [],
    span: [],
    sub: [],
    sup: [],
    strong: [],
    u: [],
    ul: []
  }

  /**
   * A pattern that recognizes a commonly useful subset of URLs that are safe.
   *
   * Shoutout to Angular 7 https://github.com/angular/angular/blob/7.2.4/packages/core/src/sanitization/url_sanitizer.ts
   */
  var SAFE_URL_PATTERN = /^(?:(?:https?|mailto|ftp|tel|file):|[^&:/?#]*(?:[/?#]|$))/gi;

  /**
   * A pattern that matches safe data URLs. Only matches image, video and audio types.
   *
   * Shoutout to Angular 7 https://github.com/angular/angular/blob/7.2.4/packages/core/src/sanitization/url_sanitizer.ts
   */
  var DATA_URL_PATTERN = /^data:(?:image\/(?:bmp|gif|jpeg|jpg|png|tiff|webp)|video\/(?:mpeg|mp4|ogg|webm)|audio\/(?:mp3|oga|ogg|opus));base64,[a-z0-9+/]+=*$/i;

  function allowedAttribute (attr, allowedAttributeList) {
    var attrName = attr.nodeName.toLowerCase()

    if ($.inArray(attrName, allowedAttributeList) !== -1) {
      if ($.inArray(attrName, uriAttrs) !== -1) {
        return Boolean(attr.nodeValue.match(SAFE_URL_PATTERN) || attr.nodeValue.match(DATA_URL_PATTERN))
      }

      return true
    }

    var regExp = $(allowedAttributeList).filter(function (index, value) {
      return value instanceof RegExp
    })

    // Check if a regular expression validates the attribute.
    for (var i = 0, l = regExp.length; i < l; i++) {
      if (attrName.match(regExp[i])) {
        return true
      }
    }

    return false
  }

  function sanitizeHtml (unsafeElements, whiteList, sanitizeFn) {
    if (sanitizeFn && typeof sanitizeFn === ''function'') {
      return sanitizeFn(unsafeElements);
    }

    var whitelistKeys = Object.keys(whiteList);

    for (var i = 0, len = unsafeElements.length; i < len; i++) {
      var elements = unsafeElements[i].querySelectorAll(''*'');

      for (var j = 0, len2 = elements.length; j < len2; j++) {
        var el = elements[j];
        var elName = el.nodeName.toLowerCase();

        if (whitelistKeys.indexOf(elName) === -1) {
          el.parentNode.removeChild(el);

          continue;
        }

        var attributeList = [].slice.call(el.attributes);
        var whitelistedAttributes = [].concat(whiteList[''*''] || [], whiteList[elName] || []);

        for (var k = 0, len3 = attributeList.length; k < len3; k++) {
          var attr = attributeList[k];

          if (!allowedAttribute(attr, whitelistedAttributes)) {
            el.removeAttribute(attr.nodeName);
          }
        }
      }
    }
  }

  // Polyfill for browsers with no classList support
  // Remove in v2
  if (!(''classList'' in document.createElement(''_''))) {
    (function (view) {
      if (!(''Element'' in view)) return;

      var classListProp = ''classList'',
          protoProp = ''prototype'',
          elemCtrProto = view.Element[protoProp],
          objCtr = Object,
          classListGetter = function () {
            var $elem = $(this);

            return {
              add: function (classes) {
                classes = Array.prototype.slice.call(arguments).join('' '');
                return $elem.addClass(classes);
              },
              remove: function (classes) {
                classes = Array.prototype.slice.call(arguments).join('' '');
                return $elem.removeClass(classes);
              },
              toggle: function (classes, force) {
                return $elem.toggleClass(classes, force);
              },
              contains: function (classes) {
                return $elem.hasClass(classes);
              }
            }
          };

      if (objCtr.defineProperty) {
        var classListPropDesc = {
          get: classListGetter,
          enumerable: true,
          configurable: true
        };
        try {
          objCtr.defineProperty(elemCtrProto, classListProp, classListPropDesc);
        } catch (ex) { // IE 8 doesn''t support enumerable:true
          // adding undefined to fight this issue https://github.com/eligrey/classList.js/issues/36
          // modernie IE8-MSW7 machine has IE8 8.0.6001.18702 and is affected
          if (ex.number === undefined || ex.number === -0x7FF5EC54) {
            classListPropDesc.enumerable = false;
            objCtr.defineProperty(elemCtrProto, classListProp, classListPropDesc);
          }
        }
      } else if (objCtr[protoProp].__defineGetter__) {
        elemCtrProto.__defineGetter__(classListProp, classListGetter);
      }
    }(window));
  }

  var testElement = document.createElement(''_'');

  testElement.classList.add(''c1'', ''c2'');

  if (!testElement.classList.contains(''c2'')) {
    var _add = DOMTokenList.prototype.add,
        _remove = DOMTokenList.prototype.remove;

    DOMTokenList.prototype.add = function () {
      Array.prototype.forEach.call(arguments, _add.bind(this));
    }

    DOMTokenList.prototype.remove = function () {
      Array.prototype.forEach.call(arguments, _remove.bind(this));
    }
  }

  testElement.classList.toggle(''c3'', false);

  // Polyfill for IE 10 and Firefox <24, where classList.toggle does not
  // support the second argument.
  if (testElement.classList.contains(''c3'')) {
    var _toggle = DOMTokenList.prototype.toggle;

    DOMTokenList.prototype.toggle = function (token, force) {
      if (1 in arguments && !this.contains(token) === !force) {
        return force;
      } else {
        return _toggle.call(this, token);
      }
    };
  }

  testElement = null;

  // shallow array comparison
  function isEqual (array1, array2) {
    return array1.length === array2.length && array1.every(function (element, index) {
      return element === array2[index];
    });
  };

  // <editor-fold desc="Shims">
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
    ) {
      // initialize object and result
      r = [];
      // iterate over object keys
      for (k in o) {
        // fill result array with non-prototypical keys
        r.hasOwnProperty.call(o, k) && r.push(k);
      }
      // return result
      return r;
    };
  }

  if (HTMLSelectElement && !HTMLSelectElement.prototype.hasOwnProperty(''selectedOptions'')) {
    Object.defineProperty(HTMLSelectElement.prototype, ''selectedOptions'', {
      get: function () {
        return this.querySelectorAll('':checked'');
      }
    });
  }

  function getSelectedOptions (select, ignoreDisabled) {
    var selectedOptions = select.selectedOptions,
        options = [],
        opt;

    if (ignoreDisabled) {
      for (var i = 0, len = selectedOptions.length; i < len; i++) {
        opt = selectedOptions[i];

        if (!(opt.disabled || opt.parentNode.tagName === ''OPTGROUP'' && opt.parentNode.disabled)) {
          options.push(opt);
        }
      }

      return options;
    }

    return selectedOptions;
  }

  // much faster than $.val()
  function getSelectValues (select, selectedOptions) {
    var value = [],
        options = selectedOptions || select.selectedOptions,
        opt;

    for (var i = 0, len = options.length; i < len; i++) {
      opt = options[i];

      if (!(opt.disabled || opt.parentNode.tagName === ''OPTGROUP'' && opt.parentNode.disabled)) {
        value.push(opt.value || opt.text);
      }
    }

    if (!select.multiple) {
      return !value.length ? null : value[0];
    }

    return value;
  }

  // set data-selected on select element if the value has been programmatically selected
  // prior to initialization of bootstrap-select
  // * consider removing or replacing an alternative method *
  var valHooks = {
    useDefault: false,
    _set: $.valHooks.select.set
  };

  $.valHooks.select.set = function (elem, value) {
    if (value && !valHooks.useDefault) $(elem).data(''selected'', true);

    return valHooks._set.apply(this, arguments);
  };

  var changedArguments = null;

  var EventIsSupported = (function () {
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
  // </editor-fold>

  function stringSearch (li, searchString, method, normalize) {
    var stringTypes = [
          ''display'',
          ''subtext'',
          ''tokens''
        ],
        searchSuccess = false;

    for (var i = 0; i < stringTypes.length; i++) {
      var stringType = stringTypes[i],
          string = li[stringType];

      if (string) {
        string = string.toString();

        // Strip HTML tags. This isn''t perfect, but it''s much faster than any other method
        if (stringType === ''display'') {
          string = string.replace(/<[^>]+>/g, '''');
        }

        if (normalize) string = normalizeToBase(string);
        string = string.toUpperCase();

        if (method === ''contains'') {
          searchSuccess = string.indexOf(searchString) >= 0;
        } else {
          searchSuccess = string.startsWith(searchString);
        }

        if (searchSuccess) break;
      }
    }

    return searchSuccess;
  }

  function toInteger (value) {
    return parseInt(value, 10) || 0;
  }

  // Borrowed from Lodash (_.deburr)
  /** Used to map Latin Unicode letters to basic Latin letters. */
  var deburredLetters = {
    // Latin-1 Supplement block.
    ''\xc0'': ''A'',  ''\xc1'': ''A'', ''\xc2'': ''A'', ''\xc3'': ''A'', ''\xc4'': ''A'', ''\xc5'': ''A'',
    ''\xe0'': ''a'',  ''\xe1'': ''a'', ''\xe2'': ''a'', ''\xe3'': ''a'', ''\xe4'': ''a'', ''\xe5'': ''a'',
    ''\xc7'': ''C'',  ''\xe7'': ''c'',
    ''\xd0'': ''D'',  ''\xf0'': ''d'',
    ''\xc8'': ''E'',  ''\xc9'': ''E'', ''\xca'': ''E'', ''\xcb'': ''E'',
    ''\xe8'': ''e'',  ''\xe9'': ''e'', ''\xea'': ''e'', ''\xeb'': ''e'',
    ''\xcc'': ''I'',  ''\xcd'': ''I'', ''\xce'': ''I'', ''\xcf'': ''I'',
    ''\xec'': ''i'',  ''\xed'': ''i'', ''\xee'': ''i'', ''\xef'': ''i'',
    ''\xd1'': ''N'',  ''\xf1'': ''n'',
    ''\xd2'': ''O'',  ''\xd3'': ''O'', ''\xd4'': ''O'', ''\xd5'': ''O'', ''\xd6'': ''O'', ''\xd8'': ''O'',
    ''\xf2'': ''o'',  ''\xf3'': ''o'', ''\xf4'': ''o'', ''\xf5'': ''o'', ''\xf6'': ''o'', ''\xf8'': ''o'',
    ''\xd9'': ''U'',  ''\xda'': ''U'', ''\xdb'': ''U'', ''\xdc'': ''U'',
    ''\xf9'': ''u'',  ''\xfa'': ''u'', ''\xfb'': ''u'', ''\xfc'': ''u'',
    ''\xdd'': ''Y'',  ''\xfd'': ''y'', ''\xff'': ''y'',
    ''\xc6'': ''Ae'', ''\xe6'': ''ae'',
    ''\xde'': ''Th'', ''\xfe'': ''th'',
    ''\xdf'': ''ss'',
    // Latin Extended-A block.
    ''\u0100'': ''A'',  ''\u0102'': ''A'', ''\u0104'': ''A'',
    ''\u0101'': ''a'',  ''\u0103'': ''a'', ''\u0105'': ''a'',
    ''\u0106'': ''C'',  ''\u0108'': ''C'', ''\u010a'': ''C'', ''\u010c'': ''C'',
    ''\u0107'': ''c'',  ''\u0109'': ''c'', ''\u010b'': ''c'', ''\u010d'': ''c'',
    ''\u010e'': ''D'',  ''\u0110'': ''D'', ''\u010f'': ''d'', ''\u0111'': ''d'',
    ''\u0112'': ''E'',  ''\u0114'': ''E'', ''\u0116'': ''E'', ''\u0118'': ''E'', ''\u011a'': ''E'',
    ''\u0113'': ''e'',  ''\u0115'': ''e'', ''\u0117'': ''e'', ''\u0119'': ''e'', ''\u011b'': ''e'',
    ''\u011c'': ''G'',  ''\u011e'': ''G'', ''\u0120'': ''G'', ''\u0122'': ''G'',
    ''\u011d'': ''g'',  ''\u011f'': ''g'', ''\u0121'': ''g'', ''\u0123'': ''g'',
    ''\u0124'': ''H'',  ''\u0126'': ''H'', ''\u0125'': ''h'', ''\u0127'': ''h'',
    ''\u0128'': ''I'',  ''\u012a'': ''I'', ''\u012c'': ''I'', ''\u012e'': ''I'', ''\u0130'': ''I'',
    ''\u0129'': ''i'',  ''\u012b'': ''i'', ''\u012d'': ''i'', ''\u012f'': ''i'', ''\u0131'': ''i'',
    ''\u0134'': ''J'',  ''\u0135'': ''j'',
    ''\u0136'': ''K'',  ''\u0137'': ''k'', ''\u0138'': ''k'',
    ''\u0139'': ''L'',  ''\u013b'': ''L'', ''\u013d'': ''L'', ''\u013f'': ''L'', ''\u0141'': ''L'',
    ''\u013a'': ''l'',  ''\u013c'': ''l'', ''\u013e'': ''l'', ''\u0140'': ''l'', ''\u0142'': ''l'',
    ''\u0143'': ''N'',  ''\u0145'': ''N'', ''\u0147'': ''N'', ''\u014a'': ''N'',
    ''\u0144'': ''n'',  ''\u0146'': ''n'', ''\u0148'': ''n'', ''\u014b'': ''n'',
    ''\u014c'': ''O'',  ''\u014e'': ''O'', ''\u0150'': ''O'',
    ''\u014d'': ''o'',  ''\u014f'': ''o'', ''\u0151'': ''o'',
    ''\u0154'': ''R'',  ''\u0156'': ''R'', ''\u0158'': ''R'',
    ''\u0155'': ''r'',  ''\u0157'': ''r'', ''\u0159'': ''r'',
    ''\u015a'': ''S'',  ''\u015c'': ''S'', ''\u015e'': ''S'', ''\u0160'': ''S'',
    ''\u015b'': ''s'',  ''\u015d'': ''s'', ''\u015f'': ''s'', ''\u0161'': ''s'',
    ''\u0162'': ''T'',  ''\u0164'': ''T'', ''\u0166'': ''T'',
    ''\u0163'': ''t'',  ''\u0165'': ''t'', ''\u0167'': ''t'',
    ''\u0168'': ''U'',  ''\u016a'': ''U'', ''\u016c'': ''U'', ''\u016e'': ''U'', ''\u0170'': ''U'', ''\u0172'': ''U'',
    ''\u0169'': ''u'',  ''\u016b'': ''u'', ''\u016d'': ''u'', ''\u016f'': ''u'', ''\u0171'': ''u'', ''\u0173'': ''u'',
    ''\u0174'': ''W'',  ''\u0175'': ''w'',
    ''\u0176'': ''Y'',  ''\u0177'': ''y'', ''\u0178'': ''Y'',
    ''\u0179'': ''Z'',  ''\u017b'': ''Z'', ''\u017d'': ''Z'',
    ''\u017a'': ''z'',  ''\u017c'': ''z'', ''\u017e'': ''z'',
    ''\u0132'': ''IJ'', ''\u0133'': ''ij'',
    ''\u0152'': ''Oe'', ''\u0153'': ''oe'',
    ''\u0149'': "''n", ''\u017f'': ''s''
  };

  /** Used to match Latin Unicode letters (excluding mathematical operators). */
  var reLatin = /[\xc0-\xd6\xd8-\xf6\xf8-\xff\u0100-\u017f]/g;

  /** Used to compose unicode character classes. */
  var rsComboMarksRange = ''\\u0300-\\u036f'',
      reComboHalfMarksRange = ''\\ufe20-\\ufe2f'',
      rsComboSymbolsRange = ''\\u20d0-\\u20ff'',
      rsComboMarksExtendedRange = ''\\u1ab0-\\u1aff'',
      rsComboMarksSupplementRange = ''\\u1dc0-\\u1dff'',
      rsComboRange = rsComboMarksRange + reComboHalfMarksRange + rsComboSymbolsRange + rsComboMarksExtendedRange + rsComboMarksSupplementRange;

  /** Used to compose unicode capture groups. */
  var rsCombo = ''['' + rsComboRange + '']'';

  /**
   * Used to match [combining diacritical marks](https://en.wikipedia.org/wiki/Combining_Diacritical_Marks) and
   * [combining diacritical marks for symbols](https://en.wikipedia.org/wiki/Combining_Diacritical_Marks_for_Symbols).
   */
  var reComboMark = RegExp(rsCombo, ''g'');

  function deburrLetter (key) {
    return deburredLetters[key];
  };

  function normalizeToBase (string) {
    string = string.toString();
    return string && string.replace(reLatin, deburrLetter).replace(reComboMark, '''');
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

  // Functions for escaping and unescaping strings to/from HTML interpolation.
  var createEscaper = function (map) {
    var escaper = function (match) {
      return map[match];
    };
    // Regexes for identifying a key that needs to be escaped.
    var source = ''(?:'' + Object.keys(map).join(''|'') + '')'';
    var testRegexp = RegExp(source);
    var replaceRegexp = RegExp(source, ''g'');
    return function (string) {
      string = string == null ? '''' : '''' + string;
      return testRegexp.test(string) ? string.replace(replaceRegexp, escaper) : string;
    };
  };

  var htmlEscape = createEscaper(escapeMap);

  /**
   * ------------------------------------------------------------------------
   * Constants
   * ------------------------------------------------------------------------
   */

  var keyCodeMap = {
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
    65: ''A'',
    66: ''B'',
    67: ''C'',
    68: ''D'',
    69: ''E'',
    70: ''F'',
    71: ''G'',
    72: ''H'',
    73: ''I'',
    74: ''J'',
    75: ''K'',
    76: ''L'',
    77: ''M'',
    78: ''N'',
    79: ''O'',
    80: ''P'',
    81: ''Q'',
    82: ''R'',
    83: ''S'',
    84: ''T'',
    85: ''U'',
    86: ''V'',
    87: ''W'',
    88: ''X'',
    89: ''Y'',
    90: ''Z'',
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

  var keyCodes = {
    ESCAPE: 27, // KeyboardEvent.which value for Escape (Esc) key
    ENTER: 13, // KeyboardEvent.which value for Enter key
    SPACE: 32, // KeyboardEvent.which value for space key
    TAB: 9, // KeyboardEvent.which value for tab key
    ARROW_UP: 38, // KeyboardEvent.which value for up arrow key
    ARROW_DOWN: 40 // KeyboardEvent.which value for down arrow key
  }

  var version = {
    success: false,
    major: ''3''
  };

  try {
    version.full = ($.fn.dropdown.Constructor.VERSION || '''').split('' '')[0].split(''.'');
    version.major = version.full[0];
    version.success = true;
  } catch (err) {
    // do nothing
  }

  var selectId = 0;

  var EVENT_KEY = ''.bs.select'';

  var classNames = {
    DISABLED: ''disabled'',
    DIVIDER: ''divider'',
    SHOW: ''open'',
    DROPUP: ''dropup'',
    MENU: ''dropdown-menu'',
    MENURIGHT: ''dropdown-menu-right'',
    MENULEFT: ''dropdown-menu-left'',
    // to-do: replace with more advanced template/customization options
    BUTTONCLASS: ''btn-default'',
    POPOVERHEADER: ''popover-title'',
    ICONBASE: ''glyphicon'',
    TICKICON: ''glyphicon-ok''
  }

  var Selector = {
    MENU: ''.'' + classNames.MENU
  }

  var elementTemplates = {
    span: document.createElement(''span''),
    i: document.createElement(''i''),
    subtext: document.createElement(''small''),
    a: document.createElement(''a''),
    li: document.createElement(''li''),
    whitespace: document.createTextNode(''\u00A0''),
    fragment: document.createDocumentFragment()
  }

  elementTemplates.a.setAttribute(''role'', ''option'');
  elementTemplates.subtext.className = ''text-muted'';

  elementTemplates.text = elementTemplates.span.cloneNode(false);
  elementTemplates.text.className = ''text'';

  elementTemplates.checkMark = elementTemplates.span.cloneNode(false);

  var REGEXP_ARROW = new RegExp(keyCodes.ARROW_UP + ''|'' + keyCodes.ARROW_DOWN);
  var REGEXP_TAB_OR_ESCAPE = new RegExp(''^'' + keyCodes.TAB + ''$|'' + keyCodes.ESCAPE);

  var generateOption = {
    li: function (content, classes, optgroup) {
      var li = elementTemplates.li.cloneNode(false);

      if (content) {
        if (content.nodeType === 1 || content.nodeType === 11) {
          li.appendChild(content);
        } else {
          li.innerHTML = content;
        }
      }

      if (typeof classes !== ''undefined'' && classes !== '''') li.className = classes;
      if (typeof optgroup !== ''undefined'' && optgroup !== null) li.classList.add(''optgroup-'' + optgroup);

      return li;
    },

    a: function (text, classes, inline) {
      var a = elementTemplates.a.cloneNode(true);

      if (text) {
        if (text.nodeType === 11) {
          a.appendChild(text);
        } else {
          a.insertAdjacentHTML(''beforeend'', text);
        }
      }

      if (typeof classes !== ''undefined'' && classes !== '''') a.className = classes;
      if (version.major === ''4'') a.classList.add(''dropdown-item'');
      if (inline) a.setAttribute(''style'', inline);

      return a;
    },

    text: function (options, useFragment) {
      var textElement = elementTemplates.text.cloneNode(false),
          subtextElement,
          iconElement;

      if (options.content) {
        textElement.innerHTML = options.content;
      } else {
        textElement.textContent = options.text;

        if (options.icon) {
          var whitespace = elementTemplates.whitespace.cloneNode(false);

          // need to use <i> for icons in the button to prevent a breaking change
          // note: switch to span in next major release
          iconElement = (useFragment === true ? elementTemplates.i : elementTemplates.span).cloneNode(false);
          iconElement.className = options.iconBase + '' '' + options.icon;

          elementTemplates.fragment.appendChild(iconElement);
          elementTemplates.fragment.appendChild(whitespace);
        }

        if (options.subtext) {
          subtextElement = elementTemplates.subtext.cloneNode(false);
          subtextElement.textContent = options.subtext;
          textElement.appendChild(subtextElement);
        }
      }

      if (useFragment === true) {
        while (textElement.childNodes.length > 0) {
          elementTemplates.fragment.appendChild(textElement.childNodes[0]);
        }
      } else {
        elementTemplates.fragment.appendChild(textElement);
      }

      return elementTemplates.fragment;
    },

    label: function (options) {
      var textElement = elementTemplates.text.cloneNode(false),
          subtextElement,
          iconElement;

      textElement.innerHTML = options.label;

      if (options.icon) {
        var whitespace = elementTemplates.whitespace.cloneNode(false);

        iconElement = elementTemplates.span.cloneNode(false);
        iconElement.className = options.iconBase + '' '' + options.icon;

        elementTemplates.fragment.appendChild(iconElement);
        elementTemplates.fragment.appendChild(whitespace);
      }

      if (options.subtext) {
        subtextElement = elementTemplates.subtext.cloneNode(false);
        subtextElement.textContent = options.subtext;
        textElement.appendChild(subtextElement);
      }

      elementTemplates.fragment.appendChild(textElement);

      return elementTemplates.fragment;
    }
  }

  var Selectpicker = function (element, options) {
    var that = this;

    // bootstrap-select has been initialized - revert valHooks.select.set back to its original function
    if (!valHooks.useDefault) {
      $.valHooks.select.set = valHooks._set;
      valHooks.useDefault = true;
    }

    this.$element = $(element);
    this.$newElement = null;
    this.$button = null;
    this.$menu = null;
    this.options = options;
    this.selectpicker = {
      main: {},
      search: {},
      current: {}, // current changes if a search is in progress
      view: {},
      keydown: {
        keyHistory: '''',
        resetKeyHistory: {
          start: function () {
            return setTimeout(function () {
              that.selectpicker.keydown.keyHistory = '''';
            }, 800);
          }
        }
      }
    };
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

    // Expose public methods
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

  Selectpicker.VERSION = ''1.13.10'';

  // part of this is duplicated in i18n/defaults-en_US.js. Make sure to update both.
  Selectpicker.DEFAULTS = {
    noneSelectedText: ''Nothing selected'',
    noneResultsText: ''No results matched {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? ''{0} item selected'' : ''{0} items selected'';
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
    style: classNames.BUTTONCLASS,
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
    iconBase: classNames.ICONBASE,
    tickIcon: classNames.TICKICON,
    showTick: false,
    template: {
      caret: ''<span class="caret"></span>''
    },
    maxOptions: false,
    mobile: false,
    selectOnTab: false,
    dropdownAlignRight: false,
    windowPadding: 0,
    virtualScroll: 600,
    display: false,
    sanitize: true,
    sanitizeFn: null,
    whiteList: DefaultWhitelist
  };

  Selectpicker.prototype = {

    constructor: Selectpicker,

    init: function () {
      var that = this,
          id = this.$element.attr(''id'');

      selectId++;
      this.selectId = ''bs-select-'' + selectId;

      this.$element[0].classList.add(''bs-select-hidden'');

      this.multiple = this.$element.prop(''multiple'');
      this.autofocus = this.$element.prop(''autofocus'');

      if (this.$element[0].classList.contains(''show-tick'')) {
        this.options.showTick = true;
      }

      this.$newElement = this.createDropdown();
      this.$element
        .after(this.$newElement)
        .prependTo(this.$newElement);

      this.$button = this.$newElement.children(''button'');
      this.$menu = this.$newElement.children(Selector.MENU);
      this.$menuInner = this.$menu.children(''.inner'');
      this.$searchbox = this.$menu.find(''input'');

      this.$element[0].classList.remove(''bs-select-hidden'');

      if (this.options.dropdownAlignRight === true) this.$menu[0].classList.add(classNames.MENURIGHT);

      if (typeof id !== ''undefined'') {
        this.$button.attr(''data-id'', id);
      }

      this.checkDisabled();
      this.clickListener();

      if (this.options.liveSearch) {
        this.liveSearchListener();
        this.focusedParent = this.$searchbox[0];
      } else {
        this.focusedParent = this.$menuInner[0];
      }

      this.setStyle();
      this.render();
      this.setWidth();
      if (this.options.container) {
        this.selectPosition();
      } else {
        this.$element.on(''hide'' + EVENT_KEY, function () {
          if (that.isVirtual()) {
            // empty menu on close
            var menuInner = that.$menuInner[0],
                emptyMenu = menuInner.firstChild.cloneNode(false);

            // replace the existing UL with an empty one - this is faster than $.empty() or innerHTML = ''''
            menuInner.replaceChild(emptyMenu, menuInner.firstChild);
            menuInner.scrollTop = 0;
          }
        });
      }
      this.$menu.data(''this'', this);
      this.$newElement.data(''this'', this);
      if (this.options.mobile) this.mobile();

      this.$newElement.on({
        ''hide.bs.dropdown'': function (e) {
          that.$element.trigger(''hide'' + EVENT_KEY, e);
        },
        ''hidden.bs.dropdown'': function (e) {
          that.$element.trigger(''hidden'' + EVENT_KEY, e);
        },
        ''show.bs.dropdown'': function (e) {
          that.$element.trigger(''show'' + EVENT_KEY, e);
        },
        ''shown.bs.dropdown'': function (e) {
          that.$element.trigger(''shown'' + EVENT_KEY, e);
        }
      });

      if (that.$element[0].hasAttribute(''required'')) {
        this.$element.on(''invalid'' + EVENT_KEY, function () {
          that.$button[0].classList.add(''bs-invalid'');

          that.$element
            .on(''shown'' + EVENT_KEY + ''.invalid'', function () {
              that.$element
                .val(that.$element.val()) // set the value to hide the validation message in Chrome when menu is opened
                .off(''shown'' + EVENT_KEY + ''.invalid'');
            })
            .on(''rendered'' + EVENT_KEY, function () {
              // if select is no longer invalid, remove the bs-invalid class
              if (this.validity.valid) that.$button[0].classList.remove(''bs-invalid'');
              that.$element.off(''rendered'' + EVENT_KEY);
            });

          that.$button.on(''blur'' + EVENT_KEY, function () {
            that.$element.trigger(''focus'').trigger(''blur'');
            that.$button.off(''blur'' + EVENT_KEY);
          });
        });
      }

      setTimeout(function () {
        that.createLi();
        that.$element.trigger(''loaded'' + EVENT_KEY);
      });
    },

    createDropdown: function () {
      // Options
      // If we are multiple or showTick option is set, then add the show-tick class
      var showTick = (this.multiple || this.options.showTick) ? '' show-tick'' : '''',
          multiselectable = this.multiple ? '' aria-multiselectable="true"'' : '''',
          inputGroup = '''',
          autofocus = this.autofocus ? '' autofocus'' : '''';

      if (version.major < 4 && this.$element.parent().hasClass(''input-group'')) {
        inputGroup = '' input-group-btn'';
      }

      // Elements
      var drop,
          header = '''',
          searchbox = '''',
          actionsbox = '''',
          donebutton = '''';

      if (this.options.header) {
        header =
          ''<div class="'' + classNames.POPOVERHEADER + ''">'' +
            ''<button type="button" class="close" aria-hidden="true">&times;</button>'' +
              this.options.header +
          ''</div>'';
      }

      if (this.options.liveSearch) {
        searchbox =
          ''<div class="bs-searchbox">'' +
            ''<input type="text" class="form-control" autocomplete="off"'' +
              (
                this.options.liveSearchPlaceholder === null ? ''''
                :
                '' placeholder="'' + htmlEscape(this.options.liveSearchPlaceholder) + ''"''
              ) +
              '' role="combobox" aria-label="Search" aria-controls="'' + this.selectId + ''" aria-autocomplete="list">'' +
          ''</div>'';
      }

      if (this.multiple && this.options.actionsBox) {
        actionsbox =
          ''<div class="bs-actionsbox">'' +
            ''<div class="btn-group btn-group-sm btn-block">'' +
              ''<button type="button" class="actions-btn bs-select-all btn '' + classNames.BUTTONCLASS + ''">'' +
                this.options.selectAllText +
              ''</button>'' +
              ''<button type="button" class="actions-btn bs-deselect-all btn '' + classNames.BUTTONCLASS + ''">'' +
                this.options.deselectAllText +
              ''</button>'' +
            ''</div>'' +
          ''</div>'';
      }

      if (this.multiple && this.options.doneButton) {
        donebutton =
          ''<div class="bs-donebutton">'' +
            ''<div class="btn-group btn-block">'' +
              ''<button type="button" class="btn btn-sm '' + classNames.BUTTONCLASS + ''">'' +
                this.options.doneButtonText +
              ''</button>'' +
            ''</div>'' +
          ''</div>'';
      }

      drop =
        ''<div class="dropdown bootstrap-select'' + showTick + inputGroup + ''">'' +
          ''<button type="button" class="'' + this.options.styleBase + '' dropdown-toggle" '' + (this.options.display === ''static'' ? ''data-display="static"'' : '''') + ''data-toggle="dropdown"'' + autofocus + '' role="combobox" aria-owns="'' + this.selectId + ''" aria-haspopup="listbox" aria-expanded="false">'' +
            ''<div class="filter-option">'' +
              ''<div class="filter-option-inner">'' +
                ''<div class="filter-option-inner-inner"></div>'' +
              ''</div> '' +
            ''</div>'' +
            (
              version.major === ''4'' ? ''''
              :
              ''<span class="bs-caret">'' +
                this.options.template.caret +
              ''</span>''
            ) +
          ''</button>'' +
          ''<div class="'' + classNames.MENU + '' '' + (version.major === ''4'' ? '''' : classNames.SHOW) + ''">'' +
            header +
            searchbox +
            actionsbox +
            ''<div class="inner '' + classNames.SHOW + ''" role="listbox" id="'' + this.selectId + ''" tabindex="-1" '' + multiselectable + ''>'' +
                ''<ul class="'' + classNames.MENU + '' inner '' + (version.major === ''4'' ? classNames.SHOW : '''') + ''" role="presentation">'' +
                ''</ul>'' +
            ''</div>'' +
            donebutton +
          ''</div>'' +
        ''</div>'';

      return $(drop);
    },

    setPositionData: function () {
      this.selectpicker.view.canHighlight = [];
      this.selectpicker.view.size = 0;

      for (var i = 0; i < this.selectpicker.current.data.length; i++) {
        var li = this.selectpicker.current.data[i],
            canHighlight = true;

        if (li.type === ''divider'') {
          canHighlight = false;
          li.height = this.sizeInfo.dividerHeight;
        } else if (li.type === ''optgroup-label'') {
          canHighlight = false;
          li.height = this.sizeInfo.dropdownHeaderHeight;
        } else {
          li.height = this.sizeInfo.liHeight;
        }

        if (li.disabled) canHighlight = false;

        this.selectpicker.view.canHighlight.push(canHighlight);

        if (canHighlight) {
          this.selectpicker.view.size++;
          li.posinset = this.selectpicker.view.size;
        }

        li.position = (i === 0 ? 0 : this.selectpicker.current.data[i - 1].position) + li.height;
      }
    },

    isVirtual: function () {
      return (this.options.virtualScroll !== false) && (this.selectpicker.main.elements.length >= this.options.virtualScroll) || this.options.virtualScroll === true;
    },

    createView: function (isSearching, setSize, refresh) {
      var that = this,
          scrollTop = 0,
          active = [],
          selected,
          prevActive;

      this.selectpicker.current = isSearching ? this.selectpicker.search : this.selectpicker.main;

      this.setPositionData();

      if (setSize) {
        if (refresh) {
          scrollTop = this.$menuInner[0].scrollTop;
        } else if (!that.multiple) {
          var element = that.$element[0],
              selectedIndex = (element.options[element.selectedIndex] || {}).liIndex;

          if (typeof selectedIndex === ''number'' && that.options.size !== false) {
            var selectedData = that.selectpicker.main.data[selectedIndex],
                position = selectedData && selectedData.position;

            if (position) {
              scrollTop = position - ((that.sizeInfo.menuInnerHeight + that.sizeInfo.liHeight) / 2);
            }
          }
        }
      }

      scroll(scrollTop, true);

      this.$menuInner.off(''scroll.createView'').on(''scroll.createView'', function (e, updateValue) {
        if (!that.noScroll) scroll(this.scrollTop, updateValue);
        that.noScroll = false;
      });

      function scroll (scrollTop, init) {
        var size = that.selectpicker.current.elements.length,
            chunks = [],
            chunkSize,
            chunkCount,
            firstChunk,
            lastChunk,
            currentChunk,
            prevPositions,
            positionIsDifferent,
            previousElements,
            menuIsDifferent = true,
            isVirtual = that.isVirtual();

        that.selectpicker.view.scrollTop = scrollTop;

        if (isVirtual === true) {
          // if an option that is encountered that is wider than the current menu width, update the menu width accordingly
          if (that.sizeInfo.hasScrollBar && that.$menu[0].offsetWidth > that.sizeInfo.totalMenuWidth) {
            that.sizeInfo.menuWidth = that.$menu[0].offsetWidth;
            that.sizeInfo.totalMenuWidth = that.sizeInfo.menuWidth + that.sizeInfo.scrollBarWidth;
            that.$menu.css(''min-width'', that.sizeInfo.menuWidth);
          }
        }

        chunkSize = Math.ceil(that.sizeInfo.menuInnerHeight / that.sizeInfo.liHeight * 1.5); // number of options in a chunk
        chunkCount = Math.round(size / chunkSize) || 1; // number of chunks

        for (var i = 0; i < chunkCount; i++) {
          var endOfChunk = (i + 1) * chunkSize;

          if (i === chunkCount - 1) {
            endOfChunk = size;
          }

          chunks[i] = [
            (i) * chunkSize + (!i ? 0 : 1),
            endOfChunk
          ];

          if (!size) break;

          if (currentChunk === undefined && scrollTop <= that.selectpicker.current.data[endOfChunk - 1].position - that.sizeInfo.menuInnerHeight) {
            currentChunk = i;
          }
        }

        if (currentChunk === undefined) currentChunk = 0;

        prevPositions = [that.selectpicker.view.position0, that.selectpicker.view.position1];

        // always display previous, current, and next chunks
        firstChunk = Math.max(0, currentChunk - 1);
        lastChunk = Math.min(chunkCount - 1, currentChunk + 1);

        that.selectpicker.view.position0 = isVirtual === false ? 0 : (Math.max(0, chunks[firstChunk][0]) || 0);
        that.selectpicker.view.position1 = isVirtual === false ? size : (Math.min(size, chunks[lastChunk][1]) || 0);

        positionIsDifferent = prevPositions[0] !== that.selectpicker.view.position0 || prevPositions[1] !== that.selectpicker.view.position1;

        if (that.activeIndex !== undefined) {
          prevActive = that.selectpicker.main.elements[that.prevActiveIndex];
          active = that.selectpicker.main.elements[that.activeIndex];
          selected = that.selectpicker.main.elements[that.selectedIndex];

          if (init) {
            if (that.activeIndex !== that.selectedIndex) {
              that.defocusItem(active);
            }
            that.activeIndex = undefined;
          }

          if (that.activeIndex && that.activeIndex !== that.selectedIndex) {
            that.defocusItem(selected);
          }
        }

        if (that.prevActiveIndex !== undefined && that.prevActiveIndex !== that.activeIndex && that.prevActiveIndex !== that.selectedIndex) {
          that.defocusItem(prevActive);
        }

        if (init || positionIsDifferent) {
          previousElements = that.selectpicker.view.visibleElements ? that.selectpicker.view.visibleElements.slice() : [];

          if (isVirtual === false) {
            that.selectpicker.view.visibleElements = that.selectpicker.current.elements;
          } else {
            that.selectpicker.view.visibleElements = that.selectpicker.current.elements.slice(that.selectpicker.view.position0, that.selectpicker.view.position1);
          }

          that.setOptionStatus();

          // if searching, check to make sure the list has actually been updated before updating DOM
          // this prevents unnecessary repaints
          if (isSearching || (isVirtual === false && init)) menuIsDifferent = !isEqual(previousElements, that.selectpicker.view.visibleElements);

          // if virtual scroll is disabled and not searching,
          // menu should never need to be updated more than once
          if ((init || isVirtual === true) && menuIsDifferent) {
            var menuInner = that.$menuInner[0],
                menuFragment = document.createDocumentFragment(),
                emptyMenu = menuInner.firstChild.cloneNode(false),
                marginTop,
                marginBottom,
                elements = that.selectpicker.view.visibleElements,
                toSanitize = [];

            // replace the existing UL with an empty one - this is faster than $.empty()
            menuInner.replaceChild(emptyMenu, menuInner.firstChild);

            for (var i = 0, visibleElementsLen = elements.length; i < visibleElementsLen; i++) {
              var element = elements[i],
                  elText,
                  elementData;

              if (that.options.sanitize) {
                elText = element.lastChild;

                if (elText) {
                  elementData = that.selectpicker.current.data[i + that.selectpicker.view.position0];

                  if (elementData && elementData.content && !elementData.sanitized) {
                    toSanitize.push(elText);
                    elementData.sanitized = true;
                  }
                }
              }

              menuFragment.appendChild(element);
            }

            if (that.options.sanitize && toSanitize.length) {
              sanitizeHtml(toSanitize, that.options.whiteList, that.options.sanitizeFn);
            }

            if (isVirtual === true) {
              marginTop = (that.selectpicker.view.position0 === 0 ? 0 : that.selectpicker.current.data[that.selectpicker.view.position0 - 1].position);
              marginBottom = (that.selectpicker.view.position1 > size - 1 ? 0 : that.selectpicker.current.data[size - 1].position - that.selectpicker.current.data[that.selectpicker.view.position1 - 1].position);

              menuInner.firstChild.style.marginTop = marginTop + ''px'';
              menuInner.firstChild.style.marginBottom = marginBottom + ''px'';
            } else {
              menuInner.firstChild.style.marginTop = 0;
              menuInner.firstChild.style.marginBottom = 0;
            }

            menuInner.firstChild.appendChild(menuFragment);
          }
        }

        that.prevActiveIndex = that.activeIndex;

        if (!that.options.liveSearch) {
          that.$menuInner.trigger(''focus'');
        } else if (isSearching && init) {
          var index = 0,
              newActive;

          if (!that.selectpicker.view.canHighlight[index]) {
            index = 1 + that.selectpicker.view.canHighlight.slice(1).indexOf(true);
          }

          newActive = that.selectpicker.view.visibleElements[index];

          that.defocusItem(that.selectpicker.view.currentActive);

          that.activeIndex = (that.selectpicker.current.data[index] || {}).index;

          that.focusItem(newActive);
        }
      }

      $(window)
        .off(''resize'' + EVENT_KEY + ''.'' + this.selectId + ''.createView'')
        .on(''resize'' + EVENT_KEY + ''.'' + this.selectId + ''.createView'', function () {
          var isActive = that.$newElement.hasClass(classNames.SHOW);

          if (isActive) scroll(that.$menuInner[0].scrollTop);
        });
    },

    focusItem: function (li, liData, noStyle) {
      if (li) {
        liData = liData || this.selectpicker.main.data[this.activeIndex];
        var a = li.firstChild;

        if (a) {
          a.setAttribute(''aria-setsize'', this.selectpicker.view.size);
          a.setAttribute(''aria-posinset'', liData.posinset);

          if (noStyle !== true) {
            this.focusedParent.setAttribute(''aria-activedescendant'', a.id);
            li.classList.add(''active'');
            a.classList.add(''active'');
          }
        }
      }
    },

    defocusItem: function (li) {
      if (li) {
        li.classList.remove(''active'');
        if (li.firstChild) li.firstChild.classList.remove(''active'');
      }
    },

    setPlaceholder: function () {
      var updateIndex = false;

      if (this.options.title && !this.multiple) {
        if (!this.selectpicker.view.titleOption) this.selectpicker.view.titleOption = document.createElement(''option'');

        // this option doesn''t create a new <li> element, but does add a new option at the start,
        // so startIndex should increase to prevent having to check every option for the bs-title-option class
        updateIndex = true;

        var element = this.$element[0],
            isSelected = false,
            titleNotAppended = !this.selectpicker.view.titleOption.parentNode;

        if (titleNotAppended) {
          // Use native JS to prepend option (faster)
          this.selectpicker.view.titleOption.className = ''bs-title-option'';
          this.selectpicker.view.titleOption.value = '''';

          // Check if selected or data-selected attribute is already set on an option. If not, select the titleOption option.
          // the selected item may have been changed by user or programmatically before the bootstrap select plugin runs,
          // if so, the select will have the data-selected attribute
          var $opt = $(element.options[element.selectedIndex]);
          isSelected = $opt.attr(''selected'') === undefined && this.$element.data(''selected'') === undefined;
        }

        if (titleNotAppended || this.selectpicker.view.titleOption.index !== 0) {
          element.insertBefore(this.selectpicker.view.titleOption, element.firstChild);
        }

        // Set selected *after* appending to select,
        // otherwise the option doesn''t get selected in IE
        // set using selectedIndex, as setting the selected attr to true here doesn''t work in IE11
        if (isSelected) element.selectedIndex = 0;
      }

      return updateIndex;
    },

    createLi: function () {
      var that = this,
          iconBase = this.options.iconBase,
          optionSelector = '':not([hidden]):not([data-hidden="true"])'',
          mainElements = [],
          mainData = [],
          widestOptionLength = 0,
          optID = 0,
          startIndex = this.setPlaceholder() ? 1 : 0; // append the titleOption if necessary and skip the first option in the loop

      if (this.options.hideDisabled) optionSelector += '':not(:disabled)'';

      if ((that.options.showTick || that.multiple) && !elementTemplates.checkMark.parentNode) {
        elementTemplates.checkMark.className = iconBase + '' '' + that.options.tickIcon + '' check-mark'';
        elementTemplates.a.appendChild(elementTemplates.checkMark);
      }

      var selectOptions = this.$element[0].querySelectorAll(''select > *'' + optionSelector);

      function addDivider (config) {
        var previousData = mainData[mainData.length - 1];

        // ensure optgroup doesn''t create back-to-back dividers
        if (
          previousData &&
          previousData.type === ''divider'' &&
          (previousData.optID || config.optID)
        ) {
          return;
        }

        config = config || {};
        config.type = ''divider'';

        mainElements.push(
          generateOption.li(
            false,
            classNames.DIVIDER,
            (config.optID ? config.optID + ''div'' : undefined)
          )
        );

        mainData.push(config);
      }

      function addOption (option, config) {
        config = config || {};

        config.divider = option.getAttribute(''data-divider'') === ''true'';

        if (config.divider) {
          addDivider({
            optID: config.optID
          });
        } else {
          var liIndex = mainData.length,
              cssText = option.style.cssText,
              inlineStyle = cssText ? htmlEscape(cssText) : '''',
              optionClass = (option.className || '''') + (config.optgroupClass || '''');

          if (config.optID) optionClass = ''opt '' + optionClass;

          config.text = option.textContent;

          config.content = option.getAttribute(''data-content'');
          config.tokens = option.getAttribute(''data-tokens'');
          config.subtext = option.getAttribute(''data-subtext'');
          config.icon = option.getAttribute(''data-icon'');
          config.iconBase = iconBase;

          var textElement = generateOption.text(config);
          var liElement = generateOption.li(
            generateOption.a(
              textElement,
              optionClass,
              inlineStyle
            ),
            '''',
            config.optID
          );

          if (liElement.firstChild) {
            liElement.firstChild.id = that.selectId + ''-'' + liIndex;
          }

          mainElements.push(liElement);

          option.liIndex = liIndex;

          config.display = config.content || config.text;
          config.type = ''option'';
          config.index = liIndex;
          config.option = option;
          config.disabled = config.disabled || option.disabled;

          mainData.push(config);

          var combinedLength = 0;

          // count the number of characters in the option - not perfect, but should work in most cases
          if (config.display) combinedLength += config.display.length;
          if (config.subtext) combinedLength += config.subtext.length;
          // if there is an icon, ensure this option''s width is checked
          if (config.icon) combinedLength += 1;

          if (combinedLength > widestOptionLength) {
            widestOptionLength = combinedLength;

            // guess which option is the widest
            // use this when calculating menu width
            // not perfect, but it''s fast, and the width will be updating accordingly when scrolling
            that.selectpicker.view.widestOption = mainElements[mainElements.length - 1];
          }
        }
      }

      function addOptgroup (index, selectOptions) {
        var optgroup = selectOptions[index],
            previous = selectOptions[index - 1],
            next = selectOptions[index + 1],
            options = optgroup.querySelectorAll(''option'' + optionSelector);

        if (!options.length) return;

        var config = {
              label: htmlEscape(optgroup.label),
              subtext: optgroup.getAttribute(''data-subtext''),
              icon: optgroup.getAttribute(''data-icon''),
              iconBase: iconBase
            },
            optgroupClass = '' '' + (optgroup.className || ''''),
            headerIndex,
            lastIndex;

        optID++;

        if (previous) {
          addDivider({ optID: optID });
        }

        var labelElement = generateOption.label(config);

        mainElements.push(
          generateOption.li(labelElement, ''dropdown-header'' + optgroupClass, optID)
        );

        mainData.push({
          display: config.label,
          subtext: config.subtext,
          type: ''optgroup-label'',
          optID: optID
        });

        for (var j = 0, len = options.length; j < len; j++) {
          var option = options[j];

          if (j === 0) {
            headerIndex = mainData.length - 1;
            lastIndex = headerIndex + len;
          }

          addOption(option, {
            headerIndex: headerIndex,
            lastIndex: lastIndex,
            optID: optID,
            optgroupClass: optgroupClass,
            disabled: optgroup.disabled
          });
        }

        if (next) {
          addDivider({ optID: optID });
        }
      }

      for (var len = selectOptions.length; startIndex < len; startIndex++) {
        var item = selectOptions[startIndex];

        if (item.tagName !== ''OPTGROUP'') {
          addOption(item, {});
        } else {
          addOptgroup(startIndex, selectOptions);
        }
      }

      this.selectpicker.main.elements = mainElements;
      this.selectpicker.main.data = mainData;

      this.selectpicker.current = this.selectpicker.main;
    },

    findLis: function () {
      return this.$menuInner.find(''.inner > li'');
    },

    render: function () {
      // ensure titleOption is appended and selected (if necessary) before getting selectedOptions
      this.setPlaceholder();

      var that = this,
          element = this.$element[0],
          selectedOptions = getSelectedOptions(element, this.options.hideDisabled),
          selectedCount = selectedOptions.length,
          button = this.$button[0],
          buttonInner = button.querySelector(''.filter-option-inner-inner''),
          multipleSeparator = document.createTextNode(this.options.multipleSeparator),
          titleFragment = elementTemplates.fragment.cloneNode(false),
          showCount,
          countMax,
          hasContent = false;

      button.classList.toggle(''bs-placeholder'', that.multiple ? !selectedCount : !getSelectValues(element, selectedOptions));

      this.tabIndex();

      if (this.options.selectedTextFormat === ''static'') {
        titleFragment = generateOption.text({ text: this.options.title }, true);
      } else {
        showCount = this.multiple && this.options.selectedTextFormat.indexOf(''count'') !== -1 && selectedCount > 1;

        // determine if the number of selected options will be shown (showCount === true)
        if (showCount) {
          countMax = this.options.selectedTextFormat.split(''>'');
          showCount = (countMax.length > 1 && selectedCount > countMax[1]) || (countMax.length === 1 && selectedCount >= 2);
        }

        // only loop through all selected options if the count won''t be shown
        if (showCount === false) {
          for (var selectedIndex = 0; selectedIndex < selectedCount; selectedIndex++) {
            if (selectedIndex < 50) {
              var option = selectedOptions[selectedIndex],
                  titleOptions = {},
                  thisData = {
                    content: option.getAttribute(''data-content''),
                    subtext: option.getAttribute(''data-subtext''),
                    icon: option.getAttribute(''data-icon'')
                  };

              if (this.multiple && selectedIndex > 0) {
                titleFragment.appendChild(multipleSeparator.cloneNode(false));
              }

              if (option.title) {
                titleOptions.text = option.title;
              } else if (thisData.content && that.options.showContent) {
                titleOptions.content = thisData.content.toString();
                hasContent = true;
              } else {
                if (that.options.showIcon) {
                  titleOptions.icon = thisData.icon;
                  titleOptions.iconBase = this.options.iconBase;
                }
                if (that.options.showSubtext && !that.multiple && thisData.subtext) titleOptions.subtext = '' '' + thisData.subtext;
                titleOptions.text = option.textContent.trim();
              }

              titleFragment.appendChild(generateOption.text(titleOptions, true));
            } else {
              break;
            }
          }

          // add ellipsis
          if (selectedCount > 49) {
            titleFragment.appendChild(document.createTextNode(''...''));
          }
        } else {
          var optionSelector = '':not([hidden]):not([data-hidden="true"]):not([data-divider="true"])'';
          if (this.options.hideDisabled) optionSelector += '':not(:disabled)'';

          // If this is a multiselect, and selectedTextFormat is count, then show 1 of 2 selected, etc.
          var totalCount = this.$element[0].querySelectorAll(''select > option'' + optionSelector + '', optgroup'' + optionSelector + '' option'' + optionSelector).length,
              tr8nText = (typeof this.options.countSelectedText === ''function'') ? this.options.countSelectedText(selectedCount, totalCount) : this.options.countSelectedText;

          titleFragment = generateOption.text({
            text: tr8nText.replace(''{0}'', selectedCount.toString()).replace(''{1}'', totalCount.toString())
          }, true);
        }
      }

      if (this.options.title == undefined) {
        // use .attr to ensure undefined is returned if title attribute is not set
        this.options.title = this.$element.attr(''title'');
      }

      // If the select doesn''t have a title, then use the default, or if nothing is set at all, use noneSelectedText
      if (!titleFragment.childNodes.length) {
        titleFragment = generateOption.text({
          text: typeof this.options.title !== ''undefined'' ? this.options.title : this.options.noneSelectedText
        }, true);
      }

      // strip all HTML tags and trim the result, then unescape any escaped tags
      button.title = titleFragment.textContent.replace(/<[^>]*>?/g, '''').trim();

      if (this.options.sanitize && hasContent) {
        sanitizeHtml([titleFragment], that.options.whiteList, that.options.sanitizeFn);
      }

      buttonInner.innerHTML = '''';
      buttonInner.appendChild(titleFragment);

      if (version.major < 4 && this.$newElement[0].classList.contains(''bs3-has-addon'')) {
        var filterExpand = button.querySelector(''.filter-expand''),
            clone = buttonInner.cloneNode(true);

        clone.className = ''filter-expand'';

        if (filterExpand) {
          button.replaceChild(clone, filterExpand);
        } else {
          button.appendChild(clone);
        }
      }

      this.$element.trigger(''rendered'' + EVENT_KEY);
    },

    /**
     * @param [style]
     * @param [status]
     */
    setStyle: function (newStyle, status) {
      var button = this.$button[0],
          newElement = this.$newElement[0],
          style = this.options.style.trim(),
          buttonClass;

      if (this.$element.attr(''class'')) {
        this.$newElement.addClass(this.$element.attr(''class'').replace(/selectpicker|mobile-device|bs-select-hidden|validate\[.*\]/gi, ''''));
      }

      if (version.major < 4) {
        newElement.classList.add(''bs3'');

        if (newElement.parentNode.classList.contains(''input-group'') &&
            (newElement.previousElementSibling || newElement.nextElementSibling) &&
            (newElement.previousElementSibling || newElement.nextElementSibling).classList.contains(''input-group-addon'')
        ) {
          newElement.classList.add(''bs3-has-addon'');
        }
      }

      if (newStyle) {
        buttonClass = newStyle.trim();
      } else {
        buttonClass = style;
      }

      if (status == ''add'') {
        if (buttonClass) button.classList.add.apply(button.classList, buttonClass.split('' ''));
      } else if (status == ''remove'') {
        if (buttonClass) button.classList.remove.apply(button.classList, buttonClass.split('' ''));
      } else {
        if (style) button.classList.remove.apply(button.classList, style.split('' ''));
        if (buttonClass) button.classList.add.apply(button.classList, buttonClass.split('' ''));
      }
    },

    liHeight: function (refresh) {
      if (!refresh && (this.options.size === false || this.sizeInfo)) return;

      if (!this.sizeInfo) this.sizeInfo = {};

      var newElement = document.createElement(''div''),
          menu = document.createElement(''div''),
          menuInner = document.createElement(''div''),
          menuInnerInner = document.createElement(''ul''),
          divider = document.createElement(''li''),
          dropdownHeader = document.createElement(''li''),
          li = document.createElement(''li''),
          a = document.createElement(''a''),
          text = document.createElement(''span''),
          header = this.options.header && this.$menu.find(''.'' + classNames.POPOVERHEADER).length > 0 ? this.$menu.find(''.'' + classNames.POPOVERHEADER)[0].cloneNode(true) : null,
          search = this.options.liveSearch ? document.createElement(''div'') : null,
          actions = this.options.actionsBox && this.multiple && this.$menu.find(''.bs-actionsbox'').length > 0 ? this.$menu.find(''.bs-actionsbox'')[0].cloneNode(true) : null,
          doneButton = this.options.doneButton && this.multiple && this.$menu.find(''.bs-donebutton'').length > 0 ? this.$menu.find(''.bs-donebutton'')[0].cloneNode(true) : null,
          firstOption = this.$element.find(''option'')[0];

      this.sizeInfo.selectWidth = this.$newElement[0].offsetWidth;

      text.className = ''text'';
      a.className = ''dropdown-item '' + (firstOption ? firstOption.className : '''');
      newElement.className = this.$menu[0].parentNode.className + '' '' + classNames.SHOW;
      newElement.style.width = this.sizeInfo.selectWidth + ''px'';
      if (this.options.width === ''auto'') menu.style.minWidth = 0;
      menu.className = classNames.MENU + '' '' + classNames.SHOW;
      menuInner.className = ''inner '' + classNames.SHOW;
      menuInnerInner.className = classNames.MENU + '' inner '' + (version.major === ''4'' ? classNames.SHOW : '''');
      divider.className = classNames.DIVIDER;
      dropdownHeader.className = ''dropdown-header'';

      text.appendChild(document.createTextNode(''\u200b''));
      a.appendChild(text);
      li.appendChild(a);
      dropdownHeader.appendChild(text.cloneNode(true));

      if (this.selectpicker.view.widestOption) {
        menuInnerInner.appendChild(this.selectpicker.view.widestOption.cloneNode(true));
      }

      menuInnerInner.appendChild(li);
      menuInnerInner.appendChild(divider);
      menuInnerInner.appendChild(dropdownHeader);
      if (header) menu.appendChild(header);
      if (search) {
        var input = document.createElement(''input'');
        search.className = ''bs-searchbox'';
        input.className = ''form-control'';
        search.appendChild(input);
        menu.appendChild(search);
      }
      if (actions) menu.appendChild(actions);
      menuInner.appendChild(menuInnerInner);
      menu.appendChild(menuInner);
      if (doneButton) menu.appendChild(doneButton);
      newElement.appendChild(menu);

      document.body.appendChild(newElement);

      var liHeight = li.offsetHeight,
          dropdownHeaderHeight = dropdownHeader ? dropdownHeader.offsetHeight : 0,
          headerHeight = header ? header.offsetHeight : 0,
          searchHeight = search ? search.offsetHeight : 0,
          actionsHeight = actions ? actions.offsetHeight : 0,
          doneButtonHeight = doneButton ? doneButton.offsetHeight : 0,
          dividerHeight = $(divider).outerHeight(true),
          // fall back to jQuery if getComputedStyle is not supported
          menuStyle = window.getComputedStyle ? window.getComputedStyle(menu) : false,
          menuWidth = menu.offsetWidth,
          $menu = menuStyle ? null : $(menu),
          menuPadding = {
            vert: toInteger(menuStyle ? menuStyle.paddingTop : $menu.css(''paddingTop'')) +
                  toInteger(menuStyle ? menuStyle.paddingBottom : $menu.css(''paddingBottom'')) +
                  toInteger(menuStyle ? menuStyle.borderTopWidth : $menu.css(''borderTopWidth'')) +
                  toInteger(menuStyle ? menuStyle.borderBottomWidth : $menu.css(''borderBottomWidth'')),
            horiz: toInteger(menuStyle ? menuStyle.paddingLeft : $menu.css(''paddingLeft'')) +
                  toInteger(menuStyle ? menuStyle.paddingRight : $menu.css(''paddingRight'')) +
                  toInteger(menuStyle ? menuStyle.borderLeftWidth : $menu.css(''borderLeftWidth'')) +
                  toInteger(menuStyle ? menuStyle.borderRightWidth : $menu.css(''borderRightWidth''))
          },
          menuExtras = {
            vert: menuPadding.vert +
                  toInteger(menuStyle ? menuStyle.marginTop : $menu.css(''marginTop'')) +
                  toInteger(menuStyle ? menuStyle.marginBottom : $menu.css(''marginBottom'')) + 2,
            horiz: menuPadding.horiz +
                  toInteger(menuStyle ? menuStyle.marginLeft : $menu.css(''marginLeft'')) +
                  toInteger(menuStyle ? menuStyle.marginRight : $menu.css(''marginRight'')) + 2
          },
          scrollBarWidth;

      menuInner.style.overflowY = ''scroll'';

      scrollBarWidth = menu.offsetWidth - menuWidth;

      document.body.removeChild(newElement);

      this.sizeInfo.liHeight = liHeight;
      this.sizeInfo.dropdownHeaderHeight = dropdownHeaderHeight;
      this.sizeInfo.headerHeight = headerHeight;
      this.sizeInfo.searchHeight = searchHeight;
      this.sizeInfo.actionsHeight = actionsHeight;
      this.sizeInfo.doneButtonHeight = doneButtonHeight;
      this.sizeInfo.dividerHeight = dividerHeight;
      this.sizeInfo.menuPadding = menuPadding;
      this.sizeInfo.menuExtras = menuExtras;
      this.sizeInfo.menuWidth = menuWidth;
      this.sizeInfo.totalMenuWidth = this.sizeInfo.menuWidth;
      this.sizeInfo.scrollBarWidth = scrollBarWidth;
      this.sizeInfo.selectHeight = this.$newElement[0].offsetHeight;

      this.setPositionData();
    },

    getSelectPosition: function () {
      var that = this,
          $window = $(window),
          pos = that.$newElement.offset(),
          $container = $(that.options.container),
          containerPos;

      if (that.options.container && $container.length && !$container.is(''body'')) {
        containerPos = $container.offset();
        containerPos.top += parseInt($container.css(''borderTopWidth''));
        containerPos.left += parseInt($container.css(''borderLeftWidth''));
      } else {
        containerPos = { top: 0, left: 0 };
      }

      var winPad = that.options.windowPadding;

      this.sizeInfo.selectOffsetTop = pos.top - containerPos.top - $window.scrollTop();
      this.sizeInfo.selectOffsetBot = $window.height() - this.sizeInfo.selectOffsetTop - this.sizeInfo.selectHeight - containerPos.top - winPad[2];
      this.sizeInfo.selectOffsetLeft = pos.left - containerPos.left - $window.scrollLeft();
      this.sizeInfo.selectOffsetRight = $window.width() - this.sizeInfo.selectOffsetLeft - this.sizeInfo.selectWidth - containerPos.left - winPad[1];
      this.sizeInfo.selectOffsetTop -= winPad[0];
      this.sizeInfo.selectOffsetLeft -= winPad[3];
    },

    setMenuSize: function (isAuto) {
      this.getSelectPosition();

      var selectWidth = this.sizeInfo.selectWidth,
          liHeight = this.sizeInfo.liHeight,
          headerHeight = this.sizeInfo.headerHeight,
          searchHeight = this.sizeInfo.searchHeight,
          actionsHeight = this.sizeInfo.actionsHeight,
          doneButtonHeight = this.sizeInfo.doneButtonHeight,
          divHeight = this.sizeInfo.dividerHeight,
          menuPadding = this.sizeInfo.menuPadding,
          menuInnerHeight,
          menuHeight,
          divLength = 0,
          minHeight,
          _minHeight,
          maxHeight,
          menuInnerMinHeight,
          estimate;

      if (this.options.dropupAuto) {
        // Get the estimated height of the menu without scrollbars.
        // This is useful for smaller menus, where there might be plenty of room
        // below the button without setting dropup, but we can''t know
        // the exact height of the menu until createView is called later
        estimate = liHeight * this.selectpicker.current.elements.length + menuPadding.vert;
        this.$newElement.toggleClass(classNames.DROPUP, this.sizeInfo.selectOffsetTop - this.sizeInfo.selectOffsetBot > this.sizeInfo.menuExtras.vert && estimate + this.sizeInfo.menuExtras.vert + 50 > this.sizeInfo.selectOffsetBot);
      }

      if (this.options.size === ''auto'') {
        _minHeight = this.selectpicker.current.elements.length > 3 ? this.sizeInfo.liHeight * 3 + this.sizeInfo.menuExtras.vert - 2 : 0;
        menuHeight = this.sizeInfo.selectOffsetBot - this.sizeInfo.menuExtras.vert;
        minHeight = _minHeight + headerHeight + searchHeight + actionsHeight + doneButtonHeight;
        menuInnerMinHeight = Math.max(_minHeight - menuPadding.vert, 0);

        if (this.$newElement.hasClass(classNames.DROPUP)) {
          menuHeight = this.sizeInfo.selectOffsetTop - this.sizeInfo.menuExtras.vert;
        }

        maxHeight = menuHeight;
        menuInnerHeight = menuHeight - headerHeight - searchHeight - actionsHeight - doneButtonHeight - menuPadding.vert;
      } else if (this.options.size && this.options.size != ''auto'' && this.selectpicker.current.elements.length > this.options.size) {
        for (var i = 0; i < this.options.size; i++) {
          if (this.selectpicker.current.data[i].type === ''divider'') divLength++;
        }

        menuHeight = liHeight * this.options.size + divLength * divHeight + menuPadding.vert;
        menuInnerHeight = menuHeight - menuPadding.vert;
        maxHeight = menuHeight + headerHeight + searchHeight + actionsHeight + doneButtonHeight;
        minHeight = menuInnerMinHeight = '''';
      }

      if (this.options.dropdownAlignRight === ''auto'') {
        this.$menu.toggleClass(classNames.MENURIGHT, this.sizeInfo.selectOffsetLeft > this.sizeInfo.selectOffsetRight && this.sizeInfo.selectOffsetRight < (this.sizeInfo.totalMenuWidth - selectWidth));
      }

      this.$menu.css({
        ''max-height'': maxHeight + ''px'',
        ''overflow'': ''hidden'',
        ''min-height'': minHeight + ''px''
      });

      this.$menuInner.css({
        ''max-height'': menuInnerHeight + ''px'',
        ''overflow-y'': ''auto'',
        ''min-height'': menuInnerMinHeight + ''px''
      });

      // ensure menuInnerHeight is always a positive number to prevent issues calculating chunkSize in createView
      this.sizeInfo.menuInnerHeight = Math.max(menuInnerHeight, 1);

      if (this.selectpicker.current.data.length && this.selectpicker.current.data[this.selectpicker.current.data.length - 1].position > this.sizeInfo.menuInnerHeight) {
        this.sizeInfo.hasScrollBar = true;
        this.sizeInfo.totalMenuWidth = this.sizeInfo.menuWidth + this.sizeInfo.scrollBarWidth;

        this.$menu.css(''min-width'', this.sizeInfo.totalMenuWidth);
      }

      if (this.dropdown && this.dropdown._popper) this.dropdown._popper.update();
    },

    setSize: function (refresh) {
      this.liHeight(refresh);

      if (this.options.header) this.$menu.css(''padding-top'', 0);
      if (this.options.size === false) return;

      var that = this,
          $window = $(window);

      this.setMenuSize();

      if (this.options.liveSearch) {
        this.$searchbox
          .off(''input.setMenuSize propertychange.setMenuSize'')
          .on(''input.setMenuSize propertychange.setMenuSize'', function () {
            return that.setMenuSize();
          });
      }

      if (this.options.size === ''auto'') {
        $window
          .off(''resize'' + EVENT_KEY + ''.'' + this.selectId + ''.setMenuSize'' + '' scroll'' + EVENT_KEY + ''.'' + this.selectId + ''.setMenuSize'')
          .on(''resize'' + EVENT_KEY + ''.'' + this.selectId + ''.setMenuSize'' + '' scroll'' + EVENT_KEY + ''.'' + this.selectId + ''.setMenuSize'', function () {
            return that.setMenuSize();
          });
      } else if (this.options.size && this.options.size != ''auto'' && this.selectpicker.current.elements.length > this.options.size) {
        $window.off(''resize'' + EVENT_KEY + ''.'' + this.selectId + ''.setMenuSize'' + '' scroll'' + EVENT_KEY + ''.'' + this.selectId + ''.setMenuSize'');
      }

      that.createView(false, true, refresh);
    },

    setWidth: function () {
      var that = this;

      if (this.options.width === ''auto'') {
        requestAnimationFrame(function () {
          that.$menu.css(''min-width'', ''0'');

          that.$element.on(''loaded'' + EVENT_KEY, function () {
            that.liHeight();
            that.setMenuSize();

            // Get correct width if element is hidden
            var $selectClone = that.$newElement.clone().appendTo(''body''),
                btnWidth = $selectClone.css(''width'', ''auto'').children(''button'').outerWidth();

            $selectClone.remove();

            // Set width to whatever''s larger, button title or longest option
            that.sizeInfo.selectWidth = Math.max(that.sizeInfo.totalMenuWidth, btnWidth);
            that.$newElement.css(''width'', that.sizeInfo.selectWidth + ''px'');
          });
        });
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
        this.$newElement[0].classList.remove(''fit-width'');
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
            var containerPosition = {},
                // fall back to dropdown''s default display setting if display is not manually set
                display = that.options.display || (
                  // Bootstrap 3 doesn''t have $.fn.dropdown.Constructor.Default
                  $.fn.dropdown.Constructor.Default ? $.fn.dropdown.Constructor.Default.display
                  : false
                );

            that.$bsContainer.addClass($element.attr(''class'').replace(/form-control|fit-width/gi, '''')).toggleClass(classNames.DROPUP, $element.hasClass(classNames.DROPUP));
            pos = $element.offset();

            if (!$container.is(''body'')) {
              containerPos = $container.offset();
              containerPos.top += parseInt($container.css(''borderTopWidth'')) - $container.scrollTop();
              containerPos.left += parseInt($container.css(''borderLeftWidth'')) - $container.scrollLeft();
            } else {
              containerPos = { top: 0, left: 0 };
            }

            actualHeight = $element.hasClass(classNames.DROPUP) ? 0 : $element[0].offsetHeight;

            // Bootstrap 4+ uses Popper for menu positioning
            if (version.major < 4 || display === ''static'') {
              containerPosition.top = pos.top - containerPos.top + actualHeight;
              containerPosition.left = pos.left - containerPos.left;
            }

            containerPosition.width = $element[0].offsetWidth;

            that.$bsContainer.css(containerPosition);
          };

      this.$button.on(''click.bs.dropdown.data-api'', function () {
        if (that.isDisabled()) {
          return;
        }

        getPlacement(that.$newElement);

        that.$bsContainer
          .appendTo(that.options.container)
          .toggleClass(classNames.SHOW, !that.$button.hasClass(classNames.SHOW))
          .append(that.$menu);
      });

      $(window)
        .off(''resize'' + EVENT_KEY + ''.'' + this.selectId + '' scroll'' + EVENT_KEY + ''.'' + this.selectId)
        .on(''resize'' + EVENT_KEY + ''.'' + this.selectId + '' scroll'' + EVENT_KEY + ''.'' + this.selectId, function () {
          var isActive = that.$newElement.hasClass(classNames.SHOW);

          if (isActive) getPlacement(that.$newElement);
        });

      this.$element.on(''hide'' + EVENT_KEY, function () {
        that.$menu.data(''height'', that.$menu.height());
        that.$bsContainer.detach();
      });
    },

    setOptionStatus: function (selectedOnly) {
      var that = this;

      that.noScroll = false;

      if (that.selectpicker.view.visibleElements && that.selectpicker.view.visibleElements.length) {
        for (var i = 0; i < that.selectpicker.view.visibleElements.length; i++) {
          var liData = that.selectpicker.current.data[i + that.selectpicker.view.position0],
              option = liData.option;

          if (option) {
            if (selectedOnly !== true) {
              that.setDisabled(
                liData.index,
                liData.disabled
              );
            }

            that.setSelected(
              liData.index,
              option.selected
            );
          }
        }
      }
    },

    /**
     * @param {number} index - the index of the option that is being changed
     * @param {boolean} selected - true if the option is being selected, false if being deselected
     */
    setSelected: function (index, selected) {
      var li = this.selectpicker.main.elements[index],
          liData = this.selectpicker.main.data[index],
          activeIndexIsSet = this.activeIndex !== undefined,
          thisIsActive = this.activeIndex === index,
          prevActive,
          a,
          // if current option is already active
          // OR
          // if the current option is being selected, it''s NOT multiple, and
          // activeIndex is undefined:
          //  - when the menu is first being opened, OR
          //  - after a search has been performed, OR
          //  - when retainActive is false when selecting a new option (i.e. index of the newly selected option is not the same as the current activeIndex)
          keepActive = thisIsActive || (selected && !this.multiple && !activeIndexIsSet);

      liData.selected = selected;

      a = li.firstChild;

      if (selected) {
        this.selectedIndex = index;
      }

      li.classList.toggle(''selected'', selected);

      if (keepActive) {
        this.focusItem(li, liData);
        this.selectpicker.view.currentActive = li;
        this.activeIndex = index;
      } else {
        this.defocusItem(li);
      }

      if (a) {
        a.classList.toggle(''selected'', selected);

        if (selected) {
          a.setAttribute(''aria-selected'', true);
        } else {
          if (this.multiple) {
            a.setAttribute(''aria-selected'', false);
          } else {
            a.removeAttribute(''aria-selected'');
          }
        }
      }

      if (!keepActive && !activeIndexIsSet && selected && this.prevActiveIndex !== undefined) {
        prevActive = this.selectpicker.main.elements[this.prevActiveIndex];

        this.defocusItem(prevActive);
      }
    },

    /**
     * @param {number} index - the index of the option that is being disabled
     * @param {boolean} disabled - true if the option is being disabled, false if being enabled
     */
    setDisabled: function (index, disabled) {
      var li = this.selectpicker.main.elements[index],
          a;

      this.selectpicker.main.data[index].disabled = disabled;

      a = li.firstChild;

      li.classList.toggle(classNames.DISABLED, disabled);

      if (a) {
        if (version.major === ''4'') a.classList.toggle(classNames.DISABLED, disabled);

        if (disabled) {
          a.setAttribute(''aria-disabled'', disabled);
          a.setAttribute(''tabindex'', -1);
        } else {
          a.removeAttribute(''aria-disabled'');
          a.setAttribute(''tabindex'', 0);
        }
      }
    },

    isDisabled: function () {
      return this.$element[0].disabled;
    },

    checkDisabled: function () {
      var that = this;

      if (this.isDisabled()) {
        this.$newElement[0].classList.add(classNames.DISABLED);
        this.$button.addClass(classNames.DISABLED).attr(''tabindex'', -1).attr(''aria-disabled'', true);
      } else {
        if (this.$button[0].classList.contains(classNames.DISABLED)) {
          this.$newElement[0].classList.remove(classNames.DISABLED);
          this.$button.removeClass(classNames.DISABLED).attr(''aria-disabled'', false);
        }

        if (this.$button.attr(''tabindex'') == -1 && !this.$element.data(''tabindex'')) {
          this.$button.removeAttr(''tabindex'');
        }
      }

      this.$button.on(''click'', function () {
        return !that.isDisabled();
      });
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

      this.$newElement.on(''show.bs.dropdown'', function () {
        if (version.major > 3 && !that.dropdown) {
          that.dropdown = that.$button.data(''bs.dropdown'');
          that.dropdown._menu = that.$menu[0];
        }
      });

      this.$button.on(''click.bs.dropdown.data-api'', function () {
        if (!that.$newElement.hasClass(classNames.SHOW)) {
          that.setSize();
        }
      });

      function setFocus () {
        if (that.options.liveSearch) {
          that.$searchbox.trigger(''focus'');
        } else {
          that.$menuInner.trigger(''focus'');
        }
      }

      function checkPopperExists () {
        if (that.dropdown && that.dropdown._popper && that.dropdown._popper.state.isCreated) {
          setFocus();
        } else {
          requestAnimationFrame(checkPopperExists);
        }
      }

      this.$element.on(''shown'' + EVENT_KEY, function () {
        if (that.$menuInner[0].scrollTop !== that.selectpicker.view.scrollTop) {
          that.$menuInner[0].scrollTop = that.selectpicker.view.scrollTop;
        }

        if (version.major > 3) {
          requestAnimationFrame(checkPopperExists);
        } else {
          setFocus();
        }
      });

      // ensure posinset and setsize are correct before selecting an option via a click
      this.$menuInner.on(''mouseenter'', ''li a'', function (e) {
        var hoverLi = this.parentElement,
            position0 = that.isVirtual() ? that.selectpicker.view.position0 : 0,
            index = Array.prototype.indexOf.call(hoverLi.parentElement.children, hoverLi),
            hoverData = that.selectpicker.current.data[index + position0];

        that.focusItem(hoverLi, hoverData, true);
      });

      this.$menuInner.on(''click'', ''li a'', function (e, retainActive) {
        var $this = $(this),
            element = that.$element[0],
            position0 = that.isVirtual() ? that.selectpicker.view.position0 : 0,
            clickedData = that.selectpicker.current.data[$this.parent().index() + position0],
            clickedIndex = clickedData.index,
            prevValue = getSelectValues(element),
            prevIndex = element.selectedIndex,
            prevOption = element.options[prevIndex],
            triggerChange = true;

        // Don''t close on multi choice menu
        if (that.multiple && that.options.maxOptions !== 1) {
          e.stopPropagation();
        }

        e.preventDefault();

        // Don''t run if the select is disabled
        if (!that.isDisabled() && !$this.parent().hasClass(classNames.DISABLED)) {
          var $options = that.$element.find(''option''),
              option = clickedData.option,
              $option = $(option),
              state = option.selected,
              $optgroup = $option.parent(''optgroup''),
              $optgroupOptions = $optgroup.find(''option''),
              maxOptions = that.options.maxOptions,
              maxOptionsGrp = $optgroup.data(''maxOptions'') || false;

          if (clickedIndex === that.activeIndex) retainActive = true;

          if (!retainActive) {
            that.prevActiveIndex = that.activeIndex;
            that.activeIndex = undefined;
          }

          if (!that.multiple) { // Deselect all others if not multi select box
            prevOption.selected = false;
            option.selected = true;
            that.setSelected(clickedIndex, true);
          } else { // Toggle the one we have chosen if we are multi select.
            option.selected = !state;

            that.setSelected(clickedIndex, !state);
            $this.trigger(''blur'');

            if (maxOptions !== false || maxOptionsGrp !== false) {
              var maxReached = maxOptions < $options.filter('':selected'').length,
                  maxReachedGrp = maxOptionsGrp < $optgroup.find(''option:selected'').length;

              if ((maxOptions && maxReached) || (maxOptionsGrp && maxReachedGrp)) {
                if (maxOptions && maxOptions == 1) {
                  $options.prop(''selected'', false);
                  $option.prop(''selected'', true);

                  for (var i = 0; i < $options.length; i++) {
                    that.setSelected(i, false);
                  }

                  that.setSelected(clickedIndex, true);
                } else if (maxOptionsGrp && maxOptionsGrp == 1) {
                  $optgroup.find(''option:selected'').prop(''selected'', false);
                  $option.prop(''selected'', true);

                  for (var i = 0; i < $optgroupOptions.length; i++) {
                    var option = $optgroupOptions[i];
                    that.setSelected($options.index(option), false);
                  }

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
                    that.$element.trigger(''maxReached'' + EVENT_KEY);
                  }

                  if (maxOptionsGrp && maxReachedGrp) {
                    $notify.append($(''<div>'' + maxTxtGrp + ''</div>''));
                    triggerChange = false;
                    that.$element.trigger(''maxReachedGrp'' + EVENT_KEY);
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
            that.$button.trigger(''focus'');
          } else if (that.options.liveSearch) {
            that.$searchbox.trigger(''focus'');
          }

          // Trigger select ''change''
          if (triggerChange) {
            if (that.multiple || prevIndex !== element.selectedIndex) {
              // $option.prop(''selected'') is current option state (selected/unselected). prevValue is the value of the select prior to being changed.
              changedArguments = [option.index, $option.prop(''selected''), prevValue];
              that.$element
                .triggerNative(''change'');
            }
          }
        }
      });

      this.$menu.on(''click'', ''li.'' + classNames.DISABLED + '' a, .'' + classNames.POPOVERHEADER + '', .'' + classNames.POPOVERHEADER + '' :not(.close)'', function (e) {
        if (e.currentTarget == this) {
          e.preventDefault();
          e.stopPropagation();
          if (that.options.liveSearch && !$(e.target).hasClass(''close'')) {
            that.$searchbox.trigger(''focus'');
          } else {
            that.$button.trigger(''focus'');
          }
        }
      });

      this.$menuInner.on(''click'', ''.divider, .dropdown-header'', function (e) {
        e.preventDefault();
        e.stopPropagation();
        if (that.options.liveSearch) {
          that.$searchbox.trigger(''focus'');
        } else {
          that.$button.trigger(''focus'');
        }
      });

      this.$menu.on(''click'', ''.'' + classNames.POPOVERHEADER + '' .close'', function () {
        that.$button.trigger(''click'');
      });

      this.$searchbox.on(''click'', function (e) {
        e.stopPropagation();
      });

      this.$menu.on(''click'', ''.actions-btn'', function (e) {
        if (that.options.liveSearch) {
          that.$searchbox.trigger(''focus'');
        } else {
          that.$button.trigger(''focus'');
        }

        e.preventDefault();
        e.stopPropagation();

        if ($(this).hasClass(''bs-select-all'')) {
          that.selectAll();
        } else {
          that.deselectAll();
        }
      });

      this.$element
        .on(''change'' + EVENT_KEY, function () {
          that.render();
          that.$element.trigger(''changed'' + EVENT_KEY, changedArguments);
          changedArguments = null;
        })
        .on(''focus'' + EVENT_KEY, function () {
          if (!that.options.mobile) that.$button.trigger(''focus'');
        });
    },

    liveSearchListener: function () {
      var that = this,
          noResults = document.createElement(''li'');

      this.$button.on(''click.bs.dropdown.data-api'', function () {
        if (!!that.$searchbox.val()) {
          that.$searchbox.val('''');
        }
      });

      this.$searchbox.on(''click.bs.dropdown.data-api focus.bs.dropdown.data-api touchend.bs.dropdown.data-api'', function (e) {
        e.stopPropagation();
      });

      this.$searchbox.on(''input propertychange'', function () {
        var searchValue = that.$searchbox.val();

        that.selectpicker.search.elements = [];
        that.selectpicker.search.data = [];

        if (searchValue) {
          var i,
              searchMatch = [],
              q = searchValue.toUpperCase(),
              cache = {},
              cacheArr = [],
              searchStyle = that._searchStyle(),
              normalizeSearch = that.options.liveSearchNormalize;

          if (normalizeSearch) q = normalizeToBase(q);

          that._$lisSelected = that.$menuInner.find(''.selected'');

          for (var i = 0; i < that.selectpicker.main.data.length; i++) {
            var li = that.selectpicker.main.data[i];

            if (!cache[i]) {
              cache[i] = stringSearch(li, q, searchStyle, normalizeSearch);
            }

            if (cache[i] && li.headerIndex !== undefined && cacheArr.indexOf(li.headerIndex) === -1) {
              if (li.headerIndex > 0) {
                cache[li.headerIndex - 1] = true;
                cacheArr.push(li.headerIndex - 1);
              }

              cache[li.headerIndex] = true;
              cacheArr.push(li.headerIndex);

              cache[li.lastIndex + 1] = true;
            }

            if (cache[i] && li.type !== ''optgroup-label'') cacheArr.push(i);
          }

          for (var i = 0, cacheLen = cacheArr.length; i < cacheLen; i++) {
            var index = cacheArr[i],
                prevIndex = cacheArr[i - 1],
                li = that.selectpicker.main.data[index],
                liPrev = that.selectpicker.main.data[prevIndex];

            if (li.type !== ''divider'' || (li.type === ''divider'' && liPrev && liPrev.type !== ''divider'' && cacheLen - 1 !== i)) {
              that.selectpicker.search.data.push(li);
              searchMatch.push(that.selectpicker.main.elements[index]);
            }
          }

          that.activeIndex = undefined;
          that.noScroll = true;
          that.$menuInner.scrollTop(0);
          that.selectpicker.search.elements = searchMatch;
          that.createView(true);

          if (!searchMatch.length) {
            noResults.className = ''no-results'';
            noResults.innerHTML = that.options.noneResultsText.replace(''{0}'', ''"'' + htmlEscape(searchValue) + ''"'');
            that.$menuInner[0].firstChild.appendChild(noResults);
          }
        } else {
          that.$menuInner.scrollTop(0);
          that.createView(false);
        }
      });
    },

    _searchStyle: function () {
      return this.options.liveSearchStyle || ''contains'';
    },

    val: function (value) {
      var element = this.$element[0];

      if (typeof value !== ''undefined'') {
        var prevValue = getSelectValues(element);

        changedArguments = [null, null, prevValue];

        this.$element
          .val(value)
          .trigger(''changed'' + EVENT_KEY, changedArguments);

        if (this.$newElement.hasClass(classNames.SHOW)) {
          if (this.multiple) {
            this.setOptionStatus(true);
          } else {
            var liSelectedIndex = (element.options[element.selectedIndex] || {}).liIndex;

            if (typeof liSelectedIndex === ''number'') {
              this.setSelected(this.selectedIndex, false);
              this.setSelected(liSelectedIndex, true);
            }
          }
        }

        this.render();

        changedArguments = null;

        return this.$element;
      } else {
        return this.$element.val();
      }
    },

    changeAll: function (status) {
      if (!this.multiple) return;
      if (typeof status === ''undefined'') status = true;

      var element = this.$element[0],
          previousSelected = 0,
          currentSelected = 0,
          prevValue = getSelectValues(element);

      element.classList.add(''bs-select-hidden'');

      for (var i = 0, len = this.selectpicker.current.elements.length; i < len; i++) {
        var liData = this.selectpicker.current.data[i],
            option = liData.option;

        if (option && !liData.disabled && liData.type !== ''divider'') {
          if (liData.selected) previousSelected++;
          option.selected = status;
          if (status) currentSelected++;
        }
      }

      element.classList.remove(''bs-select-hidden'');

      if (previousSelected === currentSelected) return;

      this.setOptionStatus();

      changedArguments = [null, null, prevValue];

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

      this.$button.trigger(''click.bs.dropdown.data-api'');
    },

    keydown: function (e) {
      var $this = $(this),
          isToggle = $this.hasClass(''dropdown-toggle''),
          $parent = isToggle ? $this.closest(''.dropdown'') : $this.closest(Selector.MENU),
          that = $parent.data(''this''),
          $items = that.findLis(),
          index,
          isActive,
          liActive,
          activeLi,
          offset,
          updateScroll = false,
          downOnTab = e.which === keyCodes.TAB && !isToggle && !that.options.selectOnTab,
          isArrowKey = REGEXP_ARROW.test(e.which) || downOnTab,
          scrollTop = that.$menuInner[0].scrollTop,
          isVirtual = that.isVirtual(),
          position0 = isVirtual === true ? that.selectpicker.view.position0 : 0;

      isActive = that.$newElement.hasClass(classNames.SHOW);

      if (
        !isActive &&
        (
          isArrowKey ||
          (e.which >= 48 && e.which <= 57) ||
          (e.which >= 96 && e.which <= 105) ||
          (e.which >= 65 && e.which <= 90)
        )
      ) {
        that.$button.trigger(''click.bs.dropdown.data-api'');

        if (that.options.liveSearch) {
          that.$searchbox.trigger(''focus'');
          return;
        }
      }

      if (e.which === keyCodes.ESCAPE && isActive) {
        e.preventDefault();
        that.$button.trigger(''click.bs.dropdown.data-api'').trigger(''focus'');
      }

      if (isArrowKey) { // if up or down
        if (!$items.length) return;

        liActive = that.selectpicker.main.elements[that.activeIndex];
        index = liActive ? Array.prototype.indexOf.call(liActive.parentElement.children, liActive) : -1;

        if (index !== -1) {
          that.defocusItem(liActive);
        }

        if (e.which === keyCodes.ARROW_UP) { // up
          if (index !== -1) index--;
          if (index + position0 < 0) index += $items.length;

          if (!that.selectpicker.view.canHighlight[index + position0]) {
            index = that.selectpicker.view.canHighlight.slice(0, index + position0).lastIndexOf(true) - position0;
            if (index === -1) index = $items.length - 1;
          }
        } else if (e.which === keyCodes.ARROW_DOWN || downOnTab) { // down
          index++;
          if (index + position0 >= that.selectpicker.view.canHighlight.length) index = 0;

          if (!that.selectpicker.view.canHighlight[index + position0]) {
            index = index + 1 + that.selectpicker.view.canHighlight.slice(index + position0 + 1).indexOf(true);
          }
        }

        e.preventDefault();

        var liActiveIndex = position0 + index;

        if (e.which === keyCodes.ARROW_UP) { // up
          // scroll to bottom and highlight last option
          if (position0 === 0 && index === $items.length - 1) {
            that.$menuInner[0].scrollTop = that.$menuInner[0].scrollHeight;

            liActiveIndex = that.selectpicker.current.elements.length - 1;
          } else {
            activeLi = that.selectpicker.current.data[liActiveIndex];
            offset = activeLi.position - activeLi.height;

            updateScroll = offset < scrollTop;
          }
        } else if (e.which === keyCodes.ARROW_DOWN || downOnTab) { // down
          // scroll to top and highlight first option
          if (index === 0) {
            that.$menuInner[0].scrollTop = 0;

            liActiveIndex = 0;
          } else {
            activeLi = that.selectpicker.current.data[liActiveIndex];
            offset = activeLi.position - that.sizeInfo.menuInnerHeight;

            updateScroll = offset > scrollTop;
          }
        }

        liActive = that.selectpicker.current.elements[liActiveIndex];

        that.activeIndex = that.selectpicker.current.data[liActiveIndex].index;

        that.focusItem(liActive);

        that.selectpicker.view.currentActive = liActive;

        if (updateScroll) that.$menuInner[0].scrollTop = offset;

        if (that.options.liveSearch) {
          that.$searchbox.trigger(''focus'');
        } else {
          $this.trigger(''focus'');
        }
      } else if (
        (!$this.is(''input'') && !REGEXP_TAB_OR_ESCAPE.test(e.which)) ||
        (e.which === keyCodes.SPACE && that.selectpicker.keydown.keyHistory)
      ) {
        var searchMatch,
            matches = [],
            keyHistory;

        e.preventDefault();

        that.selectpicker.keydown.keyHistory += keyCodeMap[e.which];

        if (that.selectpicker.keydown.resetKeyHistory.cancel) clearTimeout(that.selectpicker.keydown.resetKeyHistory.cancel);
        that.selectpicker.keydown.resetKeyHistory.cancel = that.selectpicker.keydown.resetKeyHistory.start();

        keyHistory = that.selectpicker.keydown.keyHistory;

        // if all letters are the same, set keyHistory to just the first character when searching
        if (/^(.)\1+$/.test(keyHistory)) {
          keyHistory = keyHistory.charAt(0);
        }

        // find matches
        for (var i = 0; i < that.selectpicker.current.data.length; i++) {
          var li = that.selectpicker.current.data[i],
              hasMatch;

          hasMatch = stringSearch(li, keyHistory, ''startsWith'', true);

          if (hasMatch && that.selectpicker.view.canHighlight[i]) {
            matches.push(li.index);
          }
        }

        if (matches.length) {
          var matchIndex = 0;

          $items.removeClass(''active'').find(''a'').removeClass(''active'');

          // either only one key has been pressed or they are all the same key
          if (keyHistory.length === 1) {
            matchIndex = matches.indexOf(that.activeIndex);

            if (matchIndex === -1 || matchIndex === matches.length - 1) {
              matchIndex = 0;
            } else {
              matchIndex++;
            }
          }

          searchMatch = matches[matchIndex];

          activeLi = that.selectpicker.main.data[searchMatch];

          if (scrollTop - activeLi.position > 0) {
            offset = activeLi.position - activeLi.height;
            updateScroll = true;
          } else {
            offset = activeLi.position - that.sizeInfo.menuInnerHeight;
            // if the option is already visible at the current scroll position, just keep it the same
            updateScroll = activeLi.position > scrollTop + that.sizeInfo.menuInnerHeight;
          }

          liActive = that.selectpicker.main.elements[searchMatch];

          that.activeIndex = matches[matchIndex];

          that.focusItem(liActive);

          if (liActive) liActive.firstChild.focus();

          if (updateScroll) that.$menuInner[0].scrollTop = offset;

          $this.trigger(''focus'');
        }
      }

      // Select focused option if "Enter", "Spacebar" or "Tab" (when selectOnTab is true) are pressed inside the menu.
      if (
        isActive &&
        (
          (e.which === keyCodes.SPACE && !that.selectpicker.keydown.keyHistory) ||
          e.which === keyCodes.ENTER ||
          (e.which === keyCodes.TAB && that.options.selectOnTab)
        )
      ) {
        if (e.which !== keyCodes.SPACE) e.preventDefault();

        if (!that.options.liveSearch || e.which !== keyCodes.SPACE) {
          that.$menuInner.find(''.active a'').trigger(''click'', true); // retain active class
          $this.trigger(''focus'');

          if (!that.options.liveSearch) {
            // Prevent screen from scrolling if the user hits the spacebar
            e.preventDefault();
            // Fixes spacebar selection of dropdown items in FF & IE
            $(document).data(''spaceSelect'', true);
          }
        }
      }
    },

    mobile: function () {
      this.$element[0].classList.add(''mobile-device'');
    },

    refresh: function () {
      // update options if data attributes have been changed
      var config = $.extend({}, this.options, this.$element.data());
      this.options = config;

      this.checkDisabled();
      this.setStyle();
      this.render();
      this.createLi();
      this.setWidth();

      this.setSize(true);

      this.$element.trigger(''refreshed'' + EVENT_KEY);
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
        .off(EVENT_KEY)
        .removeData(''selectpicker'')
        .removeClass(''bs-select-hidden selectpicker'');

      $(window).off(EVENT_KEY + ''.'' + this.selectId);
    }
  };

  // SELECTPICKER PLUGIN DEFINITION
  // ==============================
  function Plugin (option) {
    // get the args of the outer function..
    var args = arguments;
    // The arguments of the function are explicitly re-defined from the argument list, because the shift causes them
    // to get lost/corrupted in android 2.3 and IE9 #715 #775
    var _option = option;

    [].shift.apply(args);

    // if the version was not set successfully
    if (!version.success) {
      // try to retreive it again
      try {
        version.full = ($.fn.dropdown.Constructor.VERSION || '''').split('' '')[0].split(''.'');
      } catch (err) {
        // fall back to use BootstrapVersion if set
        if (Selectpicker.BootstrapVersion) {
          version.full = Selectpicker.BootstrapVersion.split('' '')[0].split(''.'');
        } else {
          version.full = [version.major, ''0'', ''0''];

          console.warn(
            ''There was an issue retrieving Bootstrap\''s version. '' +
            ''Ensure Bootstrap is being loaded before bootstrap-select and there is no namespace collision. '' +
            ''If loading Bootstrap asynchronously, the version may need to be manually specified via $.fn.selectpicker.Constructor.BootstrapVersion.'',
            err
          );
        }
      }

      version.major = version.full[0];
      version.success = true;
    }

    if (version.major === ''4'') {
      // some defaults need to be changed if using Bootstrap 4
      // check to see if they have already been manually changed before forcing them to update
      var toUpdate = [];

      if (Selectpicker.DEFAULTS.style === classNames.BUTTONCLASS) toUpdate.push({ name: ''style'', className: ''BUTTONCLASS'' });
      if (Selectpicker.DEFAULTS.iconBase === classNames.ICONBASE) toUpdate.push({ name: ''iconBase'', className: ''ICONBASE'' });
      if (Selectpicker.DEFAULTS.tickIcon === classNames.TICKICON) toUpdate.push({ name: ''tickIcon'', className: ''TICKICON'' });

      classNames.DIVIDER = ''dropdown-divider'';
      classNames.SHOW = ''show'';
      classNames.BUTTONCLASS = ''btn-light'';
      classNames.POPOVERHEADER = ''popover-header'';
      classNames.ICONBASE = '''';
      classNames.TICKICON = ''bs-ok-default'';

      for (var i = 0; i < toUpdate.length; i++) {
        var option = toUpdate[i];
        Selectpicker.DEFAULTS[option.name] = classNames[option.className];
      }
    }

    var value;
    var chain = this.each(function () {
      var $this = $(this);
      if ($this.is(''select'')) {
        var data = $this.data(''selectpicker''),
            options = typeof _option == ''object'' && _option;

        if (!data) {
          var dataAttributes = $this.data();

          for (var dataAttr in dataAttributes) {
            if (dataAttributes.hasOwnProperty(dataAttr) && $.inArray(dataAttr, DISALLOWED_ATTRIBUTES) !== -1) {
              delete dataAttributes[dataAttr];
            }
          }

          var config = $.extend({}, Selectpicker.DEFAULTS, $.fn.selectpicker.defaults || {}, dataAttributes, options);
          config.template = $.extend({}, Selectpicker.DEFAULTS.template, ($.fn.selectpicker.defaults ? $.fn.selectpicker.defaults.template : {}), dataAttributes.template, options.template);
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
      // noinspection JSUnusedAssignment
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
    .off(''keydown.bs.dropdown.data-api'')
    .on(''keydown'' + EVENT_KEY, ''.bootstrap-select [data-toggle="dropdown"], .bootstrap-select [role="listbox"], .bootstrap-select .bs-searchbox input'', Selectpicker.prototype.keydown)
    .on(''focusin.modal'', ''.bootstrap-select [data-toggle="dropdown"], .bootstrap-select [role="listbox"], .bootstrap-select .bs-searchbox input'', function (e) {
      e.stopPropagation();
    });

  // SELECTPICKER DATA-API
  // =====================
  $(window).on(''load'' + EVENT_KEY + ''.data-api'', function () {
    $(''.selectpicker'').each(function () {
      var $selectpicker = $(this);
      Plugin.call($selectpicker, $selectpicker.data());
    })
  });
})(jQuery);


}));
//# sourceMappingURL=bootstrap-select.js.map'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsamETJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-am_ET.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultsamETJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultsamETJsContent [
	^ '/*!
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
    noneSelectedText: ''ምንም አልተመረጠም'',
    noneResultsText: ''ከ{0} ጋር ተመሳሳይ ውጤት የለም'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? ''{0} ምርጫ ተመርጧል'' : ''{0} ምርጫዎች ተመርጠዋል'';
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        (numAll == 1) ? ''ገደብ ላይ ተደርሷል  (ቢበዛ {n} ምርጫ)'' : ''ገደብ ላይ ተደርሷል  (ቢበዛ {n} ምርጫዎች)'',
        (numGroup == 1) ? ''የቡድን ገደብ ላይ ተደርሷል (ቢበዛ {n} ምርጫ)'' : ''የቡድን ገደብ ላይ ተደርሷል (ቢበዛ {n} ምርጫዎች)''
      ];
    },
    selectAllText: ''ሁሉም ይመረጥ'',
    deselectAllText: ''ሁሉም አይመረጥ'',
    multipleSeparator: '' ፣ ''
  };
})(jQuery);


}));
//# sourceMappingURL=defaults-am_ET.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
      return (numSelected == 1) ? ''{0} خيار تم إختياره'' : ''{0} خيارات تمت إختيارها'';
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
//# sourceMappingURL=defaults-ar_AR.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
      return (numSelected == 1) ? ''{0} избран елемент'' : ''{0} избрани елемента'';
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
//# sourceMappingURL=defaults-bg_BG.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-cs_CZ.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
      return (numSelected == 1) ? ''{0} valgt'' : ''{0} valgt'';
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
//# sourceMappingURL=defaults-da_DK.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
      return (numSelected == 1) ? ''{0} Element ausgewählt'' : ''{0} Elemente ausgewählt'';
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
//# sourceMappingURL=defaults-de_DE.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
      return (numSelected == 1) ? ''{0} item selected'' : ''{0} items selected'';
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
//# sourceMappingURL=defaults-en_US.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-es_CL.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-es_ES.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
      return (numSelected == 1) ? ''{0} item selected'' : ''{0} items selected'';
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
//# sourceMappingURL=defaults-et_EE.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-eu.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
    countSelectedText: ''{0} از {1} مورد انتخاب شده'',
    maxOptionsText: [''بیشتر ممکن نیست {حداکثر {n} عدد}'', ''بیشتر ممکن نیست {حداکثر {n} عدد}''],
    selectAllText: ''انتخاب همه'',
    deselectAllText: ''انتخاب هیچ کدام'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
//# sourceMappingURL=defaults-fa_IR.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
      return (numSelected == 1) ? ''{0} valittu'' : ''{0} valitut'';
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
//# sourceMappingURL=defaults-fi_FI.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
      return (numSelected > 1) ? ''{0} éléments sélectionnés'' : ''{0} élément sélectionné'';
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        (numAll > 1) ? ''Limite atteinte ({n} éléments max)'' : ''Limite atteinte ({n} élément max)'',
        (numGroup > 1) ? ''Limite du groupe atteinte ({n} éléments max)'' : ''Limite du groupe atteinte ({n} élément max)''
      ];
    },
    multipleSeparator: '', '',
    selectAllText: ''Tout sélectionner'',
    deselectAllText: ''Tout désélectionner''
  };
})(jQuery);


}));
//# sourceMappingURL=defaults-fr_FR.js.map'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultshrHRJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-hr_HR.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultshrHRJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultshrHRJsContent [
	^ '/*!
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
      return (numSelected == 1) ? ''{0} stavka selektirana'' : ''{0} stavke selektirane'';
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
//# sourceMappingURL=defaults-hr_HR.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-hu_HU.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-id_ID.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? ''Selezionato {0} di {1}'' : ''Selezionati {0} di {1}'';
    },
    maxOptionsText: [''Limite raggiunto ({n} {var} max)'', ''Limite del gruppo raggiunto ({n} {var} max)'', [''elementi'', ''elemento'']],
    multipleSeparator: '', '',
    selectAllText: ''Seleziona Tutto'',
    deselectAllText: ''Deseleziona Tutto''
  };
})(jQuery);


}));
//# sourceMappingURL=defaults-it_IT.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-ja_JP.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
      return (numSelected == 1) ? ''{0} ធាតុដែលបានជ្រើស'' : ''{0} ធាតុដែលបានជ្រើស'';
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
//# sourceMappingURL=defaults-kh_KM.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
      return ''{0}개를 선택하였습니다'';
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
//# sourceMappingURL=defaults-ko_KR.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
      return (numSelected == 1) ? ''{0} elementas pasirinktas'' : ''{0} elementai(-ų) pasirinkta'';
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
//# sourceMappingURL=defaults-lt_LT.js.map'
]

{ #category : #'uploaded metadata' }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultslvLVJs [
	^ WAFileLibraryResource
		filepath: 'js/i18n/defaults-lv_LV.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsi18ndefaultslvLVJsContent)
]

{ #category : #uploaded }
BootstrapSelectDevelopmentLibrary >> jsi18ndefaultslvLVJsContent [
	^ '/*!
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
    noneSelectedText: ''Nekas nav atzīmēts'',
    noneResultsText: ''Nav neviena rezultāta {0}'',
    countSelectedText: function (numSelected, numTotal) {
      return (numSelected == 1) ? ''{0} ieraksts atzīmēts'' : ''{0} ieraksti atzīmēts'';
    },
    maxOptionsText: function (numAll, numGroup) {
      return [
        (numAll == 1) ? ''Sasniegts limits ({n} ieraksts maksimums)'' : ''Sasniegts limits ({n} ieraksti maksimums)'',
        (numGroup == 1) ? ''Sasniegts grupas limits ({n} ieraksts maksimums)'' : ''Sasniegts grupas limits ({n} ieraksti maksimums)''
      ];
    },
    selectAllText: ''Atzīmēt visu'',
    deselectAllText: ''Neatzīmēt nevienu'',
    multipleSeparator: '', ''
  };
})(jQuery);


}));
//# sourceMappingURL=defaults-lv_LV.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
      return (numSelected == 1) ? ''{0} alternativ valgt'' : ''{0} alternativer valgt'';
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
//# sourceMappingURL=defaults-nb_NO.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-nl_NL.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-pl_PL.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-pt_BR.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-pt_PT.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-ro_RO.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-ru_RU.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-sk_SK.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-sl_SI.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
      return (numSelected === 1) ? ''{0} alternativ valt'' : ''{0} alternativ valda'';
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
//# sourceMappingURL=defaults-sv_SE.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
      return (numSelected == 1) ? ''{0} öğe seçildi'' : ''{0} öğe seçildi'';
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
//# sourceMappingURL=defaults-tr_TR.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-ua_UA.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
      return ''{0} mục đã chọn'';
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
//# sourceMappingURL=defaults-vi_VN.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-zh_CN.js.map'
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
 * Bootstrap-select v1.13.10 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

(function (root, factory) {
  if (root === undefined && window !== undefined) root = window;
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
//# sourceMappingURL=defaults-zh_TW.js.map'
]

{ #category : #accessing }
BootstrapSelectDevelopmentLibrary >> selectorsToInclude [

	^ OrderedCollection new
		addAll: #(cssbootstrapselectCss jsbootstrapselectJs);
		add: ('jsi18n<1s>Js' expandMacrosWith: ((BootstrapSelectLanguageToFileNameTranslator new fileNameFrom: locale) select: #isLetter)) asSymbol;
		asArray
]
