Options
dropupAuto: aBoolean 

	"Checks to see which has more room, above or below. If the dropup has enough room to fully open normally, but there is more room above, 
	the dropup still opens normally. Otherwise, it becomes a dropup. If dropupAuto is set to false, dropups must be called manually."

	self optionAt: 'dropupAuto' put: aBoolean 