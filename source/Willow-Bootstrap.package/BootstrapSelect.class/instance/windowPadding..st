Options
windowPadding: integerOrArray

	"This is useful in cases where the window has areas that the dropdown menu should not cover - for instance a fixed header. 
	When set to an integer, the same padding will be added to all sides. 
	Alternatively, an array of integers can be used in the format [top, right, bottom, left]."

	self optionAt: 'windowPadding' put: integerOrArray 