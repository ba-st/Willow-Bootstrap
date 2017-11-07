tests-Accessing
testJavascriptContent

	self
		assert: WillowBootstrapFileMetadataLibrary default jswillowbootstrapJsContent
		equals:
			'/*<n>* willow-bootstrap.js v4.0.0<n>* Copyright 2017 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n>$.prototype.tooltip.Constructor.prototype.destroy=function(){var that = this
	clearTimeout(this.timeout)
	this.hide(function () {
	  null!=that.$element && that.$element.off("." + that.type).removeData("bs." + that.type)
	  if (that.$tip) {
		that.$tip.detach()
	  }
	  that.$tip = null
	  that.$arrow = null
	  that.$viewport = null
	  that.$element = null
	})};(function(){Willow.Bootstrap={"cleanModal":function(modal){modal.next("script").remove();modal.remove();if($("#willow-dialog-section").children().length==0){$(".modal-backdrop").remove()}}}}())'
				expandMacros