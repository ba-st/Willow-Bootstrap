private
replaceTooltipDestroyFunctionIn: script

	"This fixes a problem in Bootstrap v3.3.7 when calling destroy in a tooltip twice. Checkout https://github.com/twbs/bootstrap/issues/21830 "

	script << (JSStream this alias: '$.prototype.tooltip.Constructor.prototype.destroy')
		assign:
			(JSFunction new
				add:
					(JSStream
						on:
							'var that = this
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
	})');
				yourself)