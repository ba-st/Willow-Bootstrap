"
I'm a development library for Bootstrap Datepicker
"
Class {
	#name : #BootstrapDatepickerDevelopmentLibrary,
	#superclass : #BootstrapDatepickerLibrary,
	#category : 'Willow-Bootstrap-Datepicker'
}

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> cssbootstrapdatepicker3Css [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'css/bootstrap-datepicker3.css'
		mimeType: (WAMimeType main: 'text' sub: 'css')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #cssbootstrapdatepicker3CssContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> cssbootstrapdatepicker3CssContent [

	<ignoreForCoverage>
	^ '/*!
 * Datepicker for Bootstrap v1.7.0 (https://github.com/uxsolutions/bootstrap-datepicker)
 *
 * Licensed under the Apache License v2.0 (http://www.apache.org/licenses/LICENSE-2.0)
 */

.datepicker {
  border-radius: 4px;
  direction: ltr;
}
.datepicker-inline {
  width: 220px;
}
.datepicker-rtl {
  direction: rtl;
}
.datepicker-rtl.dropdown-menu {
  left: auto;
}
.datepicker-rtl table tr td span {
  float: right;
}
.datepicker-dropdown {
  top: 0;
  left: 0;
  padding: 4px;
}
.datepicker-dropdown:before {
  content: '''';
  display: inline-block;
  border-left: 7px solid transparent;
  border-right: 7px solid transparent;
  border-bottom: 7px solid rgba(0, 0, 0, 0.15);
  border-top: 0;
  border-bottom-color: rgba(0, 0, 0, 0.2);
  position: absolute;
}
.datepicker-dropdown:after {
  content: '''';
  display: inline-block;
  border-left: 6px solid transparent;
  border-right: 6px solid transparent;
  border-bottom: 6px solid #fff;
  border-top: 0;
  position: absolute;
}
.datepicker-dropdown.datepicker-orient-left:before {
  left: 6px;
}
.datepicker-dropdown.datepicker-orient-left:after {
  left: 7px;
}
.datepicker-dropdown.datepicker-orient-right:before {
  right: 6px;
}
.datepicker-dropdown.datepicker-orient-right:after {
  right: 7px;
}
.datepicker-dropdown.datepicker-orient-bottom:before {
  top: -7px;
}
.datepicker-dropdown.datepicker-orient-bottom:after {
  top: -6px;
}
.datepicker-dropdown.datepicker-orient-top:before {
  bottom: -7px;
  border-bottom: 0;
  border-top: 7px solid rgba(0, 0, 0, 0.15);
}
.datepicker-dropdown.datepicker-orient-top:after {
  bottom: -6px;
  border-bottom: 0;
  border-top: 6px solid #fff;
}
.datepicker table {
  margin: 0;
  -webkit-touch-callout: none;
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
.datepicker table tr td,
.datepicker table tr th {
  text-align: center;
  width: 30px;
  height: 30px;
  border-radius: 4px;
  border: none;
}
.table-striped .datepicker table tr td,
.table-striped .datepicker table tr th {
  background-color: transparent;
}
.datepicker table tr td.old,
.datepicker table tr td.new {
  color: #777777;
}
.datepicker table tr td.day:hover,
.datepicker table tr td.focused {
  background: #eeeeee;
  cursor: pointer;
}
.datepicker table tr td.disabled,
.datepicker table tr td.disabled:hover {
  background: none;
  color: #777777;
  cursor: default;
}
.datepicker table tr td.highlighted {
  color: #000;
  background-color: #d9edf7;
  border-color: #85c5e5;
  border-radius: 0;
}
.datepicker table tr td.highlighted:focus,
.datepicker table tr td.highlighted.focus {
  color: #000;
  background-color: #afd9ee;
  border-color: #298fc2;
}
.datepicker table tr td.highlighted:hover {
  color: #000;
  background-color: #afd9ee;
  border-color: #52addb;
}
.datepicker table tr td.highlighted:active,
.datepicker table tr td.highlighted.active {
  color: #000;
  background-color: #afd9ee;
  border-color: #52addb;
}
.datepicker table tr td.highlighted:active:hover,
.datepicker table tr td.highlighted.active:hover,
.datepicker table tr td.highlighted:active:focus,
.datepicker table tr td.highlighted.active:focus,
.datepicker table tr td.highlighted:active.focus,
.datepicker table tr td.highlighted.active.focus {
  color: #000;
  background-color: #91cbe8;
  border-color: #298fc2;
}
.datepicker table tr td.highlighted.disabled:hover,
.datepicker table tr td.highlighted[disabled]:hover,
fieldset[disabled] .datepicker table tr td.highlighted:hover,
.datepicker table tr td.highlighted.disabled:focus,
.datepicker table tr td.highlighted[disabled]:focus,
fieldset[disabled] .datepicker table tr td.highlighted:focus,
.datepicker table tr td.highlighted.disabled.focus,
.datepicker table tr td.highlighted[disabled].focus,
fieldset[disabled] .datepicker table tr td.highlighted.focus {
  background-color: #d9edf7;
  border-color: #85c5e5;
}
.datepicker table tr td.highlighted.focused {
  background: #afd9ee;
}
.datepicker table tr td.highlighted.disabled,
.datepicker table tr td.highlighted.disabled:active {
  background: #d9edf7;
  color: #777777;
}
.datepicker table tr td.today {
  color: #000;
  background-color: #ffdb99;
  border-color: #ffb733;
}
.datepicker table tr td.today:focus,
.datepicker table tr td.today.focus {
  color: #000;
  background-color: #ffc966;
  border-color: #b37400;
}
.datepicker table tr td.today:hover {
  color: #000;
  background-color: #ffc966;
  border-color: #f59e00;
}
.datepicker table tr td.today:active,
.datepicker table tr td.today.active {
  color: #000;
  background-color: #ffc966;
  border-color: #f59e00;
}
.datepicker table tr td.today:active:hover,
.datepicker table tr td.today.active:hover,
.datepicker table tr td.today:active:focus,
.datepicker table tr td.today.active:focus,
.datepicker table tr td.today:active.focus,
.datepicker table tr td.today.active.focus {
  color: #000;
  background-color: #ffbc42;
  border-color: #b37400;
}
.datepicker table tr td.today.disabled:hover,
.datepicker table tr td.today[disabled]:hover,
fieldset[disabled] .datepicker table tr td.today:hover,
.datepicker table tr td.today.disabled:focus,
.datepicker table tr td.today[disabled]:focus,
fieldset[disabled] .datepicker table tr td.today:focus,
.datepicker table tr td.today.disabled.focus,
.datepicker table tr td.today[disabled].focus,
fieldset[disabled] .datepicker table tr td.today.focus {
  background-color: #ffdb99;
  border-color: #ffb733;
}
.datepicker table tr td.today.focused {
  background: #ffc966;
}
.datepicker table tr td.today.disabled,
.datepicker table tr td.today.disabled:active {
  background: #ffdb99;
  color: #777777;
}
.datepicker table tr td.range {
  color: #000;
  background-color: #eeeeee;
  border-color: #bbbbbb;
  border-radius: 0;
}
.datepicker table tr td.range:focus,
.datepicker table tr td.range.focus {
  color: #000;
  background-color: #d5d5d5;
  border-color: #7c7c7c;
}
.datepicker table tr td.range:hover {
  color: #000;
  background-color: #d5d5d5;
  border-color: #9d9d9d;
}
.datepicker table tr td.range:active,
.datepicker table tr td.range.active {
  color: #000;
  background-color: #d5d5d5;
  border-color: #9d9d9d;
}
.datepicker table tr td.range:active:hover,
.datepicker table tr td.range.active:hover,
.datepicker table tr td.range:active:focus,
.datepicker table tr td.range.active:focus,
.datepicker table tr td.range:active.focus,
.datepicker table tr td.range.active.focus {
  color: #000;
  background-color: #c3c3c3;
  border-color: #7c7c7c;
}
.datepicker table tr td.range.disabled:hover,
.datepicker table tr td.range[disabled]:hover,
fieldset[disabled] .datepicker table tr td.range:hover,
.datepicker table tr td.range.disabled:focus,
.datepicker table tr td.range[disabled]:focus,
fieldset[disabled] .datepicker table tr td.range:focus,
.datepicker table tr td.range.disabled.focus,
.datepicker table tr td.range[disabled].focus,
fieldset[disabled] .datepicker table tr td.range.focus {
  background-color: #eeeeee;
  border-color: #bbbbbb;
}
.datepicker table tr td.range.focused {
  background: #d5d5d5;
}
.datepicker table tr td.range.disabled,
.datepicker table tr td.range.disabled:active {
  background: #eeeeee;
  color: #777777;
}
.datepicker table tr td.range.highlighted {
  color: #000;
  background-color: #e4eef3;
  border-color: #9dc1d3;
}
.datepicker table tr td.range.highlighted:focus,
.datepicker table tr td.range.highlighted.focus {
  color: #000;
  background-color: #c1d7e3;
  border-color: #4b88a6;
}
.datepicker table tr td.range.highlighted:hover {
  color: #000;
  background-color: #c1d7e3;
  border-color: #73a6c0;
}
.datepicker table tr td.range.highlighted:active,
.datepicker table tr td.range.highlighted.active {
  color: #000;
  background-color: #c1d7e3;
  border-color: #73a6c0;
}
.datepicker table tr td.range.highlighted:active:hover,
.datepicker table tr td.range.highlighted.active:hover,
.datepicker table tr td.range.highlighted:active:focus,
.datepicker table tr td.range.highlighted.active:focus,
.datepicker table tr td.range.highlighted:active.focus,
.datepicker table tr td.range.highlighted.active.focus {
  color: #000;
  background-color: #a8c8d8;
  border-color: #4b88a6;
}
.datepicker table tr td.range.highlighted.disabled:hover,
.datepicker table tr td.range.highlighted[disabled]:hover,
fieldset[disabled] .datepicker table tr td.range.highlighted:hover,
.datepicker table tr td.range.highlighted.disabled:focus,
.datepicker table tr td.range.highlighted[disabled]:focus,
fieldset[disabled] .datepicker table tr td.range.highlighted:focus,
.datepicker table tr td.range.highlighted.disabled.focus,
.datepicker table tr td.range.highlighted[disabled].focus,
fieldset[disabled] .datepicker table tr td.range.highlighted.focus {
  background-color: #e4eef3;
  border-color: #9dc1d3;
}
.datepicker table tr td.range.highlighted.focused {
  background: #c1d7e3;
}
.datepicker table tr td.range.highlighted.disabled,
.datepicker table tr td.range.highlighted.disabled:active {
  background: #e4eef3;
  color: #777777;
}
.datepicker table tr td.range.today {
  color: #000;
  background-color: #f7ca77;
  border-color: #f1a417;
}
.datepicker table tr td.range.today:focus,
.datepicker table tr td.range.today.focus {
  color: #000;
  background-color: #f4b747;
  border-color: #815608;
}
.datepicker table tr td.range.today:hover {
  color: #000;
  background-color: #f4b747;
  border-color: #bf800c;
}
.datepicker table tr td.range.today:active,
.datepicker table tr td.range.today.active {
  color: #000;
  background-color: #f4b747;
  border-color: #bf800c;
}
.datepicker table tr td.range.today:active:hover,
.datepicker table tr td.range.today.active:hover,
.datepicker table tr td.range.today:active:focus,
.datepicker table tr td.range.today.active:focus,
.datepicker table tr td.range.today:active.focus,
.datepicker table tr td.range.today.active.focus {
  color: #000;
  background-color: #f2aa25;
  border-color: #815608;
}
.datepicker table tr td.range.today.disabled:hover,
.datepicker table tr td.range.today[disabled]:hover,
fieldset[disabled] .datepicker table tr td.range.today:hover,
.datepicker table tr td.range.today.disabled:focus,
.datepicker table tr td.range.today[disabled]:focus,
fieldset[disabled] .datepicker table tr td.range.today:focus,
.datepicker table tr td.range.today.disabled.focus,
.datepicker table tr td.range.today[disabled].focus,
fieldset[disabled] .datepicker table tr td.range.today.focus {
  background-color: #f7ca77;
  border-color: #f1a417;
}
.datepicker table tr td.range.today.disabled,
.datepicker table tr td.range.today.disabled:active {
  background: #f7ca77;
  color: #777777;
}
.datepicker table tr td.selected,
.datepicker table tr td.selected.highlighted {
  color: #fff;
  background-color: #777777;
  border-color: #555555;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
.datepicker table tr td.selected:focus,
.datepicker table tr td.selected.highlighted:focus,
.datepicker table tr td.selected.focus,
.datepicker table tr td.selected.highlighted.focus {
  color: #fff;
  background-color: #5e5e5e;
  border-color: #161616;
}
.datepicker table tr td.selected:hover,
.datepicker table tr td.selected.highlighted:hover {
  color: #fff;
  background-color: #5e5e5e;
  border-color: #373737;
}
.datepicker table tr td.selected:active,
.datepicker table tr td.selected.highlighted:active,
.datepicker table tr td.selected.active,
.datepicker table tr td.selected.highlighted.active {
  color: #fff;
  background-color: #5e5e5e;
  border-color: #373737;
}
.datepicker table tr td.selected:active:hover,
.datepicker table tr td.selected.highlighted:active:hover,
.datepicker table tr td.selected.active:hover,
.datepicker table tr td.selected.highlighted.active:hover,
.datepicker table tr td.selected:active:focus,
.datepicker table tr td.selected.highlighted:active:focus,
.datepicker table tr td.selected.active:focus,
.datepicker table tr td.selected.highlighted.active:focus,
.datepicker table tr td.selected:active.focus,
.datepicker table tr td.selected.highlighted:active.focus,
.datepicker table tr td.selected.active.focus,
.datepicker table tr td.selected.highlighted.active.focus {
  color: #fff;
  background-color: #4c4c4c;
  border-color: #161616;
}
.datepicker table tr td.selected.disabled:hover,
.datepicker table tr td.selected.highlighted.disabled:hover,
.datepicker table tr td.selected[disabled]:hover,
.datepicker table tr td.selected.highlighted[disabled]:hover,
fieldset[disabled] .datepicker table tr td.selected:hover,
fieldset[disabled] .datepicker table tr td.selected.highlighted:hover,
.datepicker table tr td.selected.disabled:focus,
.datepicker table tr td.selected.highlighted.disabled:focus,
.datepicker table tr td.selected[disabled]:focus,
.datepicker table tr td.selected.highlighted[disabled]:focus,
fieldset[disabled] .datepicker table tr td.selected:focus,
fieldset[disabled] .datepicker table tr td.selected.highlighted:focus,
.datepicker table tr td.selected.disabled.focus,
.datepicker table tr td.selected.highlighted.disabled.focus,
.datepicker table tr td.selected[disabled].focus,
.datepicker table tr td.selected.highlighted[disabled].focus,
fieldset[disabled] .datepicker table tr td.selected.focus,
fieldset[disabled] .datepicker table tr td.selected.highlighted.focus {
  background-color: #777777;
  border-color: #555555;
}
.datepicker table tr td.active,
.datepicker table tr td.active.highlighted {
  color: #fff;
  background-color: #337ab7;
  border-color: #2e6da4;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
.datepicker table tr td.active:focus,
.datepicker table tr td.active.highlighted:focus,
.datepicker table tr td.active.focus,
.datepicker table tr td.active.highlighted.focus {
  color: #fff;
  background-color: #286090;
  border-color: #122b40;
}
.datepicker table tr td.active:hover,
.datepicker table tr td.active.highlighted:hover {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.datepicker table tr td.active:active,
.datepicker table tr td.active.highlighted:active,
.datepicker table tr td.active.active,
.datepicker table tr td.active.highlighted.active {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.datepicker table tr td.active:active:hover,
.datepicker table tr td.active.highlighted:active:hover,
.datepicker table tr td.active.active:hover,
.datepicker table tr td.active.highlighted.active:hover,
.datepicker table tr td.active:active:focus,
.datepicker table tr td.active.highlighted:active:focus,
.datepicker table tr td.active.active:focus,
.datepicker table tr td.active.highlighted.active:focus,
.datepicker table tr td.active:active.focus,
.datepicker table tr td.active.highlighted:active.focus,
.datepicker table tr td.active.active.focus,
.datepicker table tr td.active.highlighted.active.focus {
  color: #fff;
  background-color: #204d74;
  border-color: #122b40;
}
.datepicker table tr td.active.disabled:hover,
.datepicker table tr td.active.highlighted.disabled:hover,
.datepicker table tr td.active[disabled]:hover,
.datepicker table tr td.active.highlighted[disabled]:hover,
fieldset[disabled] .datepicker table tr td.active:hover,
fieldset[disabled] .datepicker table tr td.active.highlighted:hover,
.datepicker table tr td.active.disabled:focus,
.datepicker table tr td.active.highlighted.disabled:focus,
.datepicker table tr td.active[disabled]:focus,
.datepicker table tr td.active.highlighted[disabled]:focus,
fieldset[disabled] .datepicker table tr td.active:focus,
fieldset[disabled] .datepicker table tr td.active.highlighted:focus,
.datepicker table tr td.active.disabled.focus,
.datepicker table tr td.active.highlighted.disabled.focus,
.datepicker table tr td.active[disabled].focus,
.datepicker table tr td.active.highlighted[disabled].focus,
fieldset[disabled] .datepicker table tr td.active.focus,
fieldset[disabled] .datepicker table tr td.active.highlighted.focus {
  background-color: #337ab7;
  border-color: #2e6da4;
}
.datepicker table tr td span {
  display: block;
  width: 23%;
  height: 54px;
  line-height: 54px;
  float: left;
  margin: 1%;
  cursor: pointer;
  border-radius: 4px;
}
.datepicker table tr td span:hover,
.datepicker table tr td span.focused {
  background: #eeeeee;
}
.datepicker table tr td span.disabled,
.datepicker table tr td span.disabled:hover {
  background: none;
  color: #777777;
  cursor: default;
}
.datepicker table tr td span.active,
.datepicker table tr td span.active:hover,
.datepicker table tr td span.active.disabled,
.datepicker table tr td span.active.disabled:hover {
  color: #fff;
  background-color: #337ab7;
  border-color: #2e6da4;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
.datepicker table tr td span.active:focus,
.datepicker table tr td span.active:hover:focus,
.datepicker table tr td span.active.disabled:focus,
.datepicker table tr td span.active.disabled:hover:focus,
.datepicker table tr td span.active.focus,
.datepicker table tr td span.active:hover.focus,
.datepicker table tr td span.active.disabled.focus,
.datepicker table tr td span.active.disabled:hover.focus {
  color: #fff;
  background-color: #286090;
  border-color: #122b40;
}
.datepicker table tr td span.active:hover,
.datepicker table tr td span.active:hover:hover,
.datepicker table tr td span.active.disabled:hover,
.datepicker table tr td span.active.disabled:hover:hover {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.datepicker table tr td span.active:active,
.datepicker table tr td span.active:hover:active,
.datepicker table tr td span.active.disabled:active,
.datepicker table tr td span.active.disabled:hover:active,
.datepicker table tr td span.active.active,
.datepicker table tr td span.active:hover.active,
.datepicker table tr td span.active.disabled.active,
.datepicker table tr td span.active.disabled:hover.active {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.datepicker table tr td span.active:active:hover,
.datepicker table tr td span.active:hover:active:hover,
.datepicker table tr td span.active.disabled:active:hover,
.datepicker table tr td span.active.disabled:hover:active:hover,
.datepicker table tr td span.active.active:hover,
.datepicker table tr td span.active:hover.active:hover,
.datepicker table tr td span.active.disabled.active:hover,
.datepicker table tr td span.active.disabled:hover.active:hover,
.datepicker table tr td span.active:active:focus,
.datepicker table tr td span.active:hover:active:focus,
.datepicker table tr td span.active.disabled:active:focus,
.datepicker table tr td span.active.disabled:hover:active:focus,
.datepicker table tr td span.active.active:focus,
.datepicker table tr td span.active:hover.active:focus,
.datepicker table tr td span.active.disabled.active:focus,
.datepicker table tr td span.active.disabled:hover.active:focus,
.datepicker table tr td span.active:active.focus,
.datepicker table tr td span.active:hover:active.focus,
.datepicker table tr td span.active.disabled:active.focus,
.datepicker table tr td span.active.disabled:hover:active.focus,
.datepicker table tr td span.active.active.focus,
.datepicker table tr td span.active:hover.active.focus,
.datepicker table tr td span.active.disabled.active.focus,
.datepicker table tr td span.active.disabled:hover.active.focus {
  color: #fff;
  background-color: #204d74;
  border-color: #122b40;
}
.datepicker table tr td span.active.disabled:hover,
.datepicker table tr td span.active:hover.disabled:hover,
.datepicker table tr td span.active.disabled.disabled:hover,
.datepicker table tr td span.active.disabled:hover.disabled:hover,
.datepicker table tr td span.active[disabled]:hover,
.datepicker table tr td span.active:hover[disabled]:hover,
.datepicker table tr td span.active.disabled[disabled]:hover,
.datepicker table tr td span.active.disabled:hover[disabled]:hover,
fieldset[disabled] .datepicker table tr td span.active:hover,
fieldset[disabled] .datepicker table tr td span.active:hover:hover,
fieldset[disabled] .datepicker table tr td span.active.disabled:hover,
fieldset[disabled] .datepicker table tr td span.active.disabled:hover:hover,
.datepicker table tr td span.active.disabled:focus,
.datepicker table tr td span.active:hover.disabled:focus,
.datepicker table tr td span.active.disabled.disabled:focus,
.datepicker table tr td span.active.disabled:hover.disabled:focus,
.datepicker table tr td span.active[disabled]:focus,
.datepicker table tr td span.active:hover[disabled]:focus,
.datepicker table tr td span.active.disabled[disabled]:focus,
.datepicker table tr td span.active.disabled:hover[disabled]:focus,
fieldset[disabled] .datepicker table tr td span.active:focus,
fieldset[disabled] .datepicker table tr td span.active:hover:focus,
fieldset[disabled] .datepicker table tr td span.active.disabled:focus,
fieldset[disabled] .datepicker table tr td span.active.disabled:hover:focus,
.datepicker table tr td span.active.disabled.focus,
.datepicker table tr td span.active:hover.disabled.focus,
.datepicker table tr td span.active.disabled.disabled.focus,
.datepicker table tr td span.active.disabled:hover.disabled.focus,
.datepicker table tr td span.active[disabled].focus,
.datepicker table tr td span.active:hover[disabled].focus,
.datepicker table tr td span.active.disabled[disabled].focus,
.datepicker table tr td span.active.disabled:hover[disabled].focus,
fieldset[disabled] .datepicker table tr td span.active.focus,
fieldset[disabled] .datepicker table tr td span.active:hover.focus,
fieldset[disabled] .datepicker table tr td span.active.disabled.focus,
fieldset[disabled] .datepicker table tr td span.active.disabled:hover.focus {
  background-color: #337ab7;
  border-color: #2e6da4;
}
.datepicker table tr td span.old,
.datepicker table tr td span.new {
  color: #777777;
}
.datepicker .datepicker-switch {
  width: 145px;
}
.datepicker .datepicker-switch,
.datepicker .prev,
.datepicker .next,
.datepicker tfoot tr th {
  cursor: pointer;
}
.datepicker .datepicker-switch:hover,
.datepicker .prev:hover,
.datepicker .next:hover,
.datepicker tfoot tr th:hover {
  background: #eeeeee;
}
.datepicker .prev.disabled,
.datepicker .next.disabled {
  visibility: hidden;
}
.datepicker .cw {
  font-size: 10px;
  width: 12px;
  padding: 0 2px 0 5px;
  vertical-align: middle;
}
.input-group.date .input-group-addon {
  cursor: pointer;
}
.input-daterange {
  width: 100%;
}
.input-daterange input {
  text-align: center;
}
.input-daterange input:first-child {
  border-radius: 3px 0 0 3px;
}
.input-daterange input:last-child {
  border-radius: 0 3px 3px 0;
}
.input-daterange .input-group-addon {
  width: auto;
  min-width: 16px;
  padding: 4px 5px;
  line-height: 1.42857143;
  text-shadow: 0 1px 0 #fff;
  border-width: 1px 0;
  margin-left: -5px;
  margin-right: -5px;
}
/*# sourceMappingURL=bootstrap-datepicker3.css.map */'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> jsbootstrapdatepickerJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'js/bootstrap-datepicker.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsbootstrapdatepickerJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> jsbootstrapdatepickerJsContent [

	<ignoreForCoverage>
	^ '/*!
 * Datepicker for Bootstrap v1.7.0 (https://github.com/uxsolutions/bootstrap-datepicker)
 *
 * Licensed under the Apache License v2.0 (http://www.apache.org/licenses/LICENSE-2.0)
 */

(function(factory){
    if (typeof define === "function" && define.amd) {
        define(["jquery"], factory);
    } else if (typeof exports === ''object'') {
        factory(require(''jquery''));
    } else {
        factory(jQuery);
    }
}(function($, undefined){
	function UTCDate(){
		return new Date(Date.UTC.apply(Date, arguments));
	}
	function UTCToday(){
		var today = new Date();
		return UTCDate(today.getFullYear(), today.getMonth(), today.getDate());
	}
	function isUTCEquals(date1, date2) {
		return (
			date1.getUTCFullYear() === date2.getUTCFullYear() &&
			date1.getUTCMonth() === date2.getUTCMonth() &&
			date1.getUTCDate() === date2.getUTCDate()
		);
	}
	function alias(method, deprecationMsg){
		return function(){
			if (deprecationMsg !== undefined) {
				$.fn.datepicker.deprecated(deprecationMsg);
			}

			return this[method].apply(this, arguments);
		};
	}
	function isValidDate(d) {
		return d && !isNaN(d.getTime());
	}

	var DateArray = (function(){
		var extras = {
			get: function(i){
				return this.slice(i)[0];
			},
			contains: function(d){
				// Array.indexOf is not cross-browser;
				// $.inArray doesn''t work with Dates
				var val = d && d.valueOf();
				for (var i=0, l=this.length; i < l; i++)
          // Use date arithmetic to allow dates with different times to match
          if (0 <= this[i].valueOf() - val && this[i].valueOf() - val < 1000*60*60*24)
						return i;
				return -1;
			},
			remove: function(i){
				this.splice(i,1);
			},
			replace: function(new_array){
				if (!new_array)
					return;
				if (!$.isArray(new_array))
					new_array = [new_array];
				this.clear();
				this.push.apply(this, new_array);
			},
			clear: function(){
				this.length = 0;
			},
			copy: function(){
				var a = new DateArray();
				a.replace(this);
				return a;
			}
		};

		return function(){
			var a = [];
			a.push.apply(a, arguments);
			$.extend(a, extras);
			return a;
		};
	})();


	// Picker object

	var Datepicker = function(element, options){
		$.data(element, ''datepicker'', this);
		this._process_options(options);

		this.dates = new DateArray();
		this.viewDate = this.o.defaultViewDate;
		this.focusDate = null;

		this.element = $(element);
		this.isInput = this.element.is(''input'');
		this.inputField = this.isInput ? this.element : this.element.find(''input'');
		this.component = this.element.hasClass(''date'') ? this.element.find(''.add-on, .input-group-addon, .btn'') : false;
		if (this.component && this.component.length === 0)
			this.component = false;
		this.isInline = !this.component && this.element.is(''div'');

		this.picker = $(DPGlobal.template);

		// Checking templates and inserting
		if (this._check_template(this.o.templates.leftArrow)) {
			this.picker.find(''.prev'').html(this.o.templates.leftArrow);
		}

		if (this._check_template(this.o.templates.rightArrow)) {
			this.picker.find(''.next'').html(this.o.templates.rightArrow);
		}

		this._buildEvents();
		this._attachEvents();

		if (this.isInline){
			this.picker.addClass(''datepicker-inline'').appendTo(this.element);
		}
		else {
			this.picker.addClass(''datepicker-dropdown dropdown-menu'');
		}

		if (this.o.rtl){
			this.picker.addClass(''datepicker-rtl'');
		}

		if (this.o.calendarWeeks) {
			this.picker.find(''.datepicker-days .datepicker-switch, thead .datepicker-title, tfoot .today, tfoot .clear'')
				.attr(''colspan'', function(i, val){
					return Number(val) + 1;
				});
		}

		this._process_options({
			startDate: this._o.startDate,
			endDate: this._o.endDate,
			daysOfWeekDisabled: this.o.daysOfWeekDisabled,
			daysOfWeekHighlighted: this.o.daysOfWeekHighlighted,
			datesDisabled: this.o.datesDisabled
		});

		this._allow_update = false;
		this.setViewMode(this.o.startView);
		this._allow_update = true;

		this.fillDow();
		this.fillMonths();

		this.update();

		if (this.isInline){
			this.show();
		}
	};

	Datepicker.prototype = {
		constructor: Datepicker,

		_resolveViewName: function(view){
			$.each(DPGlobal.viewModes, function(i, viewMode){
				if (view === i || $.inArray(view, viewMode.names) !== -1){
					view = i;
					return false;
				}
			});

			return view;
		},

		_resolveDaysOfWeek: function(daysOfWeek){
			if (!$.isArray(daysOfWeek))
				daysOfWeek = daysOfWeek.split(/[,\s]*/);
			return $.map(daysOfWeek, Number);
		},

		_check_template: function(tmp){
			try {
				// If empty
				if (tmp === undefined || tmp === "") {
					return false;
				}
				// If no html, everything ok
				if ((tmp.match(/[<>]/g) || []).length <= 0) {
					return true;
				}
				// Checking if html is fine
				var jDom = $(tmp);
				return jDom.length > 0;
			}
			catch (ex) {
				return false;
			}
		},

		_process_options: function(opts){
			// Store raw options for reference
			this._o = $.extend({}, this._o, opts);
			// Processed options
			var o = this.o = $.extend({}, this._o);

			// Check if "de-DE" style date is available, if not language should
			// fallback to 2 letter code eg "de"
			var lang = o.language;
			if (!dates[lang]){
				lang = lang.split(''-'')[0];
				if (!dates[lang])
					lang = defaults.language;
			}
			o.language = lang;

			// Retrieve view index from any aliases
			o.startView = this._resolveViewName(o.startView);
			o.minViewMode = this._resolveViewName(o.minViewMode);
			o.maxViewMode = this._resolveViewName(o.maxViewMode);

			// Check view is between min and max
			o.startView = Math.max(this.o.minViewMode, Math.min(this.o.maxViewMode, o.startView));

			// true, false, or Number > 0
			if (o.multidate !== true){
				o.multidate = Number(o.multidate) || false;
				if (o.multidate !== false)
					o.multidate = Math.max(0, o.multidate);
			}
			o.multidateSeparator = String(o.multidateSeparator);

			o.weekStart %= 7;
			o.weekEnd = (o.weekStart + 6) % 7;

			var format = DPGlobal.parseFormat(o.format);
			if (o.startDate !== -Infinity){
				if (!!o.startDate){
					if (o.startDate instanceof Date)
						o.startDate = this._local_to_utc(this._zero_time(o.startDate));
					else
						o.startDate = DPGlobal.parseDate(o.startDate, format, o.language, o.assumeNearbyYear);
				}
				else {
					o.startDate = -Infinity;
				}
			}
			if (o.endDate !== Infinity){
				if (!!o.endDate){
					if (o.endDate instanceof Date)
						o.endDate = this._local_to_utc(this._zero_time(o.endDate));
					else
						o.endDate = DPGlobal.parseDate(o.endDate, format, o.language, o.assumeNearbyYear);
				}
				else {
					o.endDate = Infinity;
				}
			}

			o.daysOfWeekDisabled = this._resolveDaysOfWeek(o.daysOfWeekDisabled||[]);
			o.daysOfWeekHighlighted = this._resolveDaysOfWeek(o.daysOfWeekHighlighted||[]);

			o.datesDisabled = o.datesDisabled||[];
			if (!$.isArray(o.datesDisabled)) {
				o.datesDisabled = o.datesDisabled.split('','');
			}
			o.datesDisabled = $.map(o.datesDisabled, function(d){
				return DPGlobal.parseDate(d, format, o.language, o.assumeNearbyYear);
			});

			var plc = String(o.orientation).toLowerCase().split(/\s+/g),
				_plc = o.orientation.toLowerCase();
			plc = $.grep(plc, function(word){
				return /^auto|left|right|top|bottom$/.test(word);
			});
			o.orientation = {x: ''auto'', y: ''auto''};
			if (!_plc || _plc === ''auto'')
				; // no action
			else if (plc.length === 1){
				switch (plc[0]){
					case ''top'':
					case ''bottom'':
						o.orientation.y = plc[0];
						break;
					case ''left'':
					case ''right'':
						o.orientation.x = plc[0];
						break;
				}
			}
			else {
				_plc = $.grep(plc, function(word){
					return /^left|right$/.test(word);
				});
				o.orientation.x = _plc[0] || ''auto'';

				_plc = $.grep(plc, function(word){
					return /^top|bottom$/.test(word);
				});
				o.orientation.y = _plc[0] || ''auto'';
			}
			if (o.defaultViewDate instanceof Date || typeof o.defaultViewDate === ''string'') {
				o.defaultViewDate = DPGlobal.parseDate(o.defaultViewDate, format, o.language, o.assumeNearbyYear);
			} else if (o.defaultViewDate) {
				var year = o.defaultViewDate.year || new Date().getFullYear();
				var month = o.defaultViewDate.month || 0;
				var day = o.defaultViewDate.day || 1;
				o.defaultViewDate = UTCDate(year, month, day);
			} else {
				o.defaultViewDate = UTCToday();
			}
		},
		_events: [],
		_secondaryEvents: [],
		_applyEvents: function(evs){
			for (var i=0, el, ch, ev; i < evs.length; i++){
				el = evs[i][0];
				if (evs[i].length === 2){
					ch = undefined;
					ev = evs[i][1];
				} else if (evs[i].length === 3){
					ch = evs[i][1];
					ev = evs[i][2];
				}
				el.on(ev, ch);
			}
		},
		_unapplyEvents: function(evs){
			for (var i=0, el, ev, ch; i < evs.length; i++){
				el = evs[i][0];
				if (evs[i].length === 2){
					ch = undefined;
					ev = evs[i][1];
				} else if (evs[i].length === 3){
					ch = evs[i][1];
					ev = evs[i][2];
				}
				el.off(ev, ch);
			}
		},
		_buildEvents: function(){
            var events = {
                keyup: $.proxy(function(e){
                    if ($.inArray(e.keyCode, [27, 37, 39, 38, 40, 32, 13, 9]) === -1)
                        this.update();
                }, this),
                keydown: $.proxy(this.keydown, this),
                paste: $.proxy(this.paste, this)
            };

            if (this.o.showOnFocus === true) {
                events.focus = $.proxy(this.show, this);
            }

            if (this.isInput) { // single input
                this._events = [
                    [this.element, events]
                ];
            }
            // component: input + button
            else if (this.component && this.inputField.length) {
                this._events = [
                    // For components that are not readonly, allow keyboard nav
                    [this.inputField, events],
                    [this.component, {
                        click: $.proxy(this.show, this)
                    }]
                ];
            }
			else {
				this._events = [
					[this.element, {
						click: $.proxy(this.show, this),
						keydown: $.proxy(this.keydown, this)
					}]
				];
			}
			this._events.push(
				// Component: listen for blur on element descendants
				[this.element, ''*'', {
					blur: $.proxy(function(e){
						this._focused_from = e.target;
					}, this)
				}],
				// Input: listen for blur on element
				[this.element, {
					blur: $.proxy(function(e){
						this._focused_from = e.target;
					}, this)
				}]
			);

			if (this.o.immediateUpdates) {
				// Trigger input updates immediately on changed year/month
				this._events.push([this.element, {
					''changeYear changeMonth'': $.proxy(function(e){
						this.update(e.date);
					}, this)
				}]);
			}

			this._secondaryEvents = [
				[this.picker, {
					click: $.proxy(this.click, this)
				}],
				[this.picker, ''.prev, .next'', {
					click: $.proxy(this.navArrowsClick, this)
				}],
				[this.picker, ''.day:not(.disabled)'', {
					click: $.proxy(this.dayCellClick, this)
				}],
				[$(window), {
					resize: $.proxy(this.place, this)
				}],
				[$(document), {
					''mousedown touchstart'': $.proxy(function(e){
						// Clicked outside the datepicker, hide it
						if (!(
							this.element.is(e.target) ||
							this.element.find(e.target).length ||
							this.picker.is(e.target) ||
							this.picker.find(e.target).length ||
							this.isInline
						)){
							this.hide();
						}
					}, this)
				}]
			];
		},
		_attachEvents: function(){
			this._detachEvents();
			this._applyEvents(this._events);
		},
		_detachEvents: function(){
			this._unapplyEvents(this._events);
		},
		_attachSecondaryEvents: function(){
			this._detachSecondaryEvents();
			this._applyEvents(this._secondaryEvents);
		},
		_detachSecondaryEvents: function(){
			this._unapplyEvents(this._secondaryEvents);
		},
		_trigger: function(event, altdate){
			var date = altdate || this.dates.get(-1),
				local_date = this._utc_to_local(date);

			this.element.trigger({
				type: event,
				date: local_date,
				viewMode: this.viewMode,
				dates: $.map(this.dates, this._utc_to_local),
				format: $.proxy(function(ix, format){
					if (arguments.length === 0){
						ix = this.dates.length - 1;
						format = this.o.format;
					} else if (typeof ix === ''string''){
						format = ix;
						ix = this.dates.length - 1;
					}
					format = format || this.o.format;
					var date = this.dates.get(ix);
					return DPGlobal.formatDate(date, format, this.o.language);
				}, this)
			});
		},

		show: function(){
			if (this.inputField.prop(''disabled'') || (this.inputField.prop(''readonly'') && this.o.enableOnReadonly === false))
				return;
			if (!this.isInline)
				this.picker.appendTo(this.o.container);
			this.place();
			this.picker.show();
			this._attachSecondaryEvents();
			this._trigger(''show'');
			if ((window.navigator.msMaxTouchPoints || ''ontouchstart'' in document) && this.o.disableTouchKeyboard) {
				$(this.element).blur();
			}
			return this;
		},

		hide: function(){
			if (this.isInline || !this.picker.is('':visible''))
				return this;
			this.focusDate = null;
			this.picker.hide().detach();
			this._detachSecondaryEvents();
			this.setViewMode(this.o.startView);

			if (this.o.forceParse && this.inputField.val())
				this.setValue();
			this._trigger(''hide'');
			return this;
		},

		destroy: function(){
			this.hide();
			this._detachEvents();
			this._detachSecondaryEvents();
			this.picker.remove();
			delete this.element.data().datepicker;
			if (!this.isInput){
				delete this.element.data().date;
			}
			return this;
		},

		paste: function(e){
			var dateString;
			if (e.originalEvent.clipboardData && e.originalEvent.clipboardData.types
				&& $.inArray(''text/plain'', e.originalEvent.clipboardData.types) !== -1) {
				dateString = e.originalEvent.clipboardData.getData(''text/plain'');
			} else if (window.clipboardData) {
				dateString = window.clipboardData.getData(''Text'');
			} else {
				return;
			}
			this.setDate(dateString);
			this.update();
			e.preventDefault();
		},

		_utc_to_local: function(utc){
			if (!utc) {
				return utc;
			}

			var local = new Date(utc.getTime() + (utc.getTimezoneOffset() * 60000));

			if (local.getTimezoneOffset() !== utc.getTimezoneOffset()) {
				local = new Date(utc.getTime() + (local.getTimezoneOffset() * 60000));
			}

			return local;
		},
		_local_to_utc: function(local){
			return local && new Date(local.getTime() - (local.getTimezoneOffset()*60000));
		},
		_zero_time: function(local){
			return local && new Date(local.getFullYear(), local.getMonth(), local.getDate());
		},
		_zero_utc_time: function(utc){
			return utc && UTCDate(utc.getUTCFullYear(), utc.getUTCMonth(), utc.getUTCDate());
		},

		getDates: function(){
			return $.map(this.dates, this._utc_to_local);
		},

		getUTCDates: function(){
			return $.map(this.dates, function(d){
				return new Date(d);
			});
		},

		getDate: function(){
			return this._utc_to_local(this.getUTCDate());
		},

		getUTCDate: function(){
			var selected_date = this.dates.get(-1);
			if (selected_date !== undefined) {
				return new Date(selected_date);
			} else {
				return null;
			}
		},

		clearDates: function(){
			this.inputField.val('''');
			this.update();
			this._trigger(''changeDate'');

			if (this.o.autoclose) {
				this.hide();
			}
		},

		setDates: function(){
			var args = $.isArray(arguments[0]) ? arguments[0] : arguments;
			this.update.apply(this, args);
			this._trigger(''changeDate'');
			this.setValue();
			return this;
		},

		setUTCDates: function(){
			var args = $.isArray(arguments[0]) ? arguments[0] : arguments;
			this.setDates.apply(this, $.map(args, this._utc_to_local));
			return this;
		},

		setDate: alias(''setDates''),
		setUTCDate: alias(''setUTCDates''),
		remove: alias(''destroy'', ''Method `remove` is deprecated and will be removed in version 2.0. Use `destroy` instead''),

		setValue: function(){
			var formatted = this.getFormattedDate();
			this.inputField.val(formatted);
			return this;
		},

		getFormattedDate: function(format){
			if (format === undefined)
				format = this.o.format;

			var lang = this.o.language;
			return $.map(this.dates, function(d){
				return DPGlobal.formatDate(d, format, lang);
			}).join(this.o.multidateSeparator);
		},

		getStartDate: function(){
			return this.o.startDate;
		},

		setStartDate: function(startDate){
			this._process_options({startDate: startDate});
			this.update();
			this.updateNavArrows();
			return this;
		},

		getEndDate: function(){
			return this.o.endDate;
		},

		setEndDate: function(endDate){
			this._process_options({endDate: endDate});
			this.update();
			this.updateNavArrows();
			return this;
		},

		setDaysOfWeekDisabled: function(daysOfWeekDisabled){
			this._process_options({daysOfWeekDisabled: daysOfWeekDisabled});
			this.update();
			return this;
		},

		setDaysOfWeekHighlighted: function(daysOfWeekHighlighted){
			this._process_options({daysOfWeekHighlighted: daysOfWeekHighlighted});
			this.update();
			return this;
		},

		setDatesDisabled: function(datesDisabled){
			this._process_options({datesDisabled: datesDisabled});
			this.update();
			return this;
		},

		place: function(){
			if (this.isInline)
				return this;
			var calendarWidth = this.picker.outerWidth(),
				calendarHeight = this.picker.outerHeight(),
				visualPadding = 10,
				container = $(this.o.container),
				windowWidth = container.width(),
				scrollTop = this.o.container === ''body'' ? $(document).scrollTop() : container.scrollTop(),
				appendOffset = container.offset();

			var parentsZindex = [0];
			this.element.parents().each(function(){
				var itemZIndex = $(this).css(''z-index'');
				if (itemZIndex !== ''auto'' && Number(itemZIndex) !== 0) parentsZindex.push(Number(itemZIndex));
			});
			var zIndex = Math.max.apply(Math, parentsZindex) + this.o.zIndexOffset;
			var offset = this.component ? this.component.parent().offset() : this.element.offset();
			var height = this.component ? this.component.outerHeight(true) : this.element.outerHeight(false);
			var width = this.component ? this.component.outerWidth(true) : this.element.outerWidth(false);
			var left = offset.left - appendOffset.left;
			var top = offset.top - appendOffset.top;

			if (this.o.container !== ''body'') {
				top += scrollTop;
			}

			this.picker.removeClass(
				''datepicker-orient-top datepicker-orient-bottom ''+
				''datepicker-orient-right datepicker-orient-left''
			);

			if (this.o.orientation.x !== ''auto''){
				this.picker.addClass(''datepicker-orient-'' + this.o.orientation.x);
				if (this.o.orientation.x === ''right'')
					left -= calendarWidth - width;
			}
			// auto x orientation is best-placement: if it crosses a window
			// edge, fudge it sideways
			else {
				if (offset.left < 0) {
					// component is outside the window on the left side. Move it into visible range
					this.picker.addClass(''datepicker-orient-left'');
					left -= offset.left - visualPadding;
				} else if (left + calendarWidth > windowWidth) {
					// the calendar passes the widow right edge. Align it to component right side
					this.picker.addClass(''datepicker-orient-right'');
					left += width - calendarWidth;
				} else {
					if (this.o.rtl) {
						// Default to right
						this.picker.addClass(''datepicker-orient-right'');
					} else {
						// Default to left
						this.picker.addClass(''datepicker-orient-left'');
					}
				}
			}

			// auto y orientation is best-situation: top or bottom, no fudging,
			// decision based on which shows more of the calendar
			var yorient = this.o.orientation.y,
				top_overflow;
			if (yorient === ''auto''){
				top_overflow = -scrollTop + top - calendarHeight;
				yorient = top_overflow < 0 ? ''bottom'' : ''top'';
			}

			this.picker.addClass(''datepicker-orient-'' + yorient);
			if (yorient === ''top'')
				top -= calendarHeight + parseInt(this.picker.css(''padding-top''));
			else
				top += height;

			if (this.o.rtl) {
				var right = windowWidth - (left + width);
				this.picker.css({
					top: top,
					right: right,
					zIndex: zIndex
				});
			} else {
				this.picker.css({
					top: top,
					left: left,
					zIndex: zIndex
				});
			}
			return this;
		},

		_allow_update: true,
		update: function(){
			if (!this._allow_update)
				return this;

			var oldDates = this.dates.copy(),
				dates = [],
				fromArgs = false;
			if (arguments.length){
				$.each(arguments, $.proxy(function(i, date){
					if (date instanceof Date)
						date = this._local_to_utc(date);
					dates.push(date);
				}, this));
				fromArgs = true;
			} else {
				dates = this.isInput
						? this.element.val()
						: this.element.data(''date'') || this.inputField.val();
				if (dates && this.o.multidate)
					dates = dates.split(this.o.multidateSeparator);
				else
					dates = [dates];
				delete this.element.data().date;
			}

			dates = $.map(dates, $.proxy(function(date){
				return DPGlobal.parseDate(date, this.o.format, this.o.language, this.o.assumeNearbyYear);
			}, this));
			dates = $.grep(dates, $.proxy(function(date){
				return (
					!this.dateWithinRange(date) ||
					!date
				);
			}, this), true);
			this.dates.replace(dates);

			if (this.o.updateViewDate) {
				if (this.dates.length)
					this.viewDate = new Date(this.dates.get(-1));
				else if (this.viewDate < this.o.startDate)
					this.viewDate = new Date(this.o.startDate);
				else if (this.viewDate > this.o.endDate)
					this.viewDate = new Date(this.o.endDate);
				else
					this.viewDate = this.o.defaultViewDate;
			}

			if (fromArgs){
				// setting date by clicking
				this.setValue();
				this.element.change();
			}
			else if (this.dates.length){
				// setting date by typing
				if (String(oldDates) !== String(this.dates) && fromArgs) {
					this._trigger(''changeDate'');
					this.element.change();
				}
			}
			if (!this.dates.length && oldDates.length) {
				this._trigger(''clearDate'');
				this.element.change();
			}

			this.fill();
			return this;
		},

		fillDow: function(){
      if (this.o.showWeekDays) {
			var dowCnt = this.o.weekStart,
				html = ''<tr>'';
			if (this.o.calendarWeeks){
				html += ''<th class="cw">&#160;</th>'';
			}
			while (dowCnt < this.o.weekStart + 7){
				html += ''<th class="dow'';
        if ($.inArray(dowCnt, this.o.daysOfWeekDisabled) !== -1)
          html += '' disabled'';
        html += ''">''+dates[this.o.language].daysMin[(dowCnt++)%7]+''</th>'';
			}
			html += ''</tr>'';
			this.picker.find(''.datepicker-days thead'').append(html);
      }
		},

		fillMonths: function(){
      var localDate = this._utc_to_local(this.viewDate);
			var html = '''';
			var focused;
			for (var i = 0; i < 12; i++){
				focused = localDate && localDate.getMonth() === i ? '' focused'' : '''';
				html += ''<span class="month'' + focused + ''">'' + dates[this.o.language].monthsShort[i] + ''</span>'';
			}
			this.picker.find(''.datepicker-months td'').html(html);
		},

		setRange: function(range){
			if (!range || !range.length)
				delete this.range;
			else
				this.range = $.map(range, function(d){
					return d.valueOf();
				});
			this.fill();
		},

		getClassNames: function(date){
			var cls = [],
				year = this.viewDate.getUTCFullYear(),
				month = this.viewDate.getUTCMonth(),
				today = UTCToday();
			if (date.getUTCFullYear() < year || (date.getUTCFullYear() === year && date.getUTCMonth() < month)){
				cls.push(''old'');
			} else if (date.getUTCFullYear() > year || (date.getUTCFullYear() === year && date.getUTCMonth() > month)){
				cls.push(''new'');
			}
			if (this.focusDate && date.valueOf() === this.focusDate.valueOf())
				cls.push(''focused'');
			// Compare internal UTC date with UTC today, not local today
			if (this.o.todayHighlight && isUTCEquals(date, today)) {
				cls.push(''today'');
			}
			if (this.dates.contains(date) !== -1)
				cls.push(''active'');
			if (!this.dateWithinRange(date)){
				cls.push(''disabled'');
			}
			if (this.dateIsDisabled(date)){
				cls.push(''disabled'', ''disabled-date'');
			}
			if ($.inArray(date.getUTCDay(), this.o.daysOfWeekHighlighted) !== -1){
				cls.push(''highlighted'');
			}

			if (this.range){
				if (date > this.range[0] && date < this.range[this.range.length-1]){
					cls.push(''range'');
				}
				if ($.inArray(date.valueOf(), this.range) !== -1){
					cls.push(''selected'');
				}
				if (date.valueOf() === this.range[0]){
          cls.push(''range-start'');
        }
        if (date.valueOf() === this.range[this.range.length-1]){
          cls.push(''range-end'');
        }
			}
			return cls;
		},

		_fill_yearsView: function(selector, cssClass, factor, year, startYear, endYear, beforeFn){
			var html = '''';
			var step = factor / 10;
			var view = this.picker.find(selector);
			var startVal = Math.floor(year / factor) * factor;
			var endVal = startVal + step * 9;
			var focusedVal = Math.floor(this.viewDate.getFullYear() / step) * step;
			var selected = $.map(this.dates, function(d){
				return Math.floor(d.getUTCFullYear() / step) * step;
			});

			var classes, tooltip, before;
			for (var currVal = startVal - step; currVal <= endVal + step; currVal += step) {
				classes = [cssClass];
				tooltip = null;

				if (currVal === startVal - step) {
					classes.push(''old'');
				} else if (currVal === endVal + step) {
					classes.push(''new'');
				}
				if ($.inArray(currVal, selected) !== -1) {
					classes.push(''active'');
				}
				if (currVal < startYear || currVal > endYear) {
					classes.push(''disabled'');
				}
				if (currVal === focusedVal) {
				  classes.push(''focused'');
        }

				if (beforeFn !== $.noop) {
					before = beforeFn(new Date(currVal, 0, 1));
					if (before === undefined) {
						before = {};
					} else if (typeof before === ''boolean'') {
						before = {enabled: before};
					} else if (typeof before === ''string'') {
						before = {classes: before};
					}
					if (before.enabled === false) {
						classes.push(''disabled'');
					}
					if (before.classes) {
						classes = classes.concat(before.classes.split(/\s+/));
					}
					if (before.tooltip) {
						tooltip = before.tooltip;
					}
				}

				html += ''<span class="'' + classes.join('' '') + ''"'' + (tooltip ? '' title="'' + tooltip + ''"'' : '''') + ''>'' + currVal + ''</span>'';
			}

			view.find(''.datepicker-switch'').text(startVal + ''-'' + endVal);
			view.find(''td'').html(html);
		},

		fill: function(){
			var d = new Date(this.viewDate),
				year = d.getUTCFullYear(),
				month = d.getUTCMonth(),
				startYear = this.o.startDate !== -Infinity ? this.o.startDate.getUTCFullYear() : -Infinity,
				startMonth = this.o.startDate !== -Infinity ? this.o.startDate.getUTCMonth() : -Infinity,
				endYear = this.o.endDate !== Infinity ? this.o.endDate.getUTCFullYear() : Infinity,
				endMonth = this.o.endDate !== Infinity ? this.o.endDate.getUTCMonth() : Infinity,
				todaytxt = dates[this.o.language].today || dates[''en''].today || '''',
				cleartxt = dates[this.o.language].clear || dates[''en''].clear || '''',
				titleFormat = dates[this.o.language].titleFormat || dates[''en''].titleFormat,
				tooltip,
				before;
			if (isNaN(year) || isNaN(month))
				return;
			this.picker.find(''.datepicker-days .datepicker-switch'')
						.text(DPGlobal.formatDate(d, titleFormat, this.o.language));
			this.picker.find(''tfoot .today'')
						.text(todaytxt)
						.css(''display'', this.o.todayBtn === true || this.o.todayBtn === ''linked'' ? ''table-cell'' : ''none'');
			this.picker.find(''tfoot .clear'')
						.text(cleartxt)
						.css(''display'', this.o.clearBtn === true ? ''table-cell'' : ''none'');
			this.picker.find(''thead .datepicker-title'')
						.text(this.o.title)
						.css(''display'', typeof this.o.title === ''string'' && this.o.title !== '''' ? ''table-cell'' : ''none'');
			this.updateNavArrows();
			this.fillMonths();
			var prevMonth = UTCDate(year, month, 0),
				day = prevMonth.getUTCDate();
			prevMonth.setUTCDate(day - (prevMonth.getUTCDay() - this.o.weekStart + 7)%7);
			var nextMonth = new Date(prevMonth);
			if (prevMonth.getUTCFullYear() < 100){
        nextMonth.setUTCFullYear(prevMonth.getUTCFullYear());
      }
			nextMonth.setUTCDate(nextMonth.getUTCDate() + 42);
			nextMonth = nextMonth.valueOf();
			var html = [];
			var weekDay, clsName;
			while (prevMonth.valueOf() < nextMonth){
				weekDay = prevMonth.getUTCDay();
				if (weekDay === this.o.weekStart){
					html.push(''<tr>'');
					if (this.o.calendarWeeks){
						// ISO 8601: First week contains first thursday.
						// ISO also states week starts on Monday, but we can be more abstract here.
						var
							// Start of current week: based on weekstart/current date
							ws = new Date(+prevMonth + (this.o.weekStart - weekDay - 7) % 7 * 864e5),
							// Thursday of this week
							th = new Date(Number(ws) + (7 + 4 - ws.getUTCDay()) % 7 * 864e5),
							// First Thursday of year, year from thursday
							yth = new Date(Number(yth = UTCDate(th.getUTCFullYear(), 0, 1)) + (7 + 4 - yth.getUTCDay()) % 7 * 864e5),
							// Calendar week: ms between thursdays, div ms per day, div 7 days
							calWeek = (th - yth) / 864e5 / 7 + 1;
						html.push(''<td class="cw">''+ calWeek +''</td>'');
					}
				}
				clsName = this.getClassNames(prevMonth);
				clsName.push(''day'');

				var content = prevMonth.getUTCDate();

				if (this.o.beforeShowDay !== $.noop){
					before = this.o.beforeShowDay(this._utc_to_local(prevMonth));
					if (before === undefined)
						before = {};
					else if (typeof before === ''boolean'')
						before = {enabled: before};
					else if (typeof before === ''string'')
						before = {classes: before};
					if (before.enabled === false)
						clsName.push(''disabled'');
					if (before.classes)
						clsName = clsName.concat(before.classes.split(/\s+/));
					if (before.tooltip)
						tooltip = before.tooltip;
					if (before.content)
						content = before.content;
				}

				//Check if uniqueSort exists (supported by jquery >=1.12 and >=2.2)
				//Fallback to unique function for older jquery versions
				if ($.isFunction($.uniqueSort)) {
					clsName = $.uniqueSort(clsName);
				} else {
					clsName = $.unique(clsName);
				}

				html.push(''<td class="''+clsName.join('' '')+''"'' + (tooltip ? '' title="''+tooltip+''"'' : '''') + '' data-date="'' + prevMonth.getTime().toString() + ''">'' + content + ''</td>'');
				tooltip = null;
				if (weekDay === this.o.weekEnd){
					html.push(''</tr>'');
				}
				prevMonth.setUTCDate(prevMonth.getUTCDate() + 1);
			}
			this.picker.find(''.datepicker-days tbody'').html(html.join(''''));

			var monthsTitle = dates[this.o.language].monthsTitle || dates[''en''].monthsTitle || ''Months'';
			var months = this.picker.find(''.datepicker-months'')
						.find(''.datepicker-switch'')
							.text(this.o.maxViewMode < 2 ? monthsTitle : year)
							.end()
						.find(''tbody span'').removeClass(''active'');

			$.each(this.dates, function(i, d){
				if (d.getUTCFullYear() === year)
					months.eq(d.getUTCMonth()).addClass(''active'');
			});

			if (year < startYear || year > endYear){
				months.addClass(''disabled'');
			}
			if (year === startYear){
				months.slice(0, startMonth).addClass(''disabled'');
			}
			if (year === endYear){
				months.slice(endMonth+1).addClass(''disabled'');
			}

			if (this.o.beforeShowMonth !== $.noop){
				var that = this;
				$.each(months, function(i, month){
          var moDate = new Date(year, i, 1);
          var before = that.o.beforeShowMonth(moDate);
					if (before === undefined)
						before = {};
					else if (typeof before === ''boolean'')
						before = {enabled: before};
					else if (typeof before === ''string'')
						before = {classes: before};
					if (before.enabled === false && !$(month).hasClass(''disabled''))
					    $(month).addClass(''disabled'');
					if (before.classes)
					    $(month).addClass(before.classes);
					if (before.tooltip)
					    $(month).prop(''title'', before.tooltip);
				});
			}

			// Generating decade/years picker
			this._fill_yearsView(
				''.datepicker-years'',
				''year'',
				10,
				year,
				startYear,
				endYear,
				this.o.beforeShowYear
			);

			// Generating century/decades picker
			this._fill_yearsView(
				''.datepicker-decades'',
				''decade'',
				100,
				year,
				startYear,
				endYear,
				this.o.beforeShowDecade
			);

			// Generating millennium/centuries picker
			this._fill_yearsView(
				''.datepicker-centuries'',
				''century'',
				1000,
				year,
				startYear,
				endYear,
				this.o.beforeShowCentury
			);
		},

		updateNavArrows: function(){
			if (!this._allow_update)
				return;

			var d = new Date(this.viewDate),
				year = d.getUTCFullYear(),
				month = d.getUTCMonth(),
				startYear = this.o.startDate !== -Infinity ? this.o.startDate.getUTCFullYear() : -Infinity,
				startMonth = this.o.startDate !== -Infinity ? this.o.startDate.getUTCMonth() : -Infinity,
				endYear = this.o.endDate !== Infinity ? this.o.endDate.getUTCFullYear() : Infinity,
				endMonth = this.o.endDate !== Infinity ? this.o.endDate.getUTCMonth() : Infinity,
				prevIsDisabled,
				nextIsDisabled,
				factor = 1;
			switch (this.viewMode){
				case 0:
					prevIsDisabled = year <= startYear && month <= startMonth;
					nextIsDisabled = year >= endYear && month >= endMonth;
					break;
				case 4:
					factor *= 10;
					/* falls through */
				case 3:
					factor *= 10;
					/* falls through */
				case 2:
					factor *= 10;
					/* falls through */
				case 1:
					prevIsDisabled = Math.floor(year / factor) * factor <= startYear;
					nextIsDisabled = Math.floor(year / factor) * factor + factor >= endYear;
					break;
			}

			this.picker.find(''.prev'').toggleClass(''disabled'', prevIsDisabled);
			this.picker.find(''.next'').toggleClass(''disabled'', nextIsDisabled);
		},

		click: function(e){
			e.preventDefault();
			e.stopPropagation();

			var target, dir, day, year, month;
			target = $(e.target);

			// Clicked on the switch
			if (target.hasClass(''datepicker-switch'') && this.viewMode !== this.o.maxViewMode){
				this.setViewMode(this.viewMode + 1);
			}

			// Clicked on today button
			if (target.hasClass(''today'') && !target.hasClass(''day'')){
				this.setViewMode(0);
				this._setDate(UTCToday(), this.o.todayBtn === ''linked'' ? null : ''view'');
			}

			// Clicked on clear button
			if (target.hasClass(''clear'')){
				this.clearDates();
			}

			if (!target.hasClass(''disabled'')){
				// Clicked on a month, year, decade, century
				if (target.hasClass(''month'')
						|| target.hasClass(''year'')
						|| target.hasClass(''decade'')
						|| target.hasClass(''century'')) {
					this.viewDate.setUTCDate(1);

					day = 1;
					if (this.viewMode === 1){
						month = target.parent().find(''span'').index(target);
						year = this.viewDate.getUTCFullYear();
						this.viewDate.setUTCMonth(month);
					} else {
						month = 0;
						year = Number(target.text());
						this.viewDate.setUTCFullYear(year);
					}

					this._trigger(DPGlobal.viewModes[this.viewMode - 1].e, this.viewDate);

					if (this.viewMode === this.o.minViewMode){
						this._setDate(UTCDate(year, month, day));
					} else {
						this.setViewMode(this.viewMode - 1);
						this.fill();
					}
				}
			}

			if (this.picker.is('':visible'') && this._focused_from){
				this._focused_from.focus();
			}
			delete this._focused_from;
		},

		dayCellClick: function(e){
			var $target = $(e.currentTarget);
			var timestamp = $target.data(''date'');
			var date = new Date(timestamp);

			if (this.o.updateViewDate) {
				if (date.getUTCFullYear() !== this.viewDate.getUTCFullYear()) {
					this._trigger(''changeYear'', this.viewDate);
				}

				if (date.getUTCMonth() !== this.viewDate.getUTCMonth()) {
					this._trigger(''changeMonth'', this.viewDate);
				}
			}
			this._setDate(date);
		},

		// Clicked on prev or next
		navArrowsClick: function(e){
			var $target = $(e.currentTarget);
			var dir = $target.hasClass(''prev'') ? -1 : 1;
			if (this.viewMode !== 0){
				dir *= DPGlobal.viewModes[this.viewMode].navStep * 12;
			}
			this.viewDate = this.moveMonth(this.viewDate, dir);
			this._trigger(DPGlobal.viewModes[this.viewMode].e, this.viewDate);
			this.fill();
		},

		_toggle_multidate: function(date){
			var ix = this.dates.contains(date);
			if (!date){
				this.dates.clear();
			}

			if (ix !== -1){
				if (this.o.multidate === true || this.o.multidate > 1 || this.o.toggleActive){
					this.dates.remove(ix);
				}
			} else if (this.o.multidate === false) {
				this.dates.clear();
				this.dates.push(date);
			}
			else {
				this.dates.push(date);
			}

			if (typeof this.o.multidate === ''number'')
				while (this.dates.length > this.o.multidate)
					this.dates.remove(0);
		},

		_setDate: function(date, which){
			if (!which || which === ''date'')
				this._toggle_multidate(date && new Date(date));
			if ((!which && this.o.updateViewDate) || which === ''view'')
				this.viewDate = date && new Date(date);

			this.fill();
			this.setValue();
			if (!which || which !== ''view'') {
				this._trigger(''changeDate'');
			}
			this.inputField.trigger(''change'');
			if (this.o.autoclose && (!which || which === ''date'')){
				this.hide();
			}
		},

		moveDay: function(date, dir){
			var newDate = new Date(date);
			newDate.setUTCDate(date.getUTCDate() + dir);

			return newDate;
		},

		moveWeek: function(date, dir){
			return this.moveDay(date, dir * 7);
		},

		moveMonth: function(date, dir){
			if (!isValidDate(date))
				return this.o.defaultViewDate;
			if (!dir)
				return date;
			var new_date = new Date(date.valueOf()),
				day = new_date.getUTCDate(),
				month = new_date.getUTCMonth(),
				mag = Math.abs(dir),
				new_month, test;
			dir = dir > 0 ? 1 : -1;
			if (mag === 1){
				test = dir === -1
					// If going back one month, make sure month is not current month
					// (eg, Mar 31 -> Feb 31 == Feb 28, not Mar 02)
					? function(){
						return new_date.getUTCMonth() === month;
					}
					// If going forward one month, make sure month is as expected
					// (eg, Jan 31 -> Feb 31 == Feb 28, not Mar 02)
					: function(){
						return new_date.getUTCMonth() !== new_month;
					};
				new_month = month + dir;
				new_date.setUTCMonth(new_month);
				// Dec -> Jan (12) or Jan -> Dec (-1) -- limit expected date to 0-11
				new_month = (new_month + 12) % 12;
			}
			else {
				// For magnitudes >1, move one month at a time...
				for (var i=0; i < mag; i++)
					// ...which might decrease the day (eg, Jan 31 to Feb 28, etc)...
					new_date = this.moveMonth(new_date, dir);
				// ...then reset the day, keeping it in the new month
				new_month = new_date.getUTCMonth();
				new_date.setUTCDate(day);
				test = function(){
					return new_month !== new_date.getUTCMonth();
				};
			}
			// Common date-resetting loop -- if date is beyond end of month, make it
			// end of month
			while (test()){
				new_date.setUTCDate(--day);
				new_date.setUTCMonth(new_month);
			}
			return new_date;
		},

		moveYear: function(date, dir){
			return this.moveMonth(date, dir*12);
		},

		moveAvailableDate: function(date, dir, fn){
			do {
				date = this[fn](date, dir);

				if (!this.dateWithinRange(date))
					return false;

				fn = ''moveDay'';
			}
			while (this.dateIsDisabled(date));

			return date;
		},

		weekOfDateIsDisabled: function(date){
			return $.inArray(date.getUTCDay(), this.o.daysOfWeekDisabled) !== -1;
		},

		dateIsDisabled: function(date){
			return (
				this.weekOfDateIsDisabled(date) ||
				$.grep(this.o.datesDisabled, function(d){
					return isUTCEquals(date, d);
				}).length > 0
			);
		},

		dateWithinRange: function(date){
			return date >= this.o.startDate && date <= this.o.endDate;
		},

		keydown: function(e){
			if (!this.picker.is('':visible'')){
				if (e.keyCode === 40 || e.keyCode === 27) { // allow down to re-show picker
					this.show();
					e.stopPropagation();
        }
				return;
			}
			var dateChanged = false,
				dir, newViewDate,
				focusDate = this.focusDate || this.viewDate;
			switch (e.keyCode){
				case 27: // escape
					if (this.focusDate){
						this.focusDate = null;
						this.viewDate = this.dates.get(-1) || this.viewDate;
						this.fill();
					}
					else
						this.hide();
					e.preventDefault();
					e.stopPropagation();
					break;
				case 37: // left
				case 38: // up
				case 39: // right
				case 40: // down
					if (!this.o.keyboardNavigation || this.o.daysOfWeekDisabled.length === 7)
						break;
					dir = e.keyCode === 37 || e.keyCode === 38 ? -1 : 1;
          if (this.viewMode === 0) {
  					if (e.ctrlKey){
  						newViewDate = this.moveAvailableDate(focusDate, dir, ''moveYear'');

  						if (newViewDate)
  							this._trigger(''changeYear'', this.viewDate);
  					} else if (e.shiftKey){
  						newViewDate = this.moveAvailableDate(focusDate, dir, ''moveMonth'');

  						if (newViewDate)
  							this._trigger(''changeMonth'', this.viewDate);
  					} else if (e.keyCode === 37 || e.keyCode === 39){
  						newViewDate = this.moveAvailableDate(focusDate, dir, ''moveDay'');
  					} else if (!this.weekOfDateIsDisabled(focusDate)){
  						newViewDate = this.moveAvailableDate(focusDate, dir, ''moveWeek'');
  					}
          } else if (this.viewMode === 1) {
            if (e.keyCode === 38 || e.keyCode === 40) {
              dir = dir * 4;
            }
            newViewDate = this.moveAvailableDate(focusDate, dir, ''moveMonth'');
          } else if (this.viewMode === 2) {
            if (e.keyCode === 38 || e.keyCode === 40) {
              dir = dir * 4;
            }
            newViewDate = this.moveAvailableDate(focusDate, dir, ''moveYear'');
          }
					if (newViewDate){
						this.focusDate = this.viewDate = newViewDate;
						this.setValue();
						this.fill();
						e.preventDefault();
					}
					break;
				case 13: // enter
					if (!this.o.forceParse)
						break;
					focusDate = this.focusDate || this.dates.get(-1) || this.viewDate;
					if (this.o.keyboardNavigation) {
						this._toggle_multidate(focusDate);
						dateChanged = true;
					}
					this.focusDate = null;
					this.viewDate = this.dates.get(-1) || this.viewDate;
					this.setValue();
					this.fill();
					if (this.picker.is('':visible'')){
						e.preventDefault();
						e.stopPropagation();
						if (this.o.autoclose)
							this.hide();
					}
					break;
				case 9: // tab
					this.focusDate = null;
					this.viewDate = this.dates.get(-1) || this.viewDate;
					this.fill();
					this.hide();
					break;
			}
			if (dateChanged){
				if (this.dates.length)
					this._trigger(''changeDate'');
				else
					this._trigger(''clearDate'');
				this.inputField.trigger(''change'');
			}
		},

		setViewMode: function(viewMode){
			this.viewMode = viewMode;
			this.picker
				.children(''div'')
				.hide()
				.filter(''.datepicker-'' + DPGlobal.viewModes[this.viewMode].clsName)
					.show();
			this.updateNavArrows();
      this._trigger(''changeViewMode'', new Date(this.viewDate));
		}
	};

	var DateRangePicker = function(element, options){
		$.data(element, ''datepicker'', this);
		this.element = $(element);
		this.inputs = $.map(options.inputs, function(i){
			return i.jquery ? i[0] : i;
		});
		delete options.inputs;

		this.keepEmptyValues = options.keepEmptyValues;
		delete options.keepEmptyValues;

		datepickerPlugin.call($(this.inputs), options)
			.on(''changeDate'', $.proxy(this.dateUpdated, this));

		this.pickers = $.map(this.inputs, function(i){
			return $.data(i, ''datepicker'');
		});
		this.updateDates();
	};
	DateRangePicker.prototype = {
		updateDates: function(){
			this.dates = $.map(this.pickers, function(i){
				return i.getUTCDate();
			});
			this.updateRanges();
		},
		updateRanges: function(){
			var range = $.map(this.dates, function(d){
				return d.valueOf();
			});
			$.each(this.pickers, function(i, p){
				p.setRange(range);
			});
		},
		dateUpdated: function(e){
			// `this.updating` is a workaround for preventing infinite recursion
			// between `changeDate` triggering and `setUTCDate` calling.  Until
			// there is a better mechanism.
			if (this.updating)
				return;
			this.updating = true;

			var dp = $.data(e.target, ''datepicker'');

			if (dp === undefined) {
				return;
			}

			var new_date = dp.getUTCDate(),
				keep_empty_values = this.keepEmptyValues,
				i = $.inArray(e.target, this.inputs),
				j = i - 1,
				k = i + 1,
				l = this.inputs.length;
			if (i === -1)
				return;

			$.each(this.pickers, function(i, p){
				if (!p.getUTCDate() && (p === dp || !keep_empty_values))
					p.setUTCDate(new_date);
			});

			if (new_date < this.dates[j]){
				// Date being moved earlier/left
				while (j >= 0 && new_date < this.dates[j]){
					this.pickers[j--].setUTCDate(new_date);
				}
			} else if (new_date > this.dates[k]){
				// Date being moved later/right
				while (k < l && new_date > this.dates[k]){
					this.pickers[k++].setUTCDate(new_date);
				}
			}
			this.updateDates();

			delete this.updating;
		},
		destroy: function(){
			$.map(this.pickers, function(p){ p.destroy(); });
			$(this.inputs).off(''changeDate'', this.dateUpdated);
			delete this.element.data().datepicker;
		},
		remove: alias(''destroy'', ''Method `remove` is deprecated and will be removed in version 2.0. Use `destroy` instead'')
	};

	function opts_from_el(el, prefix){
		// Derive options from element data-attrs
		var data = $(el).data(),
			out = {}, inkey,
			replace = new RegExp(''^'' + prefix.toLowerCase() + ''([A-Z])'');
		prefix = new RegExp(''^'' + prefix.toLowerCase());
		function re_lower(_,a){
			return a.toLowerCase();
		}
		for (var key in data)
			if (prefix.test(key)){
				inkey = key.replace(replace, re_lower);
				out[inkey] = data[key];
			}
		return out;
	}

	function opts_from_locale(lang){
		// Derive options from locale plugins
		var out = {};
		// Check if "de-DE" style date is available, if not language should
		// fallback to 2 letter code eg "de"
		if (!dates[lang]){
			lang = lang.split(''-'')[0];
			if (!dates[lang])
				return;
		}
		var d = dates[lang];
		$.each(locale_opts, function(i,k){
			if (k in d)
				out[k] = d[k];
		});
		return out;
	}

	var old = $.fn.datepicker;
	var datepickerPlugin = function(option){
		var args = Array.apply(null, arguments);
		args.shift();
		var internal_return;
		this.each(function(){
			var $this = $(this),
				data = $this.data(''datepicker''),
				options = typeof option === ''object'' && option;
			if (!data){
				var elopts = opts_from_el(this, ''date''),
					// Preliminary otions
					xopts = $.extend({}, defaults, elopts, options),
					locopts = opts_from_locale(xopts.language),
					// Options priority: js args, data-attrs, locales, defaults
					opts = $.extend({}, defaults, locopts, elopts, options);
				if ($this.hasClass(''input-daterange'') || opts.inputs){
					$.extend(opts, {
						inputs: opts.inputs || $this.find(''input'').toArray()
					});
					data = new DateRangePicker(this, opts);
				}
				else {
					data = new Datepicker(this, opts);
				}
				$this.data(''datepicker'', data);
			}
			if (typeof option === ''string'' && typeof data[option] === ''function''){
				internal_return = data[option].apply(data, args);
			}
		});

		if (
			internal_return === undefined ||
			internal_return instanceof Datepicker ||
			internal_return instanceof DateRangePicker
		)
			return this;

		if (this.length > 1)
			throw new Error(''Using only allowed for the collection of a single element ('' + option + '' function)'');
		else
			return internal_return;
	};
	$.fn.datepicker = datepickerPlugin;

	var defaults = $.fn.datepicker.defaults = {
		assumeNearbyYear: false,
		autoclose: false,
		beforeShowDay: $.noop,
		beforeShowMonth: $.noop,
		beforeShowYear: $.noop,
		beforeShowDecade: $.noop,
		beforeShowCentury: $.noop,
		calendarWeeks: false,
		clearBtn: false,
		toggleActive: false,
		daysOfWeekDisabled: [],
		daysOfWeekHighlighted: [],
		datesDisabled: [],
		endDate: Infinity,
		forceParse: true,
		format: ''mm/dd/yyyy'',
		keepEmptyValues: false,
		keyboardNavigation: true,
		language: ''en'',
		minViewMode: 0,
		maxViewMode: 4,
		multidate: false,
		multidateSeparator: '','',
		orientation: "auto",
		rtl: false,
		startDate: -Infinity,
		startView: 0,
		todayBtn: false,
		todayHighlight: false,
		updateViewDate: true,
		weekStart: 0,
		disableTouchKeyboard: false,
		enableOnReadonly: true,
		showOnFocus: true,
		zIndexOffset: 10,
		container: ''body'',
		immediateUpdates: false,
		title: '''',
		templates: {
			leftArrow: ''&#x00AB;'',
			rightArrow: ''&#x00BB;''
		},
    showWeekDays: true
	};
	var locale_opts = $.fn.datepicker.locale_opts = [
		''format'',
		''rtl'',
		''weekStart''
	];
	$.fn.datepicker.Constructor = Datepicker;
	var dates = $.fn.datepicker.dates = {
		en: {
			days: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
			daysShort: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
			daysMin: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"],
			months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
			monthsShort: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
			today: "Today",
			clear: "Clear",
			titleFormat: "MM yyyy"
		}
	};

	var DPGlobal = {
		viewModes: [
			{
				names: [''days'', ''month''],
				clsName: ''days'',
				e: ''changeMonth''
			},
			{
				names: [''months'', ''year''],
				clsName: ''months'',
				e: ''changeYear'',
				navStep: 1
			},
			{
				names: [''years'', ''decade''],
				clsName: ''years'',
				e: ''changeDecade'',
				navStep: 10
			},
			{
				names: [''decades'', ''century''],
				clsName: ''decades'',
				e: ''changeCentury'',
				navStep: 100
			},
			{
				names: [''centuries'', ''millennium''],
				clsName: ''centuries'',
				e: ''changeMillennium'',
				navStep: 1000
			}
		],
		validParts: /dd?|DD?|mm?|MM?|yy(?:yy)?/g,
		nonpunctuation: /[^ -\/:-@\u5e74\u6708\u65e5\[-`{-~\t\n\r]+/g,
		parseFormat: function(format){
			if (typeof format.toValue === ''function'' && typeof format.toDisplay === ''function'')
                return format;
            // IE treats \0 as a string end in inputs (truncating the value),
			// so it''s a bad format delimiter, anyway
			var separators = format.replace(this.validParts, ''\0'').split(''\0''),
				parts = format.match(this.validParts);
			if (!separators || !separators.length || !parts || parts.length === 0){
				throw new Error("Invalid date format.");
			}
			return {separators: separators, parts: parts};
		},
		parseDate: function(date, format, language, assumeNearby){
			if (!date)
				return undefined;
			if (date instanceof Date)
				return date;
			if (typeof format === ''string'')
				format = DPGlobal.parseFormat(format);
			if (format.toValue)
				return format.toValue(date, format, language);
			var fn_map = {
					d: ''moveDay'',
					m: ''moveMonth'',
					w: ''moveWeek'',
					y: ''moveYear''
				},
				dateAliases = {
					yesterday: ''-1d'',
					today: ''+0d'',
					tomorrow: ''+1d''
				},
				parts, part, dir, i, fn;
			if (date in dateAliases){
				date = dateAliases[date];
			}
			if (/^[\-+]\d+[dmwy]([\s,]+[\-+]\d+[dmwy])*$/i.test(date)){
				parts = date.match(/([\-+]\d+)([dmwy])/gi);
				date = new Date();
				for (i=0; i < parts.length; i++){
					part = parts[i].match(/([\-+]\d+)([dmwy])/i);
					dir = Number(part[1]);
					fn = fn_map[part[2].toLowerCase()];
					date = Datepicker.prototype[fn](date, dir);
				}
				return Datepicker.prototype._zero_utc_time(date);
			}

			parts = date && date.match(this.nonpunctuation) || [];

			function applyNearbyYear(year, threshold){
				if (threshold === true)
					threshold = 10;

				// if year is 2 digits or less, than the user most likely is trying to get a recent century
				if (year < 100){
					year += 2000;
					// if the new year is more than threshold years in advance, use last century
					if (year > ((new Date()).getFullYear()+threshold)){
						year -= 100;
					}
				}

				return year;
			}

			var parsed = {},
				setters_order = [''yyyy'', ''yy'', ''M'', ''MM'', ''m'', ''mm'', ''d'', ''dd''],
				setters_map = {
					yyyy: function(d,v){
						return d.setUTCFullYear(assumeNearby ? applyNearbyYear(v, assumeNearby) : v);
					},
					m: function(d,v){
						if (isNaN(d))
							return d;
						v -= 1;
						while (v < 0) v += 12;
						v %= 12;
						d.setUTCMonth(v);
						while (d.getUTCMonth() !== v)
							d.setUTCDate(d.getUTCDate()-1);
						return d;
					},
					d: function(d,v){
						return d.setUTCDate(v);
					}
				},
				val, filtered;
			setters_map[''yy''] = setters_map[''yyyy''];
			setters_map[''M''] = setters_map[''MM''] = setters_map[''mm''] = setters_map[''m''];
			setters_map[''dd''] = setters_map[''d''];
			date = UTCToday();
			var fparts = format.parts.slice();
			// Remove noop parts
			if (parts.length !== fparts.length){
				fparts = $(fparts).filter(function(i,p){
					return $.inArray(p, setters_order) !== -1;
				}).toArray();
			}
			// Process remainder
			function match_part(){
				var m = this.slice(0, parts[i].length),
					p = parts[i].slice(0, m.length);
				return m.toLowerCase() === p.toLowerCase();
			}
			if (parts.length === fparts.length){
				var cnt;
				for (i=0, cnt = fparts.length; i < cnt; i++){
					val = parseInt(parts[i], 10);
					part = fparts[i];
					if (isNaN(val)){
						switch (part){
							case ''MM'':
								filtered = $(dates[language].months).filter(match_part);
								val = $.inArray(filtered[0], dates[language].months) + 1;
								break;
							case ''M'':
								filtered = $(dates[language].monthsShort).filter(match_part);
								val = $.inArray(filtered[0], dates[language].monthsShort) + 1;
								break;
						}
					}
					parsed[part] = val;
				}
				var _date, s;
				for (i=0; i < setters_order.length; i++){
					s = setters_order[i];
					if (s in parsed && !isNaN(parsed[s])){
						_date = new Date(date);
						setters_map[s](_date, parsed[s]);
						if (!isNaN(_date))
							date = _date;
					}
				}
			}
			return date;
		},
		formatDate: function(date, format, language){
			if (!date)
				return '''';
			if (typeof format === ''string'')
				format = DPGlobal.parseFormat(format);
			if (format.toDisplay)
                return format.toDisplay(date, format, language);
            var val = {
				d: date.getUTCDate(),
				D: dates[language].daysShort[date.getUTCDay()],
				DD: dates[language].days[date.getUTCDay()],
				m: date.getUTCMonth() + 1,
				M: dates[language].monthsShort[date.getUTCMonth()],
				MM: dates[language].months[date.getUTCMonth()],
				yy: date.getUTCFullYear().toString().substring(2),
				yyyy: date.getUTCFullYear()
			};
			val.dd = (val.d < 10 ? ''0'' : '''') + val.d;
			val.mm = (val.m < 10 ? ''0'' : '''') + val.m;
			date = [];
			var seps = $.extend([], format.separators);
			for (var i=0, cnt = format.parts.length; i <= cnt; i++){
				if (seps.length)
					date.push(seps.shift());
				date.push(val[format.parts[i]]);
			}
			return date.join('''');
		},
		headTemplate: ''<thead>''+
			              ''<tr>''+
			                ''<th colspan="7" class="datepicker-title"></th>''+
			              ''</tr>''+
							''<tr>''+
								''<th class="prev">''+defaults.templates.leftArrow+''</th>''+
								''<th colspan="5" class="datepicker-switch"></th>''+
								''<th class="next">''+defaults.templates.rightArrow+''</th>''+
							''</tr>''+
						''</thead>'',
		contTemplate: ''<tbody><tr><td colspan="7"></td></tr></tbody>'',
		footTemplate: ''<tfoot>''+
							''<tr>''+
								''<th colspan="7" class="today"></th>''+
							''</tr>''+
							''<tr>''+
								''<th colspan="7" class="clear"></th>''+
							''</tr>''+
						''</tfoot>''
	};
	DPGlobal.template = ''<div class="datepicker">''+
							''<div class="datepicker-days">''+
								''<table class="table-condensed">''+
									DPGlobal.headTemplate+
									''<tbody></tbody>''+
									DPGlobal.footTemplate+
								''</table>''+
							''</div>''+
							''<div class="datepicker-months">''+
								''<table class="table-condensed">''+
									DPGlobal.headTemplate+
									DPGlobal.contTemplate+
									DPGlobal.footTemplate+
								''</table>''+
							''</div>''+
							''<div class="datepicker-years">''+
								''<table class="table-condensed">''+
									DPGlobal.headTemplate+
									DPGlobal.contTemplate+
									DPGlobal.footTemplate+
								''</table>''+
							''</div>''+
							''<div class="datepicker-decades">''+
								''<table class="table-condensed">''+
									DPGlobal.headTemplate+
									DPGlobal.contTemplate+
									DPGlobal.footTemplate+
								''</table>''+
							''</div>''+
							''<div class="datepicker-centuries">''+
								''<table class="table-condensed">''+
									DPGlobal.headTemplate+
									DPGlobal.contTemplate+
									DPGlobal.footTemplate+
								''</table>''+
							''</div>''+
						''</div>'';

	$.fn.datepicker.DPGlobal = DPGlobal;


	/* DATEPICKER NO CONFLICT
	* =================== */

	$.fn.datepicker.noConflict = function(){
		$.fn.datepicker = old;
		return this;
	};

	/* DATEPICKER VERSION
	 * =================== */
	$.fn.datepicker.version = ''1.7.0'';

	$.fn.datepicker.deprecated = function(msg){
		var console = window.console;
		if (console && console.warn) {
			console.warn(''DEPRECATED: '' + msg);
		}
	};


	/* DATEPICKER DATA-API
	* ================== */

	$(document).on(
		''focus.datepicker.data-api click.datepicker.data-api'',
		''[data-provide="datepicker"]'',
		function(e){
			var $this = $(this);
			if ($this.data(''datepicker''))
				return;
			e.preventDefault();
			// component click requires us to explicitly show it
			datepickerPlugin.call($this, ''show'');
		}
	);
	$(function(){
		datepickerPlugin.call($(''[data-provide="datepicker-inline"]''));
	});

}));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerarJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.ar.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerarJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerarJsContent [

	<ignoreForCoverage>
	^ '/**
 * Arabic translation for bootstrap-datepicker
 * Mohammed Alshehri <alshehri866@gmail.com>
 */
;(function($){
    $.fn.datepicker.dates[''ar''] = {
        days: ["الأحد", "الاثنين", "الثلاثاء", "الأربعاء", "الخميس", "الجمعة", "السبت", "الأحد"],
        daysShort: ["أحد", "اثنين", "ثلاثاء", "أربعاء", "خميس", "جمعة", "سبت", "أحد"],
        daysMin: ["ح", "ن", "ث", "ع", "خ", "ج", "س", "ح"],
        months: ["يناير", "فبراير", "مارس", "أبريل", "مايو", "يونيو", "يوليو", "أغسطس", "سبتمبر", "أكتوبر", "نوفمبر", "ديسمبر"],
        monthsShort: ["يناير", "فبراير", "مارس", "أبريل", "مايو", "يونيو", "يوليو", "أغسطس", "سبتمبر", "أكتوبر", "نوفمبر", "ديسمبر"],
        today: "هذا اليوم",
        rtl: true
    };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerartnJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.ar-tn.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerartnJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerartnJsContent [

	<ignoreForCoverage>
	^ '/**
 * Arabic-Tunisia translation for bootstrap-datepicker
 * Souhaieb Besbes <besbes.souhaieb@gmail.com>
 */
;(function($){
    $.fn.datepicker.dates[''ar-tn''] = {
        days: ["الأحد", "الاثنين", "الثلاثاء", "الأربعاء", "الخميس", "الجمعة", "السبت", "الأحد"],
        daysShort: ["أحد", "اثنين", "ثلاثاء", "أربعاء", "خميس", "جمعة", "سبت", "أحد"],
        daysMin: ["ح", "ن", "ث", "ع", "خ", "ج", "س", "ح"],
        months: ["جانفي","فيفري","مارس","أفريل","ماي","جوان","جويليه","أوت","سبتمبر","أكتوبر","نوفمبر","ديسمبر"],
        monthsShort: ["جانفي","فيفري","مارس","أفريل","ماي","جوان","جويليه","أوت","سبتمبر","أكتوبر","نوفمبر","ديسمبر"],
        today: "هذا اليوم",
        rtl: true
    };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerazJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.az.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerazJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerazJsContent [

	<ignoreForCoverage>
	^ '// Azerbaijani
;(function($){
    $.fn.datepicker.dates[''az''] = {
        days: ["Bazar", "Bazar ertəsi", "Çərşənbə axşamı", "Çərşənbə", "Cümə axşamı", "Cümə", "Şənbə"],
        daysShort: ["B.", "B.e", "Ç.a", "Ç.", "C.a", "C.", "Ş."],
        daysMin: ["B.", "B.e", "Ç.a", "Ç.", "C.a", "C.", "Ş."],
        months: ["Yanvar", "Fevral", "Mart", "Aprel", "May", "İyun", "İyul", "Avqust", "Sentyabr", "Oktyabr", "Noyabr", "Dekabr"],
        monthsShort: ["Yan", "Fev", "Mar", "Apr", "May", "İyun", "İyul", "Avq", "Sen", "Okt", "Noy", "Dek"],
        today: "Bu gün",
        weekStart: 1
    };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerbgJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.bg.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerbgJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerbgJsContent [

	<ignoreForCoverage>
	^ '/**
 * Bulgarian translation for bootstrap-datepicker
 * Apostol Apostolov <apostol.s.apostolov@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''bg''] = {
		days: ["Неделя", "Понеделник", "Вторник", "Сряда", "Четвъртък", "Петък", "Събота"],
		daysShort: ["Нед", "Пон", "Вто", "Сря", "Чет", "Пет", "Съб"],
		daysMin: ["Н", "П", "В", "С", "Ч", "П", "С"],
		months: ["Януари", "Февруари", "Март", "Април", "Май", "Юни", "Юли", "Август", "Септември", "Октомври", "Ноември", "Декември"],
		monthsShort: ["Ян", "Фев", "Мар", "Апр", "Май", "Юни", "Юли", "Авг", "Сеп", "Окт", "Ное", "Дек"],
		today: "днес"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerbnJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.bn.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerbnJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerbnJsContent [

	<ignoreForCoverage>
	^ '/**
 * Bengali (Bangla) translation for bootstrap-datepicker
 * Karim Khan <kkhancse91@gmail.com>
 * Orif N. Jr. <orif.zade@gmail.com>
 */
;(function($){
  $.fn.datepicker.dates[''bn''] = {
		days: ["রবিবার","সোমবার","মঙ্গলবার","বুধবার","বৃহস্পতিবার","শুক্রবার","শনিবার"],
		daysShort: ["রবিবার","সোমবার","মঙ্গলবার","বুধবার","বৃহস্পতিবার","শুক্রবার","শনিবার"],
		daysMin: ["রবি","সোম","মঙ্গল","বুধ","বৃহস্পতি","শুক্র","শনি"],
		months: ["জানুয়ারী","ফেব্রুয়ারি","মার্চ","এপ্রিল","মে","জুন","জুলাই","অগাস্ট","সেপ্টেম্বর","অক্টোবর","নভেম্বর","ডিসেম্বর"],
		monthsShort: ["জানুয়ারী","ফেব্রুয়ারি","মার্চ","এপ্রিল","মে","জুন","জুলাই","অগাস্ট","সেপ্টেম্বর","অক্টোবর","নভেম্বর","ডিসেম্বর"],
		today: "আজ",
		monthsTitle: "মাস",
		clear: "পরিষ্কার",
		weekStart: 0,
		format: "mm/dd/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerbrJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.br.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerbrJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerbrJsContent [

	<ignoreForCoverage>
	^ '/**
 * Breton translation for bootstrap-datepicker
 * Gwenn Meynier <tornoz@laposte.net>
 */
;(function($){
	$.fn.datepicker.dates[''br''] = {
		days: ["Sul", "Lun", "Meurzh", "Merc''her", "Yaou", "Gwener", "Sadorn"],
		daysShort: ["Sul", "Lun", "Meu.", "Mer.", "Yao.", "Gwe.", "Sad."],
		daysMin: ["Su", "L", "Meu", "Mer", "Y", "G", "Sa"],
		months: ["Genver", "C''hwevrer", "Meurzh", "Ebrel", "Mae", "Mezheven", "Gouere", "Eost", "Gwengolo", "Here", "Du", "Kerzu"],
		monthsShort: ["Genv.", "C''hw.", "Meur.", "Ebre.", "Mae", "Mezh.", "Goue.", "Eost", "Gwen.", "Here", "Du", "Kerz."],
		today: "Hiziv",
		monthsTitle: "Miz",
		clear: "Dilemel",
		weekStart: 1,
		format: "dd/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerbsJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.bs.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerbsJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerbsJsContent [

	<ignoreForCoverage>
	^ '/**
 * Bosnian translation for bootstrap-datepicker
 */
;(function($){
	$.fn.datepicker.dates[''bs''] = {
		days: ["Nedjelja","Ponedjeljak", "Utorak", "Srijeda", "Četvrtak", "Petak", "Subota"],
		daysShort: ["Ned", "Pon", "Uto", "Sri", "Čet", "Pet", "Sub"],
		daysMin: ["N", "Po", "U", "Sr", "Č", "Pe", "Su"],
		months: ["Januar", "Februar", "Mart", "April", "Maj", "Juni", "Juli", "August", "Septembar", "Oktobar", "Novembar", "Decembar"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "Maj", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Dec"],
		today: "Danas",
		weekStart: 1,
		format: "dd.mm.yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickercaJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.ca.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickercaJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickercaJsContent [

	<ignoreForCoverage>
	^ '/**
 * Catalan translation for bootstrap-datepicker
 * J. Garcia <jogaco.en@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''ca''] = {
		days: ["Diumenge", "Dilluns", "Dimarts", "Dimecres", "Dijous", "Divendres", "Dissabte"],
		daysShort: ["Diu",  "Dil", "Dmt", "Dmc", "Dij", "Div", "Dis"],
		daysMin: ["dg", "dl", "dt", "dc", "dj", "dv", "ds"],
		months: ["Gener", "Febrer", "Març", "Abril", "Maig", "Juny", "Juliol", "Agost", "Setembre", "Octubre", "Novembre", "Desembre"],
		monthsShort: ["Gen", "Feb", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Oct", "Nov", "Des"],
		today: "Avui",
		monthsTitle: "Mesos",
		clear: "Esborrar",
		weekStart: 1,
		format: "dd/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickercsJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.cs.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickercsJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickercsJsContent [

	<ignoreForCoverage>
	^ '/**
 * Czech translation for bootstrap-datepicker
 * Matěj Koubík <matej@koubik.name>
 * Fixes by Michal Remiš <michal.remis@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''cs''] = {
		days: ["Neděle", "Pondělí", "Úterý", "Středa", "Čtvrtek", "Pátek", "Sobota"],
		daysShort: ["Ned", "Pon", "Úte", "Stř", "Čtv", "Pát", "Sob"],
		daysMin: ["Ne", "Po", "Út", "St", "Čt", "Pá", "So"],
		months: ["Leden", "Únor", "Březen", "Duben", "Květen", "Červen", "Červenec", "Srpen", "Září", "Říjen", "Listopad", "Prosinec"],
		monthsShort: ["Led", "Úno", "Bře", "Dub", "Kvě", "Čer", "Čnc", "Srp", "Zář", "Říj", "Lis", "Pro"],
		today: "Dnes",
		clear: "Vymazat",
		monthsTitle: "Měsíc",
		weekStart: 1,
		format: "dd.m.yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickercyJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.cy.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickercyJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickercyJsContent [

	<ignoreForCoverage>
	^ '/**
 * Welsh translation for bootstrap-datepicker
 * S. Morris <s.morris@bangor.ac.uk>
 */
;(function($){
	$.fn.datepicker.dates[''cy''] = {
		days: ["Sul", "Llun", "Mawrth", "Mercher", "Iau", "Gwener", "Sadwrn"],
		daysShort: ["Sul", "Llu", "Maw", "Mer", "Iau", "Gwe", "Sad"],
		daysMin: ["Su", "Ll", "Ma", "Me", "Ia", "Gwe", "Sa"],
		months: ["Ionawr", "Chewfror", "Mawrth", "Ebrill", "Mai", "Mehefin", "Gorfennaf", "Awst", "Medi", "Hydref", "Tachwedd", "Rhagfyr"],
		monthsShort: ["Ion", "Chw", "Maw", "Ebr", "Mai", "Meh", "Gor", "Aws", "Med", "Hyd", "Tach", "Rha"],
		today: "Heddiw"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerdaJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.da.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerdaJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerdaJsContent [

	<ignoreForCoverage>
	^ '/**
 * Danish translation for bootstrap-datepicker
 * Christian Pedersen <http://github.com/chripede>
 * Ivan Mylyanyk <https://github.com/imylyanyk>
 */
;(function($){
	$.fn.datepicker.dates[''da''] = {
		days: ["Søndag", "Mandag", "Tirsdag", "Onsdag", "Torsdag", "Fredag", "Lørdag"],
		daysShort: ["Søn", "Man", "Tir", "Ons", "Tor", "Fre", "Lør"],
		daysMin: ["Sø", "Ma", "Ti", "On", "To", "Fr", "Lø"],
		months: ["Januar", "Februar", "Marts", "April", "Maj", "Juni", "Juli", "August", "September", "Oktober", "November", "December"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "Maj", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Dec"],
		today: "I Dag",
		weekStart: 1,
		clear: "Nulstil",
        format: "dd/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerdeJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.de.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerdeJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerdeJsContent [

	<ignoreForCoverage>
	^ '/**
 * German translation for bootstrap-datepicker
 * Sam Zurcher <sam@orelias.ch>
 */
;(function($){
	$.fn.datepicker.dates[''de''] = {
		days: ["Sonntag", "Montag", "Dienstag", "Mittwoch", "Donnerstag", "Freitag", "Samstag"],
		daysShort: ["Son", "Mon", "Die", "Mit", "Don", "Fre", "Sam"],
		daysMin: ["So", "Mo", "Di", "Mi", "Do", "Fr", "Sa"],
		months: ["Januar", "Februar", "März", "April", "Mai", "Juni", "Juli", "August", "September", "Oktober", "November", "Dezember"],
		monthsShort: ["Jan", "Feb", "Mär", "Apr", "Mai", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Dez"],
		today: "Heute",
		monthsTitle: "Monate",
		clear: "Löschen",
		weekStart: 1,
		format: "dd.mm.yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerelJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.el.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerelJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerelJsContent [

	<ignoreForCoverage>
	^ '/**
 * Greek translation for bootstrap-datepicker
 */
;(function($){
  $.fn.datepicker.dates[''el''] = {
    days: ["Κυριακή", "Δευτέρα", "Τρίτη", "Τετάρτη", "Πέμπτη", "Παρασκευή", "Σάββατο"],
    daysShort: ["Κυρ", "Δευ", "Τρι", "Τετ", "Πεμ", "Παρ", "Σαβ"],
    daysMin: ["Κυ", "Δε", "Τρ", "Τε", "Πε", "Πα", "Σα"],
    months: ["Ιανουάριος", "Φεβρουάριος", "Μάρτιος", "Απρίλιος", "Μάιος", "Ιούνιος", "Ιούλιος", "Αύγουστος", "Σεπτέμβριος", "Οκτώβριος", "Νοέμβριος", "Δεκέμβριος"],
    monthsShort: ["Ιαν", "Φεβ", "Μαρ", "Απρ", "Μάι", "Ιουν", "Ιουλ", "Αυγ", "Σεπ", "Οκτ", "Νοε", "Δεκ"],
    today: "Σήμερα",
    clear: "Καθαρισμός",
    weekStart: 1,
    format: "d/m/yyyy"
  };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerenAUJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.en-AU.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerenAUJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerenAUJsContent [

	<ignoreForCoverage>
	^ '/**
 * Australian English translation for bootstrap-datepicker
 * Steve Chapman <steven.p.chapman@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''en-AU''] = {
		days: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
		daysShort: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
		daysMin: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"],
		months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
		today: "Today",
		monthsTitle: "Months",
		clear: "Clear",
		weekStart: 1,
		format: "d/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerenCAJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.en-CA.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerenCAJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerenCAJsContent [

	<ignoreForCoverage>
	^ '/**
 * Canadian English translation for bootstrap-datepicker
 * Mike Nacey <mnacey@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''en-CA''] = {
		days: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
		daysShort: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
		daysMin: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"],
		months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
		today: "Today",
		monthsTitle: "Months",
		clear: "Clear",
		weekStart: 0,
		format: "yyyy-mm-dd"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerenGBJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.en-GB.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerenGBJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerenGBJsContent [

	<ignoreForCoverage>
	^ '/**
 * British English translation for bootstrap-datepicker
 * Xavier Dutreilh <xavier@dutreilh.com>
 */
;(function($){
	$.fn.datepicker.dates[''en-GB''] = {
		days: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
		daysShort: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
		daysMin: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"],
		months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
		today: "Today",
		monthsTitle: "Months",
		clear: "Clear",
		weekStart: 1,
		format: "dd/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerenIEJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.en-IE.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerenIEJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerenIEJsContent [

	<ignoreForCoverage>
	^ '/**
 * Irish English translation for bootstrap-datepicker
 */
;(function($){
	$.fn.datepicker.dates[''en-IE''] = {
		days: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
		daysShort: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
		daysMin: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"],
		months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
		today: "Today",
		monthsTitle: "Months",
		clear: "Clear",
		weekStart: 1,
		format: "dd/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerenNZJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.en-NZ.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerenNZJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerenNZJsContent [

	<ignoreForCoverage>
	^ '/**
 * New Zealand English translation for bootstrap-datepicker
 */
;(function($){
	$.fn.datepicker.dates[''en-NZ''] = {
		days: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
		daysShort: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
		daysMin: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"],
		months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
		today: "Today",
		monthsTitle: "Months",
		clear: "Clear",
		weekStart: 1,
		format: "d/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerenZAJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.en-ZA.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerenZAJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerenZAJsContent [

	<ignoreForCoverage>
	^ '/**
 * South African English translation for bootstrap-datepicker
 */
;(function($){
	$.fn.datepicker.dates[''en-ZA''] = {
		days: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
		daysShort: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
		daysMin: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"],
		months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
		today: "Today",
		monthsTitle: "Months",
		clear: "Clear",
		weekStart: 1,
		format: "yyyy/mm/d"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickereoJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.eo.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickereoJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickereoJsContent [

	<ignoreForCoverage>
	^ '/**
 * Esperanto translation for bootstrap-datepicker
 * Emmanuel Debanne <https://github.com/debanne>
 */
;(function($){
	$.fn.datepicker.dates[''eo''] = {
		days: ["dimanĉo", "lundo", "mardo", "merkredo", "ĵaŭdo", "vendredo", "sabato"],
		daysShort: ["dim.", "lun.", "mar.", "mer.", "ĵaŭ.", "ven.", "sam."],
		daysMin: ["d", "l", "ma", "me", "ĵ", "v", "s"],
		months: ["januaro", "februaro", "marto", "aprilo", "majo", "junio", "julio", "aŭgusto", "septembro", "oktobro", "novembro", "decembro"],
		monthsShort: ["jan.", "feb.", "mar.", "apr.", "majo", "jun.", "jul.", "aŭg.", "sep.", "okt.", "nov.", "dec."],
		today: "Hodiaŭ",
		clear: "Nuligi",
		weekStart: 1,
		format: "yyyy-mm-dd"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickeresJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.es.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickeresJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickeresJsContent [

	<ignoreForCoverage>
	^ '/**
 * Spanish translation for bootstrap-datepicker
 * Bruno Bonamin <bruno.bonamin@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''es''] = {
		days: ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"],
		daysShort: ["Dom", "Lun", "Mar", "Mié", "Jue", "Vie", "Sáb"],
		daysMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
		months: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
		monthsShort: ["Ene", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago", "Sep", "Oct", "Nov", "Dic"],
		today: "Hoy",
		monthsTitle: "Meses",
		clear: "Borrar",
		weekStart: 1,
		format: "dd/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickeretJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.et.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickeretJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickeretJsContent [

	<ignoreForCoverage>
	^ '/**
 * Estonian translation for bootstrap-datepicker
 * Ando Roots <https://github.com/anroots>
 * Fixes by Illimar Tambek <<https://github.com/ragulka>
 */
;(function($){
	$.fn.datepicker.dates[''et''] = {
		days: ["Pühapäev", "Esmaspäev", "Teisipäev", "Kolmapäev", "Neljapäev", "Reede", "Laupäev"],
		daysShort: ["Pühap", "Esmasp", "Teisip", "Kolmap", "Neljap", "Reede", "Laup"],
		daysMin: ["P", "E", "T", "K", "N", "R", "L"],
		months: ["Jaanuar", "Veebruar", "Märts", "Aprill", "Mai", "Juuni", "Juuli", "August", "September", "Oktoober", "November", "Detsember"],
		monthsShort: ["Jaan", "Veebr", "Märts", "Apr", "Mai", "Juuni", "Juuli", "Aug", "Sept", "Okt", "Nov", "Dets"],
		today: "Täna",
		clear: "Tühjenda",
		weekStart: 1,
		format: "dd.mm.yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickereuJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.eu.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickereuJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickereuJsContent [

	<ignoreForCoverage>
	^ '/**
 * Basque translation for bootstrap-datepicker
 * Arkaitz Etxeberria <kondi80@gmail.com>
 */
;(function($){
    $.fn.datepicker.dates[''eu''] = {
        days: [''Igandea'', ''Astelehena'', ''Asteartea'', ''Asteazkena'', ''Osteguna'', ''Ostirala'', ''Larunbata''],
        daysShort: [''Ig'', ''Al'', ''Ar'', ''Az'', ''Og'', ''Ol'', ''Lr''],
        daysMin: [''Ig'', ''Al'', ''Ar'', ''Az'', ''Og'', ''Ol'', ''Lr''],
        months: [''Urtarrila'', ''Otsaila'', ''Martxoa'', ''Apirila'', ''Maiatza'', ''Ekaina'', ''Uztaila'', ''Abuztua'', ''Iraila'', ''Urria'', ''Azaroa'', ''Abendua''],
        monthsShort: [''Urt'', ''Ots'', ''Mar'', ''Api'', ''Mai'', ''Eka'', ''Uzt'', ''Abu'', ''Ira'', ''Urr'', ''Aza'', ''Abe''],
        today: "Gaur",
        monthsTitle: "Hilabeteak",
        clear: "Ezabatu",
        weekStart: 1,
        format: "yyyy/mm/dd"
    };
}(jQuery));

'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerfaJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.fa.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerfaJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerfaJsContent [

	<ignoreForCoverage>
	^ '/**
 * Persian translation for bootstrap-datepicker
 * Mostafa Rokooie <mostafa.rokooie@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''fa''] = {
		days: ["یک‌شنبه", "دوشنبه", "سه‌شنبه", "چهارشنبه", "پنج‌شنبه", "جمعه", "شنبه", "یک‌شنبه"],
		daysShort: ["یک", "دو", "سه", "چهار", "پنج", "جمعه", "شنبه", "یک"],
		daysMin: ["ی", "د", "س", "چ", "پ", "ج", "ش", "ی"],
		months: ["ژانویه", "فوریه", "مارس", "آوریل", "مه", "ژوئن", "ژوئیه", "اوت", "سپتامبر", "اکتبر", "نوامبر", "دسامبر"],
		monthsShort: ["ژان", "فور", "مار", "آور", "مه", "ژون", "ژوی", "اوت", "سپت", "اکت", "نوا", "دسا"],
		today: "امروز",
		clear: "پاک کن",
		weekStart: 1,
		format: "yyyy/mm/dd"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerfiJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.fi.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerfiJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerfiJsContent [

	<ignoreForCoverage>
	^ '/**
 * Finnish translation for bootstrap-datepicker
 * Jaakko Salonen <https://github.com/jsalonen>
 */
;(function($){
	$.fn.datepicker.dates[''fi''] = {
		days: ["sunnuntai", "maanantai", "tiistai", "keskiviikko", "torstai", "perjantai", "lauantai"],
		daysShort: ["sun", "maa", "tii", "kes", "tor", "per", "lau"],
		daysMin: ["su", "ma", "ti", "ke", "to", "pe", "la"],
		months: ["tammikuu", "helmikuu", "maaliskuu", "huhtikuu", "toukokuu", "kesäkuu", "heinäkuu", "elokuu", "syyskuu", "lokakuu", "marraskuu", "joulukuu"],
		monthsShort: ["tam", "hel", "maa", "huh", "tou", "kes", "hei", "elo", "syy", "lok", "mar", "jou"],
		today: "tänään",
		clear: "Tyhjennä",
		weekStart: 1,
		format: "d.m.yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerfoJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.fo.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerfoJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerfoJsContent [

	<ignoreForCoverage>
	^ '/**
 * Faroese translation for bootstrap-datepicker
 * Theodor Johannesen <http://github.com/theodorjohannesen>
 */
;(function($){
	$.fn.datepicker.dates[''fo''] = {
		days: ["Sunnudagur", "Mánadagur", "Týsdagur", "Mikudagur", "Hósdagur", "Fríggjadagur", "Leygardagur"],
		daysShort: ["Sun", "Mán", "Týs", "Mik", "Hós", "Frí", "Ley"],
		daysMin: ["Su", "Má", "Tý", "Mi", "Hó", "Fr", "Le"],
		months: ["Januar", "Februar", "Marts", "Apríl", "Mei", "Juni", "Juli", "August", "Septembur", "Oktobur", "Novembur", "Desembur"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "Mei", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Des"],
		today: "Í Dag",
		clear: "Reinsa"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerfrCHJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.fr-CH.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerfrCHJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerfrCHJsContent [

	<ignoreForCoverage>
	^ '/**
 * French (Switzerland) translation for bootstrap-datepicker
 * Christoph Jossi <c.jossi@ascami.ch>
 * Based on 
 * French translation for bootstrap-datepicker
 * Nico Mollet <nico.mollet@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''fr''] = {
		days: ["Dimanche", "Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi"],
		daysShort: ["Dim", "Lun", "Mar", "Mer", "Jeu", "Ven", "Sam"],
		daysMin: ["D", "L", "Ma", "Me", "J", "V", "S"],
		months: ["Janvier", "Février", "Mars", "Avril", "Mai", "Juin", "Juillet", "Août", "Septembre", "Octobre", "Novembre", "Décembre"],
		monthsShort: ["Jan", "Fév", "Mar", "Avr", "Mai", "Jui", "Jul", "Aou", "Sep", "Oct", "Nov", "Déc"],
		today: "Aujourd''hui",
		monthsTitle: "Mois",
		clear: "Effacer",
		weekStart: 1,
		format: "dd.mm.yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerfrJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.fr.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerfrJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerfrJsContent [

	<ignoreForCoverage>
	^ '/**
 * French translation for bootstrap-datepicker
 * Nico Mollet <nico.mollet@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''fr''] = {
		days: ["dimanche", "lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi"],
		daysShort: ["dim.", "lun.", "mar.", "mer.", "jeu.", "ven.", "sam."],
		daysMin: ["d", "l", "ma", "me", "j", "v", "s"],
		months: ["janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre", "décembre"],
		monthsShort: ["janv.", "févr.", "mars", "avril", "mai", "juin", "juil.", "août", "sept.", "oct.", "nov.", "déc."],
		today: "Aujourd''hui",
		monthsTitle: "Mois",
		clear: "Effacer",
		weekStart: 1,
		format: "dd/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerglJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.gl.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerglJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerglJsContent [

	<ignoreForCoverage>
	^ ';(function($){
	$.fn.datepicker.dates[''gl''] = {
		days: ["Domingo", "Luns", "Martes", "Mércores", "Xoves", "Venres", "Sábado"],
		daysShort: ["Dom", "Lun", "Mar", "Mér", "Xov", "Ven", "Sáb"],
		daysMin: ["Do", "Lu", "Ma", "Me", "Xo", "Ve", "Sa"],
		months: ["Xaneiro", "Febreiro", "Marzo", "Abril", "Maio", "Xuño", "Xullo", "Agosto", "Setembro", "Outubro", "Novembro", "Decembro"],
		monthsShort: ["Xan", "Feb", "Mar", "Abr", "Mai", "Xun", "Xul", "Ago", "Sep", "Out", "Nov", "Dec"],
		today: "Hoxe",
		clear: "Limpar",
		weekStart: 1,
		format: "dd/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerheJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.he.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerheJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerheJsContent [

	<ignoreForCoverage>
	^ '/**
 * Hebrew translation for bootstrap-datepicker
 * Sagie Maoz <sagie@maoz.info>
 */
;(function($){
  $.fn.datepicker.dates[''he''] = {
      days: ["ראשון", "שני", "שלישי", "רביעי", "חמישי", "שישי", "שבת", "ראשון"],
      daysShort: ["א", "ב", "ג", "ד", "ה", "ו", "ש", "א"],
      daysMin: ["א", "ב", "ג", "ד", "ה", "ו", "ש", "א"],
      months: ["ינואר", "פברואר", "מרץ", "אפריל", "מאי", "יוני", "יולי", "אוגוסט", "ספטמבר", "אוקטובר", "נובמבר", "דצמבר"],
      monthsShort: ["ינו", "פבר", "מרץ", "אפר", "מאי", "יונ", "יול", "אוג", "ספט", "אוק", "נוב", "דצמ"],
      today: "היום",
      rtl: true
  };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerhiJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.hi.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerhiJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerhiJsContent [

	<ignoreForCoverage>
	^ '/**
 * Hindi translation for bootstrap-datepicker
 * Visar Uruqi <visar.uruqi@gmail.com>
 */
; (function($){
	$.fn.datepicker.dates[''hi''] = {
		days: ["रविवार", "सोमवार", "मंगलवार", "बुधवार", "गुरुवार", "शुक्रवार", "शनिवार"],
		daysShort: ["सूर्य", "सोम", "मंगल", "बुध", "गुरु", "शुक्र", "शनि"],
		daysMin: ["र", "सो", "मं", "बु", "गु", "शु", "श"],
		months: ["जनवरी", "फ़रवरी", "मार्च", "अप्रैल", "मई", "जून", "जुलाई", "अगस्त", "सितम्बर", "अक्टूबर", "नवंबर", "दिसम्बर"],
		monthsShort: ["जन", "फ़रवरी", "मार्च", "अप्रैल", "मई", "जून", "जुलाई", "अगस्त", "सितं", "अक्टूबर", "नवं", "दिसम्बर"],
		today: "आज",
		monthsTitle: "महीने",
		clear: "साफ",
		weekStart: 1,
		format: "dd / mm / yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerhrJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.hr.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerhrJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerhrJsContent [

	<ignoreForCoverage>
	^ '/**
 * Croatian localisation
 */
;(function($){
	$.fn.datepicker.dates[''hr''] = {
		days: ["Nedjelja", "Ponedjeljak", "Utorak", "Srijeda", "Četvrtak", "Petak", "Subota"],
		daysShort: ["Ned", "Pon", "Uto", "Sri", "Čet", "Pet", "Sub"],
		daysMin: ["Ne", "Po", "Ut", "Sr", "Če", "Pe", "Su"],
		months: ["Siječanj", "Veljača", "Ožujak", "Travanj", "Svibanj", "Lipanj", "Srpanj", "Kolovoz", "Rujan", "Listopad", "Studeni", "Prosinac"],
		monthsShort: ["Sij", "Velj", "Ožu", "Tra", "Svi", "Lip", "Srp", "Kol", "Ruj", "Lis", "Stu", "Pro"],
		today: "Danas"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerhuJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.hu.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerhuJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerhuJsContent [

	<ignoreForCoverage>
	^ '/**
 * Hungarian translation for bootstrap-datepicker
 * Sotus László <lacisan@gmail.com>
 */
;(function($){
  $.fn.datepicker.dates[''hu''] = {
		days: ["vasárnap", "hétfő", "kedd", "szerda", "csütörtök", "péntek", "szombat"],
		daysShort: ["vas", "hét", "ked", "sze", "csü", "pén", "szo"],
		daysMin: ["V", "H", "K", "Sze", "Cs", "P", "Szo"],
		months: ["január", "február", "március", "április", "május", "június", "július", "augusztus", "szeptember", "október", "november", "december"],
		monthsShort: ["jan", "feb", "már", "ápr", "máj", "jún", "júl", "aug", "sze", "okt", "nov", "dec"],
		today: "ma",
		weekStart: 1,
		clear: "töröl",
		titleFormat: "yyyy. MM",
		format: "yyyy.mm.dd"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerhyJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.hy.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerhyJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerhyJsContent [

	<ignoreForCoverage>
	^ '/**
 * Armenian translation for bootstrap-datepicker
 * Hayk Chamyan <hamshen@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''hy''] = {
		days: ["Կիրակի", "Երկուշաբթի", "Երեքշաբթի", "Չորեքշաբթի", "Հինգշաբթի", "Ուրբաթ", "Շաբաթ"],
		daysShort: ["Կիր", "Երկ", "Երե", "Չոր", "Հին", "Ուրբ", "Շաբ"],
		daysMin: ["Կի", "Եկ", "Եք", "Չո", "Հի", "Ու", "Շա"],
		months: ["Հունվար", "Փետրվար", "Մարտ", "Ապրիլ", "Մայիս", "Հունիս", "Հուլիս", "Օգոստոս", "Սեպտեմբեր", "Հոկտեմբեր", "Նոյեմբեր", "Դեկտեմբեր"],
		monthsShort: ["Հնվ", "Փետ", "Մար", "Ապր", "Մայ", "Հուն", "Հուլ", "Օգս", "Սեպ", "Հոկ", "Նոյ", "Դեկ"],
		today: "Այսօր",
		clear: "Ջնջել",
		format: "dd.mm.yyyy",
		weekStart: 1,
    monthsTitle: ''Ամիսնէր''
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickeridJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.id.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickeridJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickeridJsContent [

	<ignoreForCoverage>
	^ '/**
 * Bahasa translation for bootstrap-datepicker
 * Azwar Akbar <azwar.akbar@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''id''] = {
		days: ["Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu"],
		daysShort: ["Mgu", "Sen", "Sel", "Rab", "Kam", "Jum", "Sab"],
		daysMin: ["Mg", "Sn", "Sl", "Ra", "Ka", "Ju", "Sa"],
		months: ["Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "Mei", "Jun", "Jul", "Ags", "Sep", "Okt", "Nov", "Des"],
		today: "Hari Ini",
		clear: "Kosongkan"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerisJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.is.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerisJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerisJsContent [

	<ignoreForCoverage>
	^ '/**
 * Icelandic translation for bootstrap-datepicker
 * Hinrik Örn Sigurðsson <hinrik.sig@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''is''] = {
		days: ["Sunnudagur", "Mánudagur", "Þriðjudagur", "Miðvikudagur", "Fimmtudagur", "Föstudagur", "Laugardagur"],
		daysShort: ["Sun", "Mán", "Þri", "Mið", "Fim", "Fös", "Lau"],
		daysMin: ["Su", "Má", "Þr", "Mi", "Fi", "Fö", "La"],
		months: ["Janúar", "Febrúar", "Mars", "Apríl", "Maí", "Júní", "Júlí", "Ágúst", "September", "Október", "Nóvember", "Desember"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "Maí", "Jún", "Júl", "Ágú", "Sep", "Okt", "Nóv", "Des"],
		today: "Í Dag"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickeritCHJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.it-CH.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickeritCHJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickeritCHJsContent [

	<ignoreForCoverage>
	^ '/**
 * Italian (Switzerland) translation for bootstrap-datepicker
 * Christoph Jossi <c.jossi@ascami.ch>
 * Based on 
 * Italian translation for bootstrap-datepicker
 * Enrico Rubboli <rubboli@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''it''] = {
		days: ["Domenica", "Lunedì", "Martedì", "Mercoledì", "Giovedì", "Venerdì", "Sabato"],
		daysShort: ["Dom", "Lun", "Mar", "Mer", "Gio", "Ven", "Sab"],
		daysMin: ["Do", "Lu", "Ma", "Me", "Gi", "Ve", "Sa"],
		months: ["Gennaio", "Febbraio", "Marzo", "Aprile", "Maggio", "Giugno", "Luglio", "Agosto", "Settembre", "Ottobre", "Novembre", "Dicembre"],
		monthsShort: ["Gen", "Feb", "Mar", "Apr", "Mag", "Giu", "Lug", "Ago", "Set", "Ott", "Nov", "Dic"],
		today: "Oggi",
		clear: "Cancella",
		weekStart: 1,
		format: "dd.mm.yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickeritJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.it.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickeritJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickeritJsContent [

	<ignoreForCoverage>
	^ '/**
 * Italian translation for bootstrap-datepicker
 * Enrico Rubboli <rubboli@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''it''] = {
		days: ["Domenica", "Lunedì", "Martedì", "Mercoledì", "Giovedì", "Venerdì", "Sabato"],
		daysShort: ["Dom", "Lun", "Mar", "Mer", "Gio", "Ven", "Sab"],
		daysMin: ["Do", "Lu", "Ma", "Me", "Gi", "Ve", "Sa"],
		months: ["Gennaio", "Febbraio", "Marzo", "Aprile", "Maggio", "Giugno", "Luglio", "Agosto", "Settembre", "Ottobre", "Novembre", "Dicembre"],
		monthsShort: ["Gen", "Feb", "Mar", "Apr", "Mag", "Giu", "Lug", "Ago", "Set", "Ott", "Nov", "Dic"],
		today: "Oggi",
		monthsTitle: "Mesi",
		clear: "Cancella",
		weekStart: 1,
		format: "dd/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerjaJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.ja.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerjaJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerjaJsContent [

	<ignoreForCoverage>
	^ '/**
 * Japanese translation for bootstrap-datepicker
 * Norio Suzuki <https://github.com/suzuki/>
 */
;(function($){
	$.fn.datepicker.dates[''ja''] = {
		days: ["日曜", "月曜", "火曜", "水曜", "木曜", "金曜", "土曜"],
		daysShort: ["日", "月", "火", "水", "木", "金", "土"],
		daysMin: ["日", "月", "火", "水", "木", "金", "土"],
		months: ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"],
		monthsShort: ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"],
		today: "今日",
		format: "yyyy/mm/dd",
		titleFormat: "yyyy年mm月",
		clear: "クリア"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerkaJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.ka.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerkaJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerkaJsContent [

	<ignoreForCoverage>
	^ '/**
 * Georgian translation for bootstrap-datepicker
 * Levan Melikishvili <levani0101@yahoo.com>
 */
;(function($){
    $.fn.datepicker.dates[''ka''] = {
        days: ["კვირა", "ორშაბათი", "სამშაბათი", "ოთხშაბათი", "ხუთშაბათი", "პარასკევი", "შაბათი"],
        daysShort: ["კვი", "ორშ", "სამ", "ოთხ", "ხუთ", "პარ", "შაბ"],
        daysMin: ["კვ", "ორ", "სა", "ოთ", "ხუ", "პა", "შა"],
        months: ["იანვარი", "თებერვალი", "მარტი", "აპრილი", "მაისი", "ივნისი", "ივლისი", "აგვისტო", "სექტემბერი", "ოქტომბერი", "ნოემბერი", "დეკემბერი"],
        monthsShort: ["იან", "თებ", "მარ", "აპრ", "მაი", "ივნ", "ივლ", "აგვ", "სექ", "ოქტ", "ნოე", "დეკ"],
        today: "დღეს",
        clear: "გასუფთავება",
        weekStart: 1,
        format: "dd.mm.yyyy"
    };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerkhJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.kh.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerkhJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerkhJsContent [

	<ignoreForCoverage>
	^ '/**
 * Cambodia (Khmer) translation for bootstrap-datepicker
 * Lytay TOUCH <lytaytouch@gmail.com>
 *
 * DEPRECATED: This language code ''kh'' is deprecated and will be removed in 2.0.
 * Khmer support is now in a ''km'' translation file to follow the ISO language
 * code - http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
 */
;(function($){
	$.fn.datepicker.dates[''kh''] = {
		days: ["អាទិត្យ", "ចន្ទ", "អង្គារ", "ពុធ", "ព្រហស្បតិ៍", "សុក្រ", "សៅរ៍"],
		daysShort: ["អា.ទិ", "ចន្ទ", "អង្គារ", "ពុធ", "ព្រ.ហ", "សុក្រ", "សៅរ៍"],
		daysMin: ["អា.ទិ", "ចន្ទ", "អង្គារ", "ពុធ", "ព្រ.ហ", "សុក្រ", "សៅរ៍"],
		months: ["មករា", "កុម្ភះ", "មិនា", "មេសា", "ឧសភា", "មិថុនា", "កក្កដា", "សីហា", "កញ្ញា", "តុលា", "វិច្ឆិកា", "ធ្នូ"],
		monthsShort: ["មករា", "កុម្ភះ", "មិនា", "មេសា", "ឧសភា", "មិថុនា", "កក្កដា", "សីហា", "កញ្ញា", "តុលា", "វិច្ឆិកា", "ធ្នូ"],
		today: "ថ្ងៃនេះ",
		clear: "សំអាត"
	};

	$.fn.datepicker.deprecated(''The language code "kh" is deprecated and will be removed in 2.0. For Khmer support use "km" instead.'');
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerkkJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.kk.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerkkJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerkkJsContent [

	<ignoreForCoverage>
	^ '/**
 * Kazakh translation for bootstrap-datepicker
 * Yerzhan Tolekov <era.tolekov@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''kk''] = {
		days: ["Жексенбі", "Дүйсенбі", "Сейсенбі", "Сәрсенбі", "Бейсенбі", "Жұма", "Сенбі"],
		daysShort: ["Жек", "Дүй", "Сей", "Сәр", "Бей", "Жұм", "Сен"],
		daysMin: ["Жк", "Дс", "Сс", "Ср", "Бс", "Жм", "Сн"],
		months: ["Қаңтар", "Ақпан", "Наурыз", "Сәуір", "Мамыр", "Маусым", "Шілде", "Тамыз", "Қыркүйек", "Қазан", "Қараша", "Желтоқсан"],
		monthsShort: ["Қаң", "Ақп", "Нау", "Сәу", "Мам", "Мау", "Шіл", "Там", "Қыр", "Қаз", "Қар", "Жел"],
		today: "Бүгін",
		weekStart: 1
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerkmJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.km.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerkmJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerkmJsContent [

	<ignoreForCoverage>
	^ '/**
 * Khmer translation for bootstrap-datepicker
 * This is the Updated Version of: https://github.com/uxsolutions/bootstrap-datepicker/blob/71308d42cce9524284c50c6fac50422d1790ac0f/js/locales/bootstrap-datepicker.kh.js
 */
;(function($){
  $.fn.datepicker.dates[''km''] = {
    days: ["អាទិត្យ", "ចន្ទ", "អង្គារ", "ពុធ", "ព្រហស្បតិ៍", "សុក្រ", "សៅរ៍"],
    daysShort: ["អា.ទិ", "ចន្ទ", "អង្គារ", "ពុធ", "ព្រ.ហ", "សុក្រ", "សៅរ៍"],
    daysMin: ["អា.ទិ", "ចន្ទ", "អង្គារ", "ពុធ", "ព្រ.ហ", "សុក្រ", "សៅរ៍"],
    months: ["មករា", "កុម្ភះ", "មិនា", "មេសា", "ឧសភា", "មិថុនា", "កក្កដា", "សីហា", "កញ្ញា", "តុលា", "វិច្ឆិកា", "ធ្នូ"],
    monthsShort: ["មករា", "កុម្ភះ", "មិនា", "មេសា", "ឧសភា", "មិថុនា", "កក្កដា", "សីហា", "កញ្ញា", "តុលា", "វិច្ឆិកា", "ធ្នូ"],
    today: "ថ្ងៃនេះ",
    clear: "សំអាត"
  };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerkoJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.ko.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerkoJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerkoJsContent [

	<ignoreForCoverage>
	^ '/**
 * Korean translation for bootstrap-datepicker
 * This is a port from https://github.com/moment/moment/blob/develop/src/locale/ko.js
 */
;(function($){
	$.fn.datepicker.dates[''ko''] = {
		days: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"],
		daysShort: ["일", "월", "화", "수", "목", "금", "토"],
		daysMin: ["일", "월", "화", "수", "목", "금", "토"],
		months: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
		monthsShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
		today: "오늘",
		clear: "삭제",
		format: "yyyy-mm-dd",
		titleFormat: "yyyy년mm월",
		weekStart: 0
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerkrJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.kr.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerkrJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerkrJsContent [

	<ignoreForCoverage>
	^ '/**
 * Korean translation for bootstrap-datepicker
 * Gu Youn <http://github.com/guyoun>
 *
 * DEPRECATED: This language code ''kr'' is deprecated and will be removed in 2.0.
 * Korean support is now in a ''ko'' translation file to follow the ISO language
 * code - http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
 */
;(function($){
	$.fn.datepicker.dates[''kr''] = {
		days: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"],
		daysShort: ["일", "월", "화", "수", "목", "금", "토"],
		daysMin: ["일", "월", "화", "수", "목", "금", "토"],
		months: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
		monthsShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
	};

	$.fn.datepicker.deprecated(''The language code "kr" is deprecated and will be removed in 2.0. For korean support use "ko" instead.'');
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerltJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.lt.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerltJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerltJsContent [

	<ignoreForCoverage>
	^ '/**
 * Lithuanian translation for bootstrap-datepicker
 * Šarūnas Gliebus <ssharunas@yahoo.co.uk>
 */

;(function($){
    $.fn.datepicker.dates[''lt''] = {
        days: ["Sekmadienis", "Pirmadienis", "Antradienis", "Trečiadienis", "Ketvirtadienis", "Penktadienis", "Šeštadienis"],
        daysShort: ["S", "Pr", "A", "T", "K", "Pn", "Š"],
        daysMin: ["Sk", "Pr", "An", "Tr", "Ke", "Pn", "Št"],
        months: ["Sausis", "Vasaris", "Kovas", "Balandis", "Gegužė", "Birželis", "Liepa", "Rugpjūtis", "Rugsėjis", "Spalis", "Lapkritis", "Gruodis"],
        monthsShort: ["Sau", "Vas", "Kov", "Bal", "Geg", "Bir", "Lie", "Rugp", "Rugs", "Spa", "Lap", "Gru"],
        today: "Šiandien",
        monthsTitle:"Mėnesiai",
        clear:"Išvalyti",
        weekStart: 1,
        format:"yyyy-mm-dd"
    };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerlvJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.lv.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerlvJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerlvJsContent [

	<ignoreForCoverage>
	^ '/**
 * Latvian translation for bootstrap-datepicker
 * Artis Avotins <artis@apit.lv>
 */

;(function($){
    $.fn.datepicker.dates[''lv''] = {
        days: ["Svētdiena", "Pirmdiena", "Otrdiena", "Trešdiena", "Ceturtdiena", "Piektdiena", "Sestdiena"],
        daysShort: ["Sv", "P", "O", "T", "C", "Pk", "S"],
        daysMin: ["Sv", "Pr", "Ot", "Tr", "Ce", "Pk", "Se"],
        months: ["Janvāris", "Februāris", "Marts", "Aprīlis", "Maijs", "Jūnijs", "Jūlijs", "Augusts", "Septembris", "Oktobris", "Novembris", "Decembris"],
        monthsShort: ["Jan", "Feb", "Mar", "Apr", "Mai", "Jūn", "Jūl", "Aug", "Sep", "Okt", "Nov", "Dec"],
        today: "Šodien",
        clear: "Nodzēst",
        weekStart: 1
    };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickermeJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.me.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickermeJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickermeJsContent [

	<ignoreForCoverage>
	^ '/**
 * Montenegrin translation for bootstrap-datepicker
 * Miodrag Nikač <miodrag@restartit.me>
 */
;(function($){
	$.fn.datepicker.dates[''me''] = {
		days: ["Nedjelja","Ponedjeljak", "Utorak", "Srijeda", "Četvrtak", "Petak", "Subota"],
		daysShort: ["Ned", "Pon", "Uto", "Sri", "Čet", "Pet", "Sub"],
		daysMin: ["Ne", "Po", "Ut", "Sr", "Če", "Pe", "Su"],
		months: ["Januar", "Februar", "Mart", "April", "Maj", "Jun", "Jul", "Avgust", "Septembar", "Oktobar", "Novembar", "Decembar"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "Maj", "Jun", "Jul", "Avg", "Sep", "Okt", "Nov", "Dec"],
		today: "Danas",
		weekStart: 1,
		clear: "Izbriši",
		format: "dd.mm.yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickermkJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.mk.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickermkJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickermkJsContent [

	<ignoreForCoverage>
	^ '/**
 * Macedonian translation for bootstrap-datepicker
 * Marko Aleksic <psybaron@gmail.com>
 */
;(function($){
    $.fn.datepicker.dates[''mk''] = {
        days: ["Недела", "Понеделник", "Вторник", "Среда", "Четврток", "Петок", "Сабота"],
        daysShort: ["Нед", "Пон", "Вто", "Сре", "Чет", "Пет", "Саб"],
        daysMin: ["Не", "По", "Вт", "Ср", "Че", "Пе", "Са"],
        months: ["Јануари", "Февруари", "Март", "Април", "Мај", "Јуни", "Јули", "Август", "Септември", "Октомври", "Ноември", "Декември"],
        monthsShort: ["Јан", "Фев", "Мар", "Апр", "Мај", "Јун", "Јул", "Авг", "Сеп", "Окт", "Ное", "Дек"],
        today: "Денес",
        format: "dd.mm.yyyy"
    };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickermnJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.mn.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickermnJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickermnJsContent [

	<ignoreForCoverage>
	^ '/**
 * Mongolian translation for bootstrap-datepicker
 * Andrey Torsunov <andrey.torsunov@gmail.com>
 */
;(function($){
    $.fn.datepicker.dates[''mn''] = {
        days: ["Ням", "Даваа", "Мягмар", "Лхагва", "Пүрэв", "Баасан", "Бямба"],
        daysShort: ["Ням", "Дав", "Мяг", "Лха", "Пүр", "Баа", "Бям"],
        daysMin: ["Ня", "Да", "Мя", "Лх", "Пү", "Ба", "Бя"],
        months: ["Хулгана", "Үхэр", "Бар", "Туулай", "Луу", "Могой", "Морь", "Хонь", "Бич", "Тахиа", "Нохой", "Гахай"],
        monthsShort: ["Хул", "Үхэ", "Бар", "Туу", "Луу", "Мог", "Мор", "Хон", "Бич", "Тах", "Нох", "Гах"],
        today: "Өнөөдөр",
        clear: "Тодорхой",
        format: "yyyy.mm.dd",
        weekStart: 1
    };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickermsJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.ms.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickermsJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickermsJsContent [

	<ignoreForCoverage>
	^ '/**
 * Malay translation for bootstrap-datepicker
 * Ateman Faiz <noorulfaiz@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''ms''] = {
		days: ["Ahad", "Isnin", "Selasa", "Rabu", "Khamis", "Jumaat", "Sabtu"],
		daysShort: ["Aha", "Isn", "Sel", "Rab", "Kha", "Jum", "Sab"],
		daysMin: ["Ah", "Is", "Se", "Ra", "Kh", "Ju", "Sa"],
		months: ["Januari", "Februari", "Mac", "April", "Mei", "Jun", "Julai", "Ogos", "September", "Oktober", "November", "Disember"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "Mei", "Jun", "Jul", "Ogo", "Sep", "Okt", "Nov", "Dis"],
		today: "Hari Ini",
        clear: "Bersihkan"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickernbJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.nb.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickernbJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickernbJsContent [

	<ignoreForCoverage>
	^ '/**
 * Norwegian (bokmål) translation for bootstrap-datepicker
 * Fredrik Sundmyhr <http://github.com/fsundmyhr>
 */
;(function($){
	$.fn.datepicker.dates[''nb''] = {
		days: ["Søndag", "Mandag", "Tirsdag", "Onsdag", "Torsdag", "Fredag", "Lørdag"],
		daysShort: ["Søn", "Man", "Tir", "Ons", "Tor", "Fre", "Lør"],
		daysMin: ["Sø", "Ma", "Ti", "On", "To", "Fr", "Lø"],
		months: ["Januar", "Februar", "Mars", "April", "Mai", "Juni", "Juli", "August", "September", "Oktober", "November", "Desember"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "Mai", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Des"],
		today: "I Dag",
		format: "dd.mm.yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickernlBEJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.nl-BE.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickernlBEJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickernlBEJsContent [

	<ignoreForCoverage>
	^ '/**
 * Belgium-Dutch translation for bootstrap-datepicker
 * Julien Poulin <poulin_julien@hotmail.com>
 */
;(function($){
  $.fn.datepicker.dates[''nl-BE''] = {
    days: ["zondag", "maandag", "dinsdag", "woensdag", "donderdag", "vrijdag", "zaterdag"],
    daysShort: ["zo", "ma", "di", "wo", "do", "vr", "za"],
    daysMin: ["zo", "ma", "di", "wo", "do", "vr", "za"],
    months: ["januari", "februari", "maart", "april", "mei", "juni", "juli", "augustus", "september", "oktober", "november", "december"],
    monthsShort: ["jan", "feb", "mrt", "apr", "mei", "jun", "jul", "aug", "sep", "okt", "nov", "dec"],
    today: "Vandaag",
    monthsTitle: "Maanden",
    clear: "Leegmaken",
    weekStart: 1,
    format: "dd/mm/yyyy"
  };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickernlJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.nl.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickernlJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickernlJsContent [

	<ignoreForCoverage>
	^ '/**
 * Dutch translation for bootstrap-datepicker
 * Reinier Goltstein <mrgoltstein@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''nl''] = {
		days: ["zondag", "maandag", "dinsdag", "woensdag", "donderdag", "vrijdag", "zaterdag"],
		daysShort: ["zo", "ma", "di", "wo", "do", "vr", "za"],
		daysMin: ["zo", "ma", "di", "wo", "do", "vr", "za"],
		months: ["januari", "februari", "maart", "april", "mei", "juni", "juli", "augustus", "september", "oktober", "november", "december"],
		monthsShort: ["jan", "feb", "mrt", "apr", "mei", "jun", "jul", "aug", "sep", "okt", "nov", "dec"],
		today: "Vandaag",
		monthsTitle: "Maanden",
		clear: "Wissen",
		weekStart: 1,
		format: "dd-mm-yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickernoJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.no.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickernoJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickernoJsContent [

	<ignoreForCoverage>
	^ '/**
 *  Norwegian translation for bootstrap-datepicker
 **/
;(function($){
  $.fn.datepicker.dates[''no''] = {
    days: [''Søndag'', ''Mandag'', ''Tirsdag'', ''Onsdag'', ''Torsdag'', ''Fredag'', ''Lørdag''],
    daysShort: [''Søn'', ''Man'', ''Tir'', ''Ons'', ''Tor'', ''Fre'', ''Lør''],
    daysMin: [''Sø'', ''Ma'', ''Ti'', ''On'', ''To'', ''Fr'', ''Lø''],
    months: [''Januar'', ''Februar'', ''Mars'', ''April'', ''Mai'', ''Juni'', ''Juli'', ''August'', ''September'', ''Oktober'', ''November'', ''Desember''],
    monthsShort: [''Jan'', ''Feb'', ''Mar'', ''Apr'', ''Mai'', ''Jun'', ''Jul'', ''Aug'', ''Sep'', ''Okt'', ''Nov'', ''Des''],
    today: ''I dag'',
    clear: ''Nullstill'',
    weekStart: 1,
    format: ''dd.mm.yyyy''
  };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerocJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.oc.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerocJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerocJsContent [

	<ignoreForCoverage>
	^ '/**
 * Occitan translation for bootstrap-datepicker
 */
;(function($){
	$.fn.datepicker.dates[''oc''] = {
		days: ["Dimenge", "Diluns", "Dimars", "Dimècres", "Dijòus", "Divendres", "Dissabte"],
		daysShort: ["Dim",  "Dil", "Dmr", "Dmc", "Dij", "Div", "Dis"],
		daysMin: ["dg", "dl", "dr", "dc", "dj", "dv", "ds"],
		months: ["Genièr", "Febrièr", "Març", "Abrial", "Mai", "Junh", "Julhet", "Agost", "Setembre", "Octobre", "Novembre", "Decembre"],
		monthsShort: ["Gen", "Feb", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Oct", "Nov", "Dec"],
		today: "Uèi",
		monthsTitle: "Meses",
		clear: "Escafar",
		weekStart: 1,
		format: "dd/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerplJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.pl.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerplJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerplJsContent [

	<ignoreForCoverage>
	^ '/**
 * Polish translation for bootstrap-datepicker
 * Robert <rtpm@gazeta.pl>
 */
;(function($){
    $.fn.datepicker.dates[''pl''] = {
        days: ["Niedziela", "Poniedziałek", "Wtorek", "Środa", "Czwartek", "Piątek", "Sobota"],
        daysShort: ["Niedz.", "Pon.", "Wt.", "Śr.", "Czw.", "Piąt.", "Sob."],
        daysMin: ["Ndz.", "Pn.", "Wt.", "Śr.", "Czw.", "Pt.", "Sob."],
        months: ["Styczeń", "Luty", "Marzec", "Kwiecień", "Maj", "Czerwiec", "Lipiec", "Sierpień", "Wrzesień", "Październik", "Listopad", "Grudzień"],
        monthsShort: ["Sty.", "Lut.", "Mar.", "Kwi.", "Maj", "Cze.", "Lip.", "Sie.", "Wrz.", "Paź.", "Lis.", "Gru."],
        today: "Dzisiaj",
        weekStart: 1,
        clear: "Wyczyść",
        format: "dd.mm.yyyy"
    };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerptBRJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.pt-BR.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerptBRJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerptBRJsContent [

	<ignoreForCoverage>
	^ '/**
 * Brazilian translation for bootstrap-datepicker
 * Cauan Cabral <cauan@radig.com.br>
 */
;(function($){
	$.fn.datepicker.dates[''pt-BR''] = {
		days: ["Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado"],
		daysShort: ["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sáb"],
		daysMin: ["Do", "Se", "Te", "Qu", "Qu", "Se", "Sa"],
		months: ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"],
		monthsShort: ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dez"],
		today: "Hoje",
		monthsTitle: "Meses",
		clear: "Limpar",
		format: "dd/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerptJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.pt.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerptJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerptJsContent [

	<ignoreForCoverage>
	^ '/**
 * Portuguese translation for bootstrap-datepicker
 * Original code: Cauan Cabral <cauan@radig.com.br>
 * Tiago Melo <tiago.blackcode@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''pt''] = {
		days: ["Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado"],
		daysShort: ["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sáb"],
		daysMin: ["Do", "Se", "Te", "Qu", "Qu", "Se", "Sa"],
		months: ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"],
		monthsShort: ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dez"],
		today: "Hoje",
		monthsTitle: "Meses",
		clear: "Limpar",
		format: "dd/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerroJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.ro.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerroJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerroJsContent [

	<ignoreForCoverage>
	^ '/**
 * Romanian translation for bootstrap-datepicker
 * Cristian Vasile <cristi.mie@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''ro''] = {
		days: ["Duminică", "Luni", "Marţi", "Miercuri", "Joi", "Vineri", "Sâmbătă"],
		daysShort: ["Dum", "Lun", "Mar", "Mie", "Joi", "Vin", "Sâm"],
		daysMin: ["Du", "Lu", "Ma", "Mi", "Jo", "Vi", "Sâ"],
		months: ["Ianuarie", "Februarie", "Martie", "Aprilie", "Mai", "Iunie", "Iulie", "August", "Septembrie", "Octombrie", "Noiembrie", "Decembrie"],
		monthsShort: ["Ian", "Feb", "Mar", "Apr", "Mai", "Iun", "Iul", "Aug", "Sep", "Oct", "Nov", "Dec"],
		today: "Astăzi",
		clear: "Șterge",
		weekStart: 1,
		format: "dd/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerrsJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.rs.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerrsJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerrsJsContent [

	<ignoreForCoverage>
	^ '/**
 * Serbian cyrillic translation for bootstrap-datepicker
 * Bojan Milosavlević <milboj@gmail.com>
 *
 * DEPRECATED: This language code ''rs'' is deprecated (invalid serbian language code) and will be removed in 2.0.
 */
;(function($){
	$.fn.datepicker.dates[''rs''] = {
		days: ["Недеља","Понедељак", "Уторак", "Среда", "Четвртак", "Петак", "Субота"],
		daysShort: ["Нед", "Пон", "Уто", "Сре", "Чет", "Пет", "Суб"],
		daysMin: ["Н", "По", "У", "Ср", "Ч", "Пе", "Су"],
		months: ["Јануар", "Фебруар", "Март", "Април", "Мај", "Јун", "Јул", "Август", "Септембар", "Октобар", "Новембар", "Децембар"],
		monthsShort: ["Јан", "Феб", "Мар", "Апр", "Мај", "Јун", "Јул", "Авг", "Сеп", "Окт", "Нов", "Дец"],
		today: "Данас",
		weekStart: 1,
		format: "dd.mm.yyyy"
	};

	$.fn.datepicker.deprecated(''This language code "rs" is deprecated (invalid serbian language code) and will be removed in 2.0. For Serbian support use "sr" instead.'');
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerrslatinJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.rs-latin.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerrslatinJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerrslatinJsContent [

	<ignoreForCoverage>
	^ '/**
 * Serbian latin translation for bootstrap-datepicker
 * Bojan Milosavlević <milboj@gmail.com>
 *
 * DEPRECATED: This language code ''rs-latin'' is deprecated (invalid serbian language code) and will be removed in 2.0.
 */
;(function($){
	$.fn.datepicker.dates[''rs-latin''] = {
		days: ["Nedelja","Ponedeljak", "Utorak", "Sreda", "Četvrtak", "Petak", "Subota"],
		daysShort: ["Ned", "Pon", "Uto", "Sre", "Čet", "Pet", "Sub"],
		daysMin: ["N", "Po", "U", "Sr", "Č", "Pe", "Su"],
		months: ["Januar", "Februar", "Mart", "April", "Maj", "Jun", "Jul", "Avgust", "Septembar", "Oktobar", "Novembar", "Decembar"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "Maj", "Jun", "Jul", "Avg", "Sep", "Okt", "Nov", "Dec"],
		today: "Danas",
		weekStart: 1,
		format: "dd.mm.yyyy"
	};

	$.fn.datepicker.deprecated(''This language code "rs-latin" is deprecated (invalid serbian language code) and will be removed in 2.0. For Serbian latin support use "sr-latin" instead.'');
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerruJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.ru.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerruJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerruJsContent [

	<ignoreForCoverage>
	^ '/**
 * Russian translation for bootstrap-datepicker
 * Victor Taranenko <darwin@snowdale.com>
 */
;(function($){
	$.fn.datepicker.dates[''ru''] = {
		days: ["Воскресенье", "Понедельник", "Вторник", "Среда", "Четверг", "Пятница", "Суббота"],
		daysShort: ["Вск", "Пнд", "Втр", "Срд", "Чтв", "Птн", "Суб"],
		daysMin: ["Вс", "Пн", "Вт", "Ср", "Чт", "Пт", "Сб"],
		months: ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"],
		monthsShort: ["Янв", "Фев", "Мар", "Апр", "Май", "Июн", "Июл", "Авг", "Сен", "Окт", "Ноя", "Дек"],
		today: "Сегодня",
		clear: "Очистить",
		format: "dd.mm.yyyy",
		weekStart: 1,
    monthsTitle: ''Месяцы''
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickersiJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.si.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickersiJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickersiJsContent [

	<ignoreForCoverage>
	^ '/**
 * Sinhala translation for bootstrap-datepicker
 * Chanaka Fernando <chanaka.fernando@hotmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''si''] = {
		days: ["ඉරිදා", "සඳුදා", "අඟහරුවාදා", "බදාදා", "බ්‍රහස්පතින්දා", "සිකුරාදා", "සෙනසුරාදා"],
		daysShort: ["ඉරි", "සඳු", "අඟ", "බදා", "බ්‍රහ", "සිකු", "සෙන"],
		daysMin: ["ඉ", "ස", "අ", "බ", "බ්‍ර", "සි", "සෙ"],
		months: ["ජනවාරි", "පෙබරවාරි", "මාර්තු", "අප්‍රේල්", "මැයි", "ජුනි", "ජූලි", "අගෝස්තු", "සැප්තැම්බර්", "ඔක්තෝබර්", "නොවැම්බර්", "දෙසැම්බර්"],
		monthsShort: ["ජන", "පෙබ", "මාර්", "අප්‍රේ", "මැයි", "ජුනි", "ජූලි", "අගෝ", "සැප්", "ඔක්", "නොවැ", "දෙසැ"],
		today: "අද",
		monthsTitle: "මාස",
		clear: "මකන්න",
		weekStart: 0,
		format: "yyyy-mm-dd"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerskJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.sk.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerskJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerskJsContent [

	<ignoreForCoverage>
	^ '/**
 * Slovak translation for bootstrap-datepicker
 * Marek Lichtner <marek@licht.sk>
 * Fixes by Michal Remiš <michal.remis@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates["sk"] = {
		days: ["Nedeľa", "Pondelok", "Utorok", "Streda", "Štvrtok", "Piatok", "Sobota"],
		daysShort: ["Ned", "Pon", "Uto", "Str", "Štv", "Pia", "Sob"],
		daysMin: ["Ne", "Po", "Ut", "St", "Št", "Pia", "So"],
		months: ["Január", "Február", "Marec", "Apríl", "Máj", "Jún", "Júl", "August", "September", "Október", "November", "December"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "Máj", "Jún", "Júl", "Aug", "Sep", "Okt", "Nov", "Dec"],
		today: "Dnes",
		clear: "Vymazať",
		weekStart: 1,
		format: "d.m.yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerslJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.sl.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerslJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerslJsContent [

	<ignoreForCoverage>
	^ '/**
 * Slovene translation for bootstrap-datepicker
 * Gregor Rudolf <gregor.rudolf@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''sl''] = {
		days: ["Nedelja", "Ponedeljek", "Torek", "Sreda", "Četrtek", "Petek", "Sobota"],
		daysShort: ["Ned", "Pon", "Tor", "Sre", "Čet", "Pet", "Sob"],
		daysMin: ["Ne", "Po", "To", "Sr", "Če", "Pe", "So"],
		months: ["Januar", "Februar", "Marec", "April", "Maj", "Junij", "Julij", "Avgust", "September", "Oktober", "November", "December"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "Maj", "Jun", "Jul", "Avg", "Sep", "Okt", "Nov", "Dec"],
		today: "Danes",
		weekStart: 1
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickersqJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.sq.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickersqJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickersqJsContent [

	<ignoreForCoverage>
	^ '/**
 * Albanian translation for bootstrap-datepicker
 * Tomor Pupovci <http://www.github.com/ttomor>
 */
;(function($){
	$.fn.datepicker.dates[''sq''] = {
		days: ["E Diel", "E Hënë", "E Martē", "E Mërkurë", "E Enjte", "E Premte", "E Shtunë"],
		daysShort: ["Die", "Hën", "Mar", "Mër", "Enj", "Pre", "Shtu"],
		daysMin: ["Di", "Hë", "Ma", "Më", "En", "Pr", "Sht"],
		months: ["Janar", "Shkurt", "Mars", "Prill", "Maj", "Qershor", "Korrik", "Gusht", "Shtator", "Tetor", "Nëntor", "Dhjetor"],
		monthsShort: ["Jan", "Shk", "Mar", "Pri", "Maj", "Qer", "Korr", "Gu", "Sht", "Tet", "Nën", "Dhjet"],
		today: "Sot"
	};
}(jQuery));

'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickersrJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.sr.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickersrJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickersrJsContent [

	<ignoreForCoverage>
	^ '/**
 * Serbian cyrillic translation for bootstrap-datepicker
 * Bojan Milosavlević <milboj@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''sr''] = {
		days: ["Недеља","Понедељак", "Уторак", "Среда", "Четвртак", "Петак", "Субота"],
		daysShort: ["Нед", "Пон", "Уто", "Сре", "Чет", "Пет", "Суб"],
		daysMin: ["Н", "По", "У", "Ср", "Ч", "Пе", "Су"],
		months: ["Јануар", "Фебруар", "Март", "Април", "Мај", "Јун", "Јул", "Август", "Септембар", "Октобар", "Новембар", "Децембар"],
		monthsShort: ["Јан", "Феб", "Мар", "Апр", "Мај", "Јун", "Јул", "Авг", "Сеп", "Окт", "Нов", "Дец"],
		today: "Данас",
		weekStart: 1,
		format: "dd.mm.yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickersrlatinJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.sr-latin.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickersrlatinJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickersrlatinJsContent [

	<ignoreForCoverage>
	^ '/**
 * Serbian latin translation for bootstrap-datepicker
 * Bojan Milosavlević <milboj@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''sr-latin''] = {
		days: ["Nedelja","Ponedeljak", "Utorak", "Sreda", "Četvrtak", "Petak", "Subota"],
		daysShort: ["Ned", "Pon", "Uto", "Sre", "Čet", "Pet", "Sub"],
		daysMin: ["N", "Po", "U", "Sr", "Č", "Pe", "Su"],
		months: ["Januar", "Februar", "Mart", "April", "Maj", "Jun", "Jul", "Avgust", "Septembar", "Oktobar", "Novembar", "Decembar"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "Maj", "Jun", "Jul", "Avg", "Sep", "Okt", "Nov", "Dec"],
		today: "Danas",
		weekStart: 1,
		format: "dd.mm.yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickersvJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.sv.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickersvJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickersvJsContent [

	<ignoreForCoverage>
	^ '/**
 * Swedish translation for bootstrap-datepicker
 * Patrik Ragnarsson <patrik@starkast.net>
 */
;(function($){
	$.fn.datepicker.dates[''sv''] = {
		days: ["Söndag", "Måndag", "Tisdag", "Onsdag", "Torsdag", "Fredag", "Lördag"],
		daysShort: ["Sön", "Mån", "Tis", "Ons", "Tor", "Fre", "Lör"],
		daysMin: ["Sö", "Må", "Ti", "On", "To", "Fr", "Lö"],
		months: ["Januari", "Februari", "Mars", "April", "Maj", "Juni", "Juli", "Augusti", "September", "Oktober", "November", "December"],
		monthsShort: ["Jan", "Feb", "Mar", "Apr", "Maj", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Dec"],
		today: "Idag",
		format: "yyyy-mm-dd",
		weekStart: 1,
		clear: "Rensa"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerswJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.sw.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerswJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerswJsContent [

	<ignoreForCoverage>
	^ '/**
 * Swahili translation for bootstrap-datepicker
 * Edwin Mugendi <https://github.com/edwinmugendi>
 * Source: http://scriptsource.org/cms/scripts/page.php?item_id=entry_detail&uid=xnfaqyzcku
 */
;(function($){
    $.fn.datepicker.dates[''sw''] = {
        days: ["Jumapili", "Jumatatu", "Jumanne", "Jumatano", "Alhamisi", "Ijumaa", "Jumamosi"],
        daysShort: ["J2", "J3", "J4", "J5", "Alh", "Ij", "J1"],
        daysMin: ["2", "3", "4", "5", "A", "I", "1"],
        months: ["Januari", "Februari", "Machi", "Aprili", "Mei", "Juni", "Julai", "Agosti", "Septemba", "Oktoba", "Novemba", "Desemba"],
        monthsShort: ["Jan", "Feb", "Mac", "Apr", "Mei", "Jun", "Jul", "Ago", "Sep", "Okt", "Nov", "Des"],
        today: "Leo"
    };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickertaJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.ta.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickertaJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickertaJsContent [

	<ignoreForCoverage>
	^ '/**
 * Tamil translation for bootstrap-datepicker
 * Abubacker Siddik A <abuabdul86@hotmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''ta''] = {
		days: ["ஞாயிறு", "திங்கள்", "செவ்வாய்", "புதன்", "வியாழன்", "வெள்ளி", "சனி"],
		daysShort: ["ஞாயி", "திங்", "செவ்", "புத", "வியா", "வெள்", "சனி"],
		daysMin: ["ஞா", "தி", "செ", "பு", "வி", "வெ", "ச"],
		months: ["ஜனவரி", "பிப்ரவரி", "மார்ச்", "ஏப்ரல்", "மே", "ஜூன்", "ஜூலை", "ஆகஸ்டு", "செப்டம்பர்", "அக்டோபர்", "நவம்பர்", "டிசம்பர்"],
		monthsShort: ["ஜன", "பிப்", "மார்", "ஏப்", "மே", "ஜூன்", "ஜூலை", "ஆக", "செப்", "அக்", "நவ", "டிச"],
		today: "இன்று",
		monthsTitle: "மாதங்கள்",
		clear: "நீக்கு",
		weekStart: 1,
		format: "dd/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickertgJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.tg.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickertgJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickertgJsContent [

	<ignoreForCoverage>
	^ '/**
 * Tajik (cyrillic) translation for bootstrap-datepicker
 * Bakhtiyor Bahritidinov <i@bakhtiyor.tj>
 * Orif N. Jr. <orif.zade@gmail.com>
 */
;(function($){
    $.fn.datepicker.dates[''tg''] = {
        days: ["Якшанбе", "Душанбе", "Сешанбе", "Чоршанбе", "Панҷшанбе", "Ҷумъа", "Шанбе"],
        daysShort: ["Яшб", "Дшб", "Сшб", "Чшб", "Пшб", "Ҷум", "Шнб"],
        daysMin: ["Яш", "Дш", "Сш", "Чш", "Пш", "Ҷм", "Шб"],
        months: ["Январ", "Феврал", "Март", "Апрел", "Май", "Июн", "Июл", "Август", "Сентябр", "Октябр", "Ноябр", "Декабр"],
        monthsShort: ["Янв", "Фев", "Мар", "Апр", "Май", "Июн", "Июл", "Авг", "Сен", "Окт", "Ноя", "Дек"],
        today: "Имрӯз",
        monthsTitle: "Моҳҳо",
        clear: "Тоза намудан",
        weekStart: 1,
        format: "dd.mm.yyyy"
    };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerthJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.th.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerthJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerthJsContent [

	<ignoreForCoverage>
	^ '/**
 * Thai translation for bootstrap-datepicker
 * Suchau Jiraprapot <seroz24@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''th''] = {
		days: ["อาทิตย์", "จันทร์", "อังคาร", "พุธ", "พฤหัส", "ศุกร์", "เสาร์", "อาทิตย์"],
		daysShort: ["อา", "จ", "อ", "พ", "พฤ", "ศ", "ส", "อา"],
		daysMin: ["อา", "จ", "อ", "พ", "พฤ", "ศ", "ส", "อา"],
		months: ["มกราคม", "กุมภาพันธ์", "มีนาคม", "เมษายน", "พฤษภาคม", "มิถุนายน", "กรกฎาคม", "สิงหาคม", "กันยายน", "ตุลาคม", "พฤศจิกายน", "ธันวาคม"],
		monthsShort: ["ม.ค.", "ก.พ.", "มี.ค.", "เม.ย.", "พ.ค.", "มิ.ย.", "ก.ค.", "ส.ค.", "ก.ย.", "ต.ค.", "พ.ย.", "ธ.ค."],
		today: "วันนี้"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickertrJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.tr.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickertrJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickertrJsContent [

	<ignoreForCoverage>
	^ '/**
 * Turkish translation for bootstrap-datepicker
 * Serkan Algur <kaisercrazy_2@hotmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''tr''] = {
		days: ["Pazar", "Pazartesi", "Salı", "Çarşamba", "Perşembe", "Cuma", "Cumartesi"],
		daysShort: ["Pz", "Pzt", "Sal", "Çrş", "Prş", "Cu", "Cts"],
		daysMin: ["Pz", "Pzt", "Sa", "Çr", "Pr", "Cu", "Ct"],
		months: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"],
		monthsShort: ["Oca", "Şub", "Mar", "Nis", "May", "Haz", "Tem", "Ağu", "Eyl", "Eki", "Kas", "Ara"],
		today: "Bugün",
		clear: "Temizle",
		weekStart: 1,
		format: "dd.mm.yyyy"
	};
}(jQuery));

'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerukJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.uk.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerukJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerukJsContent [

	<ignoreForCoverage>
	^ '/**
 * Ukrainian translation for bootstrap-datepicker
 * Igor Polynets
 */
;(function($){
	$.fn.datepicker.dates[''uk''] = {
		days: ["Неділя", "Понеділок", "Вівторок", "Середа", "Четвер", "П''ятниця", "Субота"],
		daysShort: ["Нед", "Пнд", "Втр", "Срд", "Чтв", "Птн", "Суб"],
		daysMin: ["Нд", "Пн", "Вт", "Ср", "Чт", "Пт", "Сб"],
		months: ["Cічень", "Лютий", "Березень", "Квітень", "Травень", "Червень", "Липень", "Серпень", "Вересень", "Жовтень", "Листопад", "Грудень"],
		monthsShort: ["Січ", "Лют", "Бер", "Кві", "Тра", "Чер", "Лип", "Сер", "Вер", "Жов", "Лис", "Гру"],
		today: "Сьогодні",
		clear: "Очистити",
		format: "dd.mm.yyyy",
		weekStart: 1
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickeruzcyrlJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.uz-cyrl.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickeruzcyrlJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickeruzcyrlJsContent [

	<ignoreForCoverage>
	^ '/**
 * Uzbek latin translation for bootstrap-datepicker
 * Kakhramonov Javlonbek <kakjavlon@gmail.com>
 */
;(function($){
    $.fn.datepicker.dates[''uz-cyrl''] = {
        days: ["Якшанба", "Душанба", "Сешанба", "Чоршанба", "Пайшанба", "Жума", "Шанба"],
        daysShort: ["Якш", "Ду", "Се", "Чор", "Пай", "Жу", "Ша"],
        daysMin: ["Як", "Ду", "Се", "Чо", "Па", "Жу", "Ша"],
        months: ["Январь","Февраль","Март","Апрель","Май","Июнь","Июль","Август","Сентябрь","Октябрь","Ноябрь","Декабрь"],
        monthsShort: ["Янв","Фев","Мар","Апр","Май","Июн","Июл","Авг","Сен","Окт","Ноя","Дек"],
        today: "Бугун",
        clear: "Ўчириш",
        format: "dd.mm.yyyy",
        weekStart: 1,
        monthsTitle: ''Ойлар''
    };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickeruzlatnJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.uz-latn.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickeruzlatnJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickeruzlatnJsContent [

	<ignoreForCoverage>
	^ '/**
 * Uzbek latin translation for bootstrap-datepicker
 * Kakhramonov Javlonbek <kakjavlon@gmail.com>
 */
;(function($){
    $.fn.datepicker.dates[''uz-latn''] = {
        days: ["Yakshanba", "Dushanba", "Seshanba", "Chorshanba", "Payshanba", "Juma", "Shanba"],
        daysShort: ["Yak", "Du", "Se", "Chor", "Pay", "Ju", "Sha"],
        daysMin: ["Ya", "Du", "Se", "Cho", "Pa", "Ju", "Sha"],
        months: ["Yanvar", "Fevral", "Mart", "Aprel", "May", "Iyun", "Iyul", "Avgust", "Sentabr", "Oktabr", "Noyabr", "Dekabr"],
        monthsShort: ["Yan", "Fev", "Mar", "Apr", "May", "Iyn", "Iyl", "Avg", "Sen", "Okt", "Noy", "Dek"],
        today: "Bugun",
        clear: "O''chirish",
        format: "dd.mm.yyyy",
        weekStart: 1,
        monthsTitle: ''Oylar''
    };
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerviJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.vi.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerviJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerviJsContent [

	<ignoreForCoverage>
	^ '/**
 * Vietnamese translation for bootstrap-datepicker
 * An Vo <https://github.com/anvoz/>
 */
;(function($){
	$.fn.datepicker.dates[''vi''] = {
		days: ["Chủ nhật", "Thứ hai", "Thứ ba", "Thứ tư", "Thứ năm", "Thứ sáu", "Thứ bảy"],
		daysShort: ["CN", "Thứ 2", "Thứ 3", "Thứ 4", "Thứ 5", "Thứ 6", "Thứ 7"],
		daysMin: ["CN", "T2", "T3", "T4", "T5", "T6", "T7"],
		months: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
		monthsShort: ["Th1", "Th2", "Th3", "Th4", "Th5", "Th6", "Th7", "Th8", "Th9", "Th10", "Th11", "Th12"],
		today: "Hôm nay",
		clear: "Xóa",
		format: "dd/mm/yyyy"
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerzhCNJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.zh-CN.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerzhCNJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerzhCNJsContent [

	<ignoreForCoverage>
	^ '/**
 * Simplified Chinese translation for bootstrap-datepicker
 * Yuan Cheung <advanimal@gmail.com>
 */
;(function($){
	$.fn.datepicker.dates[''zh-CN''] = {
		days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"],
		daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六"],
		daysMin:  ["日", "一", "二", "三", "四", "五", "六"],
		months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		monthsShort: ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"],
		today: "今日",
		clear: "清除",
		format: "yyyy年mm月dd日",
		titleFormat: "yyyy年mm月",
		weekStart: 1
	};
}(jQuery));
'
]

{ #category : #'uploaded metadata' }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerzhTWJs [

	<ignoreForCoverage>
	^ WAFileLibraryResource
		filepath: 'locales/bootstrap-datepicker.zh-TW.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #localesbootstrapdatepickerzhTWJsContent)
]

{ #category : #uploaded }
BootstrapDatepickerDevelopmentLibrary >> localesbootstrapdatepickerzhTWJsContent [

	<ignoreForCoverage>
	^ '/**
 * Traditional Chinese translation for bootstrap-datepicker
 * Rung-Sheng Jang <daniel@i-trend.co.cc>
 * FrankWu  <frankwu100@gmail.com> Fix more appropriate use of Traditional Chinese habit
 */
;(function($){
	$.fn.datepicker.dates[''zh-TW''] = {
		days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"],
		daysShort: ["週日", "週一", "週二", "週三", "週四", "週五", "週六"],
		daysMin:  ["日", "一", "二", "三", "四", "五", "六"],
		months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		monthsShort: ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"],
		today: "今天",
		format: "yyyy年mm月dd日",
		weekStart: 1,
		clear: "清除"
	};
}(jQuery));
'
]

{ #category : #accessing }
BootstrapDatepickerDevelopmentLibrary >> selectorsToInclude [

	| fileName |

	fileName := BootstrapDatepickerLanguageToFileNameTranslator new
		fileNameFrom: locale
		ifNone: [ ^ #(cssbootstrapdatepicker3Css jsbootstrapdatepickerJs) ].

	^ OrderedCollection new
		addAll: #(cssbootstrapdatepicker3Css jsbootstrapdatepickerJs);
		add: ('locales<1s>Js' expandMacrosWith: (fileName select: #isLetter)) asSymbol;
		asArray
]
