Options
assumeNearbyYear: aBooleanOrInteger

	"If true, manually-entered dates with two-digit years, such as “5/1/15”, will be parsed as “2015”, not “15”. If the year is less than 10 years in advance, the picker will use the current century, otherwise, it will use the previous one. For example “5/1/15” would parse to May 1st, 2015, but “5/1/97” would be May 1st, 1997.

To configure the number of years in advance that the picker will still use the current century, use an Integer instead of the Boolean true. E.g. “assumeNearbyYear: 20”"

	self optionAt: 'assumeNearbyYear' put: aBooleanOrInteger